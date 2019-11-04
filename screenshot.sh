#!/bin/bash

echo "Starting safaridriver"
safaridriver -p 4444 & SAFARIDRIVER_PID=$!
sleep 1

echo "Starting session"
curl -d '{"capabilities":{"alwaysMatch":{"platformName":"iOS","safari:useSimulator":false,"safari:deviceType":"iPad"}}}' http://localhost:4444/session

echo "Stopping safaridriver"
kill $SAFARIDRIVER_PID
