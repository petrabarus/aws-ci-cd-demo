import json

from demo.calculate import calculate


def hello(event, context):
    result = calculate(1, 2)
    body = {
        "message": "Hello World! Result is {}".format(result)
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body),
        "headers": {
            "Access-Control-Allow-Origin" : "*",
            "Access-Control-Allow-Credentials" : True
        }
    }

    return response
