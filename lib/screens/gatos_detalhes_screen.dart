import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nac_gatos/models/gato_model.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GatosDetalhesScreen extends StatelessWidget {
  GatoModel gato;

  @override
  Widget build(BuildContext context) {
    gato = ModalRoute.of(context).settings.arguments;

    final bottomTextStyle = const TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xffb6b2df),
        fontSize: 20.0,
        fontWeight: FontWeight.w600);

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('assets/gatos/${gato.id}.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.only(bottom: 20, left: 40),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .4)),
          child: new Align(
              alignment: FractionalOffset.bottomLeft,
              child: Text(
                gato.nome,
                style: TextStyle(
                    shadows: [
                      Shadow(
                        blurRadius: 8.0,
                        color: Color(0xffb6b2df),
                        offset: Offset(5.0, 3.0),
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 54.0,
                    fontWeight: FontWeight.w800),
              )),
        ),
        Positioned(
          left: 20.0,
          top: 32.0,
          child: Material(
            borderRadius: BorderRadius.circular(24),
            color: Color(0xff6173BD),
            child: InkWell(
              borderRadius: BorderRadius.circular(24),
              radius: 38,
              onTap: () {
                Navigator.pop(context);
              },
              splashColor: Color(0xff4F5B90),
              child: Container(
                width: 48,
                height: 48,
                child:
                    Icon(FontAwesome.angle_left, color: Colors.white, size: 40),
              ),
            ),
          ),
        )
      ],
    );

    final bottomContent = Container(
        decoration: BoxDecoration(color: Color(0xff6173BD)),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            Text(
              gato.info,
              style: bottomTextStyle,
              textAlign: TextAlign.justify,
            ),
            new Container(height: 32.0),
            new Row(
              children: <Widget>[
                new Icon(FontAwesome.globe, size: 32, color: Colors.white),
                new Container(width: 12.0),
                new Text('Origem: ${gato.origem}', style: bottomTextStyle),
              ],
            ),
            new Container(height: 22.0),
            new Row(
              children: <Widget>[
                new Icon(FontAwesome.hourglass_half,
                    size: 28, color: Colors.white),
                new Container(width: 12.0),
                new Text('Esperança de vida: ${gato.expcVida}',
                    style: bottomTextStyle),
              ],
            ),
            new Container(height: 22.0),
            new Row(
              children: <Widget>[
                new Icon(MaterialCommunityIcons.weight_kilogram,
                    size: 32, color: Colors.white),
                new Container(width: 12.0),
                new Text('Peso médio: ${gato.pesoMedio}',
                    style: bottomTextStyle),
              ],
            ),
            new Container(height: 42.0),
            new Text(
              'TAMANHO',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xffb6b2df),
                  fontSize: 32.0,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.center,
            ),
            new Row(
              children: <Widget>[
                new SvgPicture.asset('assets/svg/small.svg',
                    color: gato.tamanho == 'Pequeno'
                        ? Colors.white
                        : Colors.black45,
                    width: 110,
                    height: 110),
                new SvgPicture.asset('assets/svg/medium.svg',
                    color:
                        gato.tamanho == 'Médio' ? Colors.white : Colors.black45,
                    width: 105,
                    height: 105),
                new SvgPicture.asset('assets/svg/big.svg',
                    color: gato.tamanho == 'Grande'
                        ? Colors.white
                        : Colors.black45,
                    width: 122,
                    height: 122),
              ],
            ),
          ],
        ));

    return Scaffold(
      body: ListView(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
    );
  }
}
