#!/bin/bash
l=$RANDOM
for (( i=1; i<=$l; i+=1 ))
do
    if (( $RANDOM % 3 )); then
        # curl -X POST -d "voter_id=$(echo $RANDOM)&vote=a" http://www.vote.cloudns.asia &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=a" http://150.136.192.222 &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=a" http://istio-ingressgateway-istio-system.apps.cluster-e365.e365.sandbox1789.opentlc.com/ &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=a" http://istio-ingressgateway-smesh1.apps.cluster-e365.e365.sandbox1789.opentlc.com/ratings &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=a" http://vote-vote.apps.cluster-vote-fa80.vote-fa80.sandbox674.opentlc.com &
        curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=a" http://vote-user1.apps.cluster-tpe-42f3.tpe-42f3.example.opentlc.com/ &
    else
        # curl -X POST -d "voter_id=$(echo $RANDOM)&vote=b" http://www.vote.cloudns.asia &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=b" http://150.136.192.222 &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=b" http://istio-ingressgateway-istio-system.apps.cluster-e365.e365.sandbox1789.opentlc.com/ &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=b" http://istio-ingressgateway-smesh1.apps.cluster-e365.e365.sandbox1789.opentlc.com/ratings &
        # curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=b" http://vote-vote.apps.cluster-vote-fa80.vote-fa80.sandbox674.opentlc.com &
        curl -s -X POST -d "voter_id=$(echo $RANDOM)&vote=b" http://vote-user1.apps.cluster-tpe-42f3.tpe-42f3.example.opentlc.com/ &
    fi
  sleep 1
  # echo $i
  # echo $RANDOM
done
