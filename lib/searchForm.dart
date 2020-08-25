import 'package:flutter/material.dart';
import 'searchPage.dart';

///搜素框
class SearchFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) {
      return new Container(
        child: new Form(
          child: GestureDetector(
            onTap: (){
              //点击事件监听
              Navigator.push(
                context,
                //跳转到搜索页面
                new MaterialPageRoute(builder: (context) => new SearchPageWidget()),
              );
            },
            child: Container(
                margin: EdgeInsets.only(left: 60, top: 10,right: 60),
                //设置 child 居中
                alignment: Alignment(0, 0),
                height: 40,
                width: 200,
                //边框设置
                decoration: new BoxDecoration(
                  //背景
                  color: Colors.black12,
                  //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  //设置四周边框
                  border: new Border.all(width: 1, color: Colors.white12),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.black26,
                          iconSize: 22,
                          onPressed: () {
                            //跳转搜索页面
                            //showSearch(context: context, delegate: SearchBarDelegate());
                          }
                      ),
                      Text("点击搜索...",
                        style: new TextStyle(
                          color: Colors.black26,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
        ),
      );
    }
  }

}