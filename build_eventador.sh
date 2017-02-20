mvn package -pl presto-kafka -Dmaven.test.skip=true
cp presto-kafka/target/presto-kafka-0.166-SNAPSHOT.jar presto-server/target/presto-server-0.166-SNAPSHOT/plugin/kafka/
cd presto-server/target/presto-server-0.166-SNAPSHOT
bin/launcher stop
bin/launcher start

