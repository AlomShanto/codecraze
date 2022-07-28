import 'dart:math';

import 'package:codecraze/model/get_all_contests.dart';
import 'package:codecraze/model/get_all_submissions.dart';

class ContestCalculator{
  List<Result2> result;
  ContestCalculator({required this.result});

  late num totalContest,bestRank,worstRank;

  Map<int,int>contestParticipated = new Map();

  void main(){
    totalContest = result.length;
    if(totalContest==0){
      bestRank=0;
      worstRank=0;
    }
    else{
      bestRank=result[0].rank;
      worstRank=result[0].rank;
      for(int i=0; i<result.length; i++){
        bestRank=min(bestRank,result[i].rank);
        worstRank=max(worstRank,result[i].rank);
        contestParticipated[result[i].contestId]=result[i].rank;
      }
    }
  }
}