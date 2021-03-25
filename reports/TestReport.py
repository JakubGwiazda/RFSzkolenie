import requests, uuid, json
from robot.api import logger

class TestReport:
    ROBOT_LISTENER_API_VERSION = 2
    #your_token = "82891d061c7211e206c5e3a7e757d7ea250a9621"

    def __init__(self,token):
        self.your_token=token
        logger.console("Token: %s" % token)
        
    def start_suite(self, name, attributes):
        if name!='Reports':
            resp = requests.post(
                "https://api.todoist.com/rest/v1/projects",
                data=json.dumps({
                    "name": name
                    }),
                headers={
                    "Content-Type": "application/json",
                    "X-Request-Id": str(uuid.uuid4()),
                    "Authorization": "Bearer %s" % self.your_token
                    }).json()
            self.project_id=resp["id"]
            logger.console("Stored project id: %d" % self.project_id)

    def end_test(self,name,attributes):
        attributes["status"]
        requests.post(
            "https://api.todoist.com/rest/v1/tasks",
            data=json.dumps({
                "content": "%s : %s" % (name, attributes["status"]),
                "project_id": self.project_id
            }),
            headers={
                "Content-Type": "application/json",
                "X-Request-Id": str(uuid.uuid4()),
                "Authorization": "Bearer %s" % self.your_token
            }).json()
