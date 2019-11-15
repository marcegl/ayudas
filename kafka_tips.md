### Testing

Producer

```shell
/opt/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic nombre_topic
```

Consumer

```shell
/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic nombre_topic --from-beginning --group nombre_grupo
```

### List topics

```shell
/opt/kafka/bin/kafka-topics.sh --list --zookeeper localhost:2181
```

### Create topics

```shell
/opt/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic nombre_topic
```

