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
{ "jsonrpc": "2.0", "method": "invoke", "params": { "type": 1, "chaincodeID":{ "name":"mycccd" }, "ctorMsg": { "function":"invoke", "args":["a", "b", "10"] }, "secureContext": "jim" }, "id": 3 }
result:
{
    "jsonrpc": "2.0",
    "result": {
        "status": "OK",
        "message": "4e5b60d8-1f7a-4208-ab67-6728adc6a24d"
    },
    "id": 3
}
#### query
测试的时候发现出现了这个问题,之后再调查一下：
```
{
    "jsonrpc": "2.0",
    "error": {
        "code": -32003,
        "message": "Query failure",
        "data": "Error when querying chaincode: Error:Failed to launch chaincode spec(Could not get deployment transaction for mycccd - LedgerError - ResourceNotFound: ledger: resource not found)"
    },
    "id": 5
}
```
