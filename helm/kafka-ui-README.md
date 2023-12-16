❯ helm repo add kafka-ui https://provectus.github.io/kafka-ui-charts
"kafka-ui" has been added to your repositories
❯ helm install my-kafka-ui kafka-ui/kafka-ui --version 0.7.5
NAME: my-kafka-ui
LAST DEPLOYED: Sat Dec 16 07:40:39 2023
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
1. Get the application URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=kafka-ui,app.kubernetes.io/instance=my-kafka-ui" -o jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl --namespace default port-forward $POD_NAME 8080:8080