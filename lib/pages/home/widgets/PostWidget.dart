import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 35 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/26725709?s=400&u=be4081cab6eb380055c2846bab9e18b5b5681b58&v=4"),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Text(
                  "davidkalil10",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                )),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                  color: Colors.white,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Image.network(
            "https://avatars.githubusercontent.com/u/26725709?s=400&u=be4081cab6eb380055c2846bab9e18b5b5681b58&v=4",
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.white,
                    onPressed: () {}),
                SizedBox(
                  width: 4,
                ),
                IconButton(
                    icon: Icon(Icons.messenger_outline),
                    color: Colors.white,
                    onPressed: () {}),
                SizedBox(
                  width: 4,
                ),
                IconButton(
                    icon: Icon(Icons.send),
                    color: Colors.white,
                    onPressed: () {}),
                Expanded(child: Container()),
                IconButton(
                    icon: Icon(Icons.bookmark_border),
                    color: Colors.white,
                    onPressed: () {}),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Curtido por davidkalil10 e outras 300 pessoas",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Há 1 HORA",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
              ],
            ),
          ),
          if (desktop) ...[
            Divider(
              height: 0.1,
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          hintText: "Adicione um comentário...",
                          hintStyle:
                              TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text("Publicar"),
                )
              ],
            )
          ]
        ],
      ),
    );
  }
}
