from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
import sys

ROBOT_LISTENER_API_VERSION = 2

def start_keyword(name,atrr):
        logger.console("Keyword: %s" % name)
        logger.console("Our test variable value: ")
        logger.console(BuiltIn().get_variable_value("${test_variable}"))

def end_keyword(name,attr):
        logger.console("Test variable value after keyword: %s" % name)
        logger.console(BuiltIn().get_variable_value("${test_variable}"))
        answer=input(": continue? (enter=y,n=stop)?")
        if answer=="n":
            sys.exit("Execution stopped")
