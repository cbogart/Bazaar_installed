Instructions:
    Install docker
    Install Node
  Run following commands
    cd bazaar
    npm install

    cd ..
    docker-compose build
    docker-compose up -d

If this works, it will serve bazaar on port 80.

For a quick test, open these two windows in different browser tabs:

http://localhost/bazaar/login?roomName=ccc&roomId=100&mturkid=1&username=Abbott&perspective=1&html=index_ccc
http://localhost/bazaar/login?roomName=ccc&roomId=100&mturkid=1&username=Costello&perspective=1&html=index_ccc

Ignore the spreadsheet error.
It's possible you'll have to reload one or the other if it doesn't connect
