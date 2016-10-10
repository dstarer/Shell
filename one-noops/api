#### register chaincode:

cd $GOPATH/src/github.com/chaincode_example02
CORE_CHAINCODE_ID_NAME=mycc CORE_PEER_ADDRESS=0.0.0.0:7051 ./chaincode_example02

####first login:

POST localhost:7050/registrar

{
  "enrollId": "jim",
  "enrollSecret": "6avZQLwcUe9b"
}

result:
200 OK
{
    "OK": "Login successful for user 'jim'."
}

#### deploy
POST host:port/chaincode
{
  "jsonrpc": "2.0",
  "method": "deploy",
  "params": {
    "type": 1,
    "chaincodeID":{
        "name": "mycc"
    },
    "ctorMsg": {
        "function":"init",
        "args":["a", "100", "b", "200"]
    },
    "secureContext": "jim"
  },
  "id": 1
}

result:
{
    "jsonrpc": "2.0",
    "result": {
        "status": "OK",
        "message": "mycc"
    },
    "id": 1
}
#### invoke
{
  "jsonrpc": "2.0",
  "method": "invoke",
  "params": {
      "type": 1,
      "chaincodeID":{
          "name":"mycc"
      },
      "ctorMsg": {
         "function":"invoke",
         "args":["a", "b", "10"]
      },
      "secureContext": "jim"
  },
  "id": 3
}

result:
{
    "jsonrpc": "2.0",
    "result": {
        "status": "OK",
        "message": "5a4540e5-902b-422d-a6ab-e70ab36a2e6d"
    },
    "id": 3
}

#### query
{
  "jsonrpc": "2.0",
  "method": "query",
  "params": {
      "type": 1,
      "chaincodeID":{
          "name":"mycc"
      },
      "ctorMsg": {
         "function":"query",
         "args":["a"]
      },
      "secureContext": "jim"
  },
  "id": 5
}

result:
{
    "jsonrpc": "2.0",
    "result": {
        "status": "OK",
        "message": "90"
    },
    "id": 5
}
