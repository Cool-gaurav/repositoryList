import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_app_list/repository_description.dart';
import 'package:flutter_app_list/service/repository_service.dart';
import 'package:flutter_app_list/store/repository_store.dart';
import 'package:flutter_app_list/utils/app_constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        Provider(
            create: (_) => ChopperClient(
                baseUrl: BASE_URL,
                services: [RepositoryService.create()],
                converter: JsonConverter())),
        ProxyProvider<ChopperClient, RepositoryStore>(
          create: (ctx) => RepositoryStore(null),
          update: (ctx, chopperClient, store) =>
              RepositoryStore(chopperClient.getService<RepositoryService>()),
        )
      ],
      child: Consumer<ChopperClient>(
        builder: (ctx, auth, expense) => MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RepositoryStore git;

  @override
  void initState() {
    git ??= Provider.of<RepositoryStore>(context, listen: false);
    git.getRepositoryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repository'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Repository List',style: TextStyle(fontSize: 18,color: Colors.blueAccent),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery.of(context).size.width,
              child: Observer(builder: (_) {
                return git.repositoryListState == StoreState.loaded
                    ? ListView.builder(
                        itemCount: git.repoList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RepositoryDescription(git.repoList[index])),
                          );},
                            title: Text('Repository Name : '+git.repoList[index].repositoryFullName),
                            subtitle: Text(
                                'Repository Url : '+git.repoList[index].repositoryOwner.htmlUrl),
                                 leading: git.repoList[index].repositoryOwner.avatarUrl==null ? Image.asset('assets/default_avatar'):Image.network(git.repoList[index].repositoryOwner.avatarUrl),
                          );
                        })
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              }),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
