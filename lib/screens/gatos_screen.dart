import 'package:flutter/material.dart';
import 'package:nac_gatos/models/gato_model.dart';
import 'package:nac_gatos/repository/gato_repository.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nac_gatos/screens/dialog.dart';

class GatosScreen extends StatefulWidget {
  @override
  _GatosScreenState createState() => _GatosScreenState();
}

final baseTextStyle = const TextStyle(fontFamily: 'Poppins');

final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.w600);

final regularTextStyle = baseTextStyle.copyWith(
    color: Color(0xffb6b2df), fontSize: 14.0, fontWeight: FontWeight.w400);
final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 22.0);
class _GatosScreenState extends State<GatosScreen> {
  
  Dialogs dialog = new Dialogs();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xffb6b2df),
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          MaterialCommunityIcons.cat,
          size: 32,
        ),
        actions: <Widget>[
          new Material(
            borderRadius: BorderRadius.circular(24),
            color: Color(0xff6173BD),
            child: InkWell(
              borderRadius: BorderRadius.circular(24),
              radius: 50,
              onTap: () {              
              dialog.contactDialog(context);          
              },
              splashColor: Color(0xff4F5B90),
              child: Container(
                width: 58,
                height: 58,
                child: Icon(FontAwesome.id_card_o, color: Colors.white),
              ),
            ),
          )
        ],
        backgroundColor: const Color(0xff6173BD),
        title: Text('Raça de gatos', style: headerTextStyle),
      ),
      body: FutureBuilder<List<GatoModel>>(
        future: GatoRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return buildListView(snapshot.data);
          }
        },
      ),
    );
  }

  ListView buildListView(List<GatoModel> lista) {
    return ListView.builder(
        itemCount: lista == null ? 0 : lista.length,
        itemBuilder: (BuildContext ctx, int index) {
          return cardGato(lista[index]);
        });
  }

  Container cardGato(GatoModel gato) {
    final gatoAvatar = new Container(
        alignment: FractionalOffset.center,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/gatos/${gato.id}.jpg'),
          radius: 40,
        ),
        width: 90.0,
        height: 120.0,
        padding: const EdgeInsets.all(1.5), // borde width
        decoration: new BoxDecoration(
            color: const Color(0xff6173BD), // border color
            shape: BoxShape.circle));

    final gatoCard = new Container(
      decoration: BoxDecoration(
        color: Color(0xff6173BD),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
      ),
      padding: new EdgeInsets.fromLTRB(60, 10, 0, 0),
      margin: new EdgeInsets.only(left: 40, right: 11),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            gato.nome,
            style: headerTextStyle,
          ),
          new Container(height: 2.0),
          new Row(
            children: <Widget>[
              new Icon(FontAwesome.globe, size: 16, color: Colors.white),
              new Container(width: 8.0),
              new Text(gato.origem, style: subHeaderTextStyle),
            ],
          ),
          new Row(
            children: <Widget>[
              new Icon(FontAwesome.hourglass_half,
                  size: 13, color: Colors.white),
              new Container(width: 8.0),
              new Text(
                gato.expcVida,
                style: regularTextStyle,
              ),
              new Container(width: 15.0),
              new Icon(MaterialCommunityIcons.weight_kilogram,
                  size: 18, color: Colors.white),
              new Container(width: 8.0),
              new Text(
                gato.pesoMedio,
                style: regularTextStyle,
              ),
              new Spacer(),
              new Material(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xff6173BD),
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  radius: 35,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/gatos_detalhes",
                      arguments: gato,
                    );
                  },
                  splashColor: Color(0xff4F5B90),
                  child: Container(
                    width: 44,
                    height: 44,
                    child: Icon(FontAwesome.ellipsis_v, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );

    return Container(
      height: 124,
      margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      child: new Stack(
        children: <Widget>[
          gatoCard,
          gatoAvatar,
        ],
      ),
    );
  }
}
