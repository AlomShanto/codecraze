import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';


class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {

  ReUsableContainer reUse = new ReUsableContainer();

  List<String> keyWords = [
  'auto',	'double',	'int',	'struct',
  'break',	'else',	'long',	'switch',
  'case',	'enum',	'register',	'typedef',
  'char',	'extern',	'return',	'union',
  'continue',	'for',	'signed',	'void',
  'do',	'if',	'static',	'while',
  'default',	'goto',	'sizeof',	'volatile',
  'const',	'float',	'short',	'unsigned',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction'),
      ),
      body: ListView(
        children: [
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Center(
              child: Text(
                'KeyWords',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                ),
              ),
            )
          ),
          Container(
            height: SizeConfig.screenHeight*.3,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemCount: keyWords.length,
                itemBuilder: (context,index){
                  return Container(
                    decoration: reUse.boxDecoration(),
                    width: SizeConfig.screenWidth*.2,
                    height: SizeConfig.screenHeight*.5,
                    child: Center(
                      child: Text(
                        '${keyWords[index]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    )
                  );
                }
            ),
            decoration: reUse.boxDecoration()
          ),
          Container(
              height: SizeConfig.screenHeight*.1,
              child: Center(
                child: Text(
                  'Identifiers',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              )
          ),
          Container(
            height: SizeConfig.screenHeight*.3,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Identifier refers to name given'
                  ' to entities such as variables, functions, structures etc.'
                  'Identifiers must be unique. They are created to give a '
                  'unique name to an entity to identify it during the execution of the program.'
                      ' Also remember, identifier names must be different from keywords\n\n'

                  'Rules for naming identifiers:\n\n'
                  '1)  A valid identifier can have letters (both uppercase and lowercase letters),'
                      ' digits and underscores.\n\n'
                  '2)  The first letter of an identifier should be either a letter or an underscore.\n\n'
                  '3)  You cannot use keywords like int, while etc. as identifiers.\n\n'
                  '4)  There is no rule on how long an identifier can be. However, '
                      'you may run into problems in some compilers if the identifier is longer than 31 characters.\n\n'
                  'You can choose any name as an identifier if you follow the above rule, '
                      'however, give meaningful names to identifiers that make sense.\n\n\n',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ),
            decoration: reUse.boxDecoration()
          ),
          Container(
              height: SizeConfig.screenHeight*.1,
              child: Center(
                child: Text(
                  'Example of Identifier',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              )
          ),
          Container(
            height: SizeConfig.screenHeight*.3,
            child: Image.asset(
              'images/identifier1.JPG',
              fit: BoxFit.fill,
            ),
            decoration: reUse.boxDecoration()
          ),
          Container(
              height: SizeConfig.screenHeight*.1,
              child: Center(
                child: Text(
                  'Variables & Constants',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              )
          ),
          Container(
            height: SizeConfig.screenHeight*.2,
            child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                   'In programming, a variable is a container (storage area) to hold data.'
                       'To indicate the storage area, each variable should be given a unique name (identifier).\n\n',
                    style: TextStyle(fontSize: 18),
                  ),
                )
            ),
            decoration: reUse.boxDecoration()
          ),
        ],
      ),
    );
  }
}
