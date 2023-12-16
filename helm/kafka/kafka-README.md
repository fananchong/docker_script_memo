❯ helm repo add bitnami https://charts.bitnami.com/bitnami
"bitnami" has been added to your repositories
❯ helm install my-kafka bitnami/kafka --version 26.5.0 -f kafka-values.yaml
NAME: my-kafka
LAST DEPLOYED: Sat Dec 16 11:58:14 2023
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
CHART NAME: kafka
CHART VERSION: 26.5.0
APP VERSION: 3.6.1

** Please be patient while the chart is being deployed **

Kafka can be accessed by consumers via port 9092 on the following DNS name from within your cluster:

    my-kafka.default.svc.cluster.local

Each Kafka broker can be accessed by producers via port 9092 on the following DNS name(s) from within your cluster:

    my-kafka-controller-0.my-kafka-controller-headless.default.svc.cluster.local:9092
    my-kafka-controller-1.my-kafka-controller-headless.default.svc.cluster.local:9092
    my-kafka-controller-2.my-kafka-controller-headless.default.svc.cluster.local:9092

To create a pod that you can use as a Kafka client run the following commands:

    kubectl run my-kafka-client --restart='Never' --image docker.io/bitnami/kafka:3.6.1-debian-11-r0 --namespace default --command -- sleep infinity
    kubectl exec --tty -i my-kafka-client --namespace default -- bash

    PRODUCER:
        kafka-console-producer.sh \
            --broker-list my-kafka-controller-0.my-kafka-controller-headless.default.svc.cluster.local:9092,my-kafka-controller-1.my-kafka-controller-headless.default.svc.cluster.local:9092,my-kafka-controller-2.my-kafka-controller-headless.default.svc.cluster.local:9092 \
            --topic test

    CONSUMER:
        kafka-console-consumer.sh \
            --bootstrap-server my-kafka.default.svc.cluster.local:9092 \
            --topic test \
            --from-beginning