Instructions:
    Install docker
    docker-compose build
    docker-compose up -d

If this works, it will serve bazaar on port 8010.

For a quick test, open these two windows in different browser tabs:

http://localhost:8010/login?roomName=ccc&roomId=100&mturkid=1&username=Abbott&perspective=1&html=index_ccc
http://localhost:8010/login?roomName=ccc&roomId=100&mturkid=1&username=Costello&perspective=1&html=index_ccc

Ignore the spreadsheet error.
It's possible you'll have to reload one or the other if it doesn't connect
