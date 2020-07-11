import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:flutter/material.dart';

class ListJunior extends StatefulWidget {
  @override
  _ListJuniorState createState() => _ListJuniorState();
}

class _ListJuniorState extends State<ListJunior> {
  String _url = "https://owlbot.info/api/v4/dictionary/"; //our url
  String _token = "c2013aecfb6c9269fb1661fb9771ecd47e2f6cfd";
  TextEditingController _controller = new TextEditingController();

  Timer _debounce;

  StreamController _streamController;
  Stream _stream;
  _search() async {
    if (_controller.text == null || _controller.text.length == 0) {
      _streamController.add(null);
      return;
    } else {
      _streamController.add("waiting");
      Response res = await get(_url + _controller.text.trim(),
          headers: {"Authorization": "Token " + _token});
      var data = res.body;

      _streamController.add(json.decode(data));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("list of junior under org"),
          ),
          bottom: PreferredSize(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 12, bottom: 8, top: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            contentPadding: const EdgeInsets.only(left: 10),
                            border: InputBorder.none),
                        onChanged: (String text) {
                          if (_debounce?.isActive ?? false) _debounce.cancel();
                          _debounce =
                              Timer(const Duration(microseconds: 800), () {
                            _search();
                          });
                        },
                        controller: _controller,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {
                      _search();
                    },
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(50))),
      body: StreamBuilder(
        stream: _stream,
        builder: (BuildContext cnt, AsyncSnapshot snapshot) {
          print("data ");
          print(snapshot.data);
          if (snapshot.data == null) {
            return Center(child: Text("Search Members"));
          } else if (snapshot.data == "waiting") {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.data.length > 1) {
            return ListView.builder(
                itemCount: snapshot.data["definitions"].length,
                itemBuilder: (BuildContext context, int index) {
                  return ListBody(
                    children: <Widget>[
                      Container(
                        color: Colors.grey[300],
                        child: ListTile(
                          leading: snapshot.data["definitions"][index]
                                      ["image_url"] ==
                                  null
                              ? null
                              : CircleAvatar(
                                  backgroundImage: NetworkImage(snapshot
                                      .data["definitions"][index]["image_url"]),
                                ),
                          title: Text(_controller.text.trim() +
                              "(" +
                              snapshot.data["definitions"][index]["type"] +
                              ")"),
                        ),
                      ),
                    ],
                  );
                });
          } else
            return Center(child: Text("Not available"));
        },
      ),
    );
  }
}
