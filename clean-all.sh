gradle -Dno-fail-version-conflict=true -p ../dev clean
gradle -Dno-fail-version-conflict=true -p ../CouchAce clean
gradle -Dno-fail-version-conflict=true -p ../lib clean 
gradle -Dno-fail-version-conflict=true -p ../apis clean 
gradle -Dno-fail-version-conflict=true -p ../app clean 
gradle -Dno-fail-version-conflict=true -p ../runners clean 

gradle -Dno-fail-version-conflict=true -p ../Push clean 
gradle -Dno-fail-version-conflict=true -p ../Notify clean 
gradle -Dno-fail-version-conflict=true -p ../Jobs clean 
gradle -Dno-fail-version-conflict=true -p ../Identity clean 
gradle -Dno-fail-version-conflict=true -p ../AckIM/web clean 
gradle -Dno-fail-version-conflict=true -p ../Skeleton clean 
gradle -Dno-fail-version-conflict=true -p ../Photolab clean 
