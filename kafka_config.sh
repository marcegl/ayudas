#!/bin/bash

kv=kafka_2.12-2.2.1

sudo mv $kv.tgz /opt/
sudo tar -xvf /opt/$kv.tgz
sudo ln -s /opt/$kv /opt/kafka
sudo useradd kafka
sudo chown -R kafka:kafka /opt/kafka*
sudo vi /etc/systemd/system/zookeeper.service

sudo echo "[Unit]
Description=zookeeper
After=syslog.target network.target

[Service]
Type=simple

User=kafka
Group=kafka

ExecStart=/opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties
ExecStop=/opt/kafka/bin/zookeeper-server-stop.sh

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/zookeeper.service

sudo echo "[Unit]
Description=Apache Kafka
Requires=zookeeper.service
After=zookeeper.service

[Service]
Type=simple

User=kafka
Group=kafka

ExecStart=/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
ExecStop=/opt/kafka/bin/kafka-server-stop.sh

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/kafka.service

systemctl daemon-reload
systemctl start zookeeper
systemctl start kafka
systemctl enable zookeeper.service
systemctl enable kafka.service

/opt/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic kafkatest
