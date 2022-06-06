import 'package:flutter/material.dart';
import 'package:test_1/ui/leadDialog.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List post = [
    'Проверки ОЭБ и ПК, изъятие документов в офисе, вызвали на опрос, запросили документы, незаконно провели ОРМ, Вас или Ваших родственников задержали сотрудники полиции, в отношении Вас совершены мошеннические, коррупционные или иные преступные действия, не согласны с принятым решением по Вашему заявлению, жалобе, обращению и т.д.',
    'Оценим риски привлечения к уголовной ответственности. Совместно определим линию защиты. Обратим внимание на слабые места.',
    'Обжалуем любые действия сотрудников полиции. ',
    'Вооружим необходимыми знаниями для взаимодействия с правоохранительными органами. ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topLeft,
                width: 514,
                height: 342,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/book.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  height: 44,
                  width: 44,
                  margin: const EdgeInsets.only(left: 16, top: 44),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xFFF36C35),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 300,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 30,
                            color: Colors.white,
                            blurStyle: BlurStyle.normal,
                            blurRadius: 30,
                            offset: Offset(0, 30)),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Экономическая безопасность и противодействие коррупции',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: '.SF UI Display'),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          child: const Text(
                            'Вопросы которые мы решим',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: '.SF UI Text',
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 2 - 100,
                              child: ListView.builder(
                                  itemCount: post.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ContainersText(
                                      text: post[index],
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Positioned(
                bottom: 34,
                right: MediaQuery.of(context).size.width / 2 - 140,
                child: SizedBox(
                  width: 280,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF01AAAD)),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => leadDialog);
                    },
                    child: const Text(
                      'Продолжить',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainersText extends StatelessWidget {
  final String text;
  const ContainersText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xFFF8F8F8)),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}
