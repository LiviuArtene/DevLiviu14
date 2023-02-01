List<String>listStr =new list<string>();
listStr.add('out of bound');
listStr.add('yes');
listStr.add('alright');
listStr.add('yes sir');

// ||out of bound|| yes|| alright

string concateStr ='';

for (string eachStr:listStr){
    concateStr += '||' + eachStr ;
}
system.debug(concateStr);
