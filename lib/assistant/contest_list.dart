import 'package:codecraze/model/get_contest_list.dart';

class ContestList{
  late List<Result3>? result;
  ContestList({required this.result});
  Map<String,StartTime>Upcoming = new Map();
  void main(){
    print(result!.length.toString()+ "length");
    for(int i=0; i<result!.length; i++){
      print(result![i].phase);
      print(i);
      if(result![i].phase.toString()=="Phase.BEFORE"){
        print('i am in');
        StartTime st = new StartTime(total: result![i].startTimeSeconds);
        st.main();
        Upcoming[result![i].name]=st;
      }
    }
  }
}
class StartTime{
  late num day,hour,min,sec,total;
  StartTime({required this.total});
  void main(){
    day = (total/(24*3600))-19200;
    total = total % (24*3600);
    hour = (total/3600);
    total = (total%3600);
    min = (total/60);
    sec = (total%60);
    total=day*84400+hour*3600+min*60+sec;
  }
}