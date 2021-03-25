from robot.api import logger

class BugReport:
    ROBOT_LISTENER_API_VERSION = 3

    def end_test(self,data,result):
        if result.status == 'FAIL':
            logger.console("Test FAILED = we need to report bug")
            logger.console(data.name)
            for keyword in data.keywords:
                logger.console("keyword: %s" % keyword.name)
