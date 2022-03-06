import 'package:codecraze/model/get_all_submissions.dart';

class Calculation{
    late List<Result>? results;
    Calculation({required this.results});

    late double accuracy,oneSubmit,avgAttemp;
    num totalAc=0;
    num perfectSubmit=0;

    Map<String,Problem>triedProblem = new Map();
    Map<String,num>solvedProblem = new Map();
    Map<String,Problem>solvedProblemDetails = new Map();
    Map<String,Problem>unSolvedProblemDetails = new Map();

    void main(){

      for(int i=results!.length-1; i>=0; i--){
        if(results![i].verdict=="ACCEPTED"){
          if(triedProblem[results![i].problem!.name.toString()]==null){
            perfectSubmit++;
          }
          solvedProblemDetails[results![i].problem!.name.toString()]=results![i].problem!;
          totalAc++;
          solvedProblem[results![i].problem!.name.toString()]=1;
        }
        triedProblem[results![i].problem!.name.toString()]=results![i].problem!;
      }

      for(MapEntry k in triedProblem.entries){
        if(solvedProblemDetails[k.key]==null){
          unSolvedProblemDetails[k.key]=k.value;
        }
      }

      print(unSolvedProblemDetails.length);

      if(results!.length==0){
        accuracy=0;
        oneSubmit=0;
      }
      else{
        accuracy=(totalAc/results!.length);
        oneSubmit=(perfectSubmit/triedProblem.length);
        oneSubmit*=100;
        accuracy*=100.0;
      }

      if(totalAc==0){
        avgAttemp=0;
      }
      else{
        avgAttemp=results!.length/totalAc;
      }

    }

}