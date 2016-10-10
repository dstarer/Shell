#### login

#### deploy
{
  "jsonrpc": "2.0",
  "method": "deploy",
  "params": {
    "type": 1,
    "chaincodeID":{
        "path":"github.com/hyperledger/fabric/examples/chaincode/go/chaincode_example02",
        "name":"mycccd"
    },
    "ctorMsg": {
        "args":["init", "a", "1000", "b", "2000"]
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
        "message": "mycccd"
    },
    "id": 1
}
#### invoke

#### query
