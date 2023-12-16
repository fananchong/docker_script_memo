helm install mykafka oci://registry-1.docker.io/bitnamicharts/kafka
Pulled: registry-1.docker.io/bitnamicharts/kafka:26.5.0
Digest: sha256:d96191efdddaaf022943c8e2995af102751bcde82a5b575c1ad8afca75f448b3
NAME: mykafka
LAST DEPLOYED: Sat Dec 16 06:59:35 2023
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

    mykafka.default.svc.cluster.local

Each Kafka broker can be accessed by producers via port 9092 on the following DNS name(s) from within your cluster:

    mykafka-controller-0.mykafka-controller-headless.default.svc.cluster.local:9092
    mykafka-controller-1.mykafka-controller-headless.default.svc.cluster.local:9092
    mykafka-controller-2.mykafka-controller-headless.default.svc.cluster.local:9092

The CLIENT listener for Kafka client connections from within your cluster have been configured with the following security settings:
    - SASL authentication

To connect a client to your Kafka, you need to create the 'client.properties' configuration files with the content below:

security.protocol=SASL_PLAINTEXT
sasl.mechanism=SCRAM-SHA-256
sasl.jaas.config=org.apache.kafka.common.security.scram.ScramLoginModule required \
    username="user1" \
    password="$(kubectl get secret mykafka-user-passwords --namespace default -o jsonpath='{.data.client-passwords}' | base64 -d | cut -d , -f 1)";

To create a pod that you can use as a Kafka client run the following commands:

    kubectl run mykafka-client --restart='Never' --image docker.io/bitnami/kafka:3.6.1-debian-11-r0 --namespace default --command -- sleep infinity
    kubectl cp --namespace default /path/to/client.properties mykafka-client:/tmp/client.properties
    kubectl exec --tty -i mykafka-client --namespace default -- bash

    PRODUCER:
        kafka-console-producer.sh \
            --producer.config /tmp/client.properties \
            --broker-list mykafka-controller-0.mykafka-controller-headless.default.svc.cluster.local:9092,mykafka-controller-1.mykafka-controller-headless.default.svc.cluster.local:9092,mykafka-controller-2.mykafka-controller-headless.default.svc.cluster.local:9092 \
            --topic test

    CONSUMER:
        kafka-console-consumer.sh \
            --consumer.config /tmp/client.properties \
            --bootstrap-server mykafka.default.svc.cluster.local:9092 \
            --topic test \
            --from-beginning