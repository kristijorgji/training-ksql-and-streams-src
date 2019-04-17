TAG=5.0.0
PREFIX=confluentinc
declare -a NAMES=("cp-zookeeper" "cp-enterprise-kafka" "cp-schema-registry" \
                       "cp-ksql-server" "cp-ksql-cli" "cp-kafka-connect" \
                       "cp-enterprise-control-center" "cp-kafka-rest"
                       "ksql-examples")
for NAME in "${NAMES[@]}" 
do
    docker image pull ${PREFIX}/${NAME}:${TAG} 
done

declare -a NAMES=("openjdk:11-jdk-slim" "hseeberger/scala-sbt" \
"frekele/gradle:latest" "openjdk:11-jre-slim" "maven:3.5.3-jdk-8-alpine") 

for NAME in "${NAMES[@]}"
do
    docker image pull ${NAME}
done
