gradle -p ../dev install
gradle -p ../CouchAce install
gradle -p ../lib install
gradle -p ../apis install
gradle -p ../app install
gradle -p ../runners install

gradle -p ../Push/tioga-push-client install
gradle -p ../Notify/tioga-notify-client install
gradle -p ../Notify/tioga-notify-notifier install
gradle -p ../Jobs/tioga-jobs-client install
gradle -p ../Identity/tioga-identity-client install
gradle -p ../AckIM/web/tioga-ackim-client install
gradle -p ../Skeleton/tioga-skeleton-pub install

gradle -p ../Push install
gradle -p ../Notify install 
gradle -p ../Jobs install
gradle -p ../Identity install
gradle -p ../AckIM/web install
gradle -p ../Skeleton install
gradle -p ../Photolab install
