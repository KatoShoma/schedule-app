

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

        self.give_up_task_dict = {}
        while True:

            self.total_times = self.sum_task_times(self.users_tasks)
            self.time_condition = self.user_planning_time - self.total_times

            if self.time_condition >= 0:
                break

            print('-' * 20)
            print(f'currently dicts{self.users_tasks}')
            print('-' * 20)

            print('^' * 20)
            self.users_tasks, delete_tasks = self.give_up_tasks(self.users_tasks, self.give_up_task_dict)
            # print(self.give_up_tasks(self.users_tasks, self.give_up_task_dict))
            print('^' * 20)

        return self.users_tasks, delete_tasks

    def sum_task_times(self, user_tasks):

        total_times = 0
        for time in user_tasks.values():
            total_times += time
        return total_times

    def give_up_tasks(self, users_tasks, give_up_task_dict):

        long_task = max(users_tasks, key=users_tasks.get)

        print(f'long_task : {long_task}')
        print(f'users_tasks[long_task] : {users_tasks[long_task]}')
        # remove long time
        give_up_task_time = users_tasks[long_task]
        self.give_up_task_dict[long_task] = give_up_task_time

        del users_tasks[long_task]

        return users_tasks, give_up_task_dict

def scheduler_into_percent(todo_task, user_planning_time):

    scheduler_percent = {}

    for task, time in todo_task.items():
        scheduler_percent[task] = time / user_planning_time * 100

    return scheduler_percent
