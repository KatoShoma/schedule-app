

class SchedulerAlgorithm:
    """
    This class is mainly Scheduler Algorithm, whichi determin schedule, time table for user

    Attribute:
        TODO nishiyama(shota.nishiyama.44@gmail.com)
    """
    def __init__(self, user_planning_time, users_tasks):
        """
        this is constructer
        :param user_planning_time: integer
        :param users_tasks: dict
        """
        print("constructer is called from main")
        self.user_planning_time = user_planning_time
        self.users_tasks = users_tasks
        print(f'user_planning_time : {self.user_planning_time}, users_tasks : {self.users_tasks}')

    def simple_algorithm(self):
        pass