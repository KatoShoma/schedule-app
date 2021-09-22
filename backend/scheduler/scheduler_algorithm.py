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
        print("****SchedulerAlgorithm is called****")
        self.user_planning_time = user_planning_time
        self.users_tasks = users_tasks
        self.give_up_task_dict = {}
        print(f'user_planning_time : {self.user_planning_time}')
        print(f'users_tasks : {self.users_tasks}')
        print(f'give_up_task_dict:{self.give_up_task_dict}')
        print('*'*40)

    def simple_algorithm(self):
        print('****simple algorithm is called****')
        while True:

            total_times = self.sum_task_times(self.users_tasks)
            print(f'total_times : {total_times}')
            print(f'user_planning_time : {self.user_planning_time}')
            time_condition = self.user_planning_time - total_times
            print(f'time_condition:{time_condition}')
            if time_condition >= 0:
                delete_tasks = {}
                self.users_tasks['free'] = time_condition
                break
            print(f'currently dicts{self.users_tasks}')

            print('^' * 20)
            self.users_tasks, delete_tasks = self.give_up_tasks(self.users_tasks)
            print('^' * 20)

        return self.users_tasks, delete_tasks

    def sum_task_times(self, user_tasks):

        total_times = 0
        for time in user_tasks.values():
            total_times += time
        return total_times

    def give_up_tasks(self, users_tasks):

        long_task = max(users_tasks, key=users_tasks.get)

        print(f'long_task : {long_task}')
        print(f'users_tasks[long_task] : {users_tasks[long_task]}')
        # remove long time
        give_up_task_time = users_tasks[long_task]
        self.give_up_task_dict[long_task] = give_up_task_time
        del users_tasks[long_task]

        return users_tasks, self.give_up_task_dict

def scheduler_into_percent(todo_task, user_planning_time):

    scheduler_percent = {}

    for task, time in todo_task.items():
        scheduler_percent[task] = time / user_planning_time * 100

    return scheduler_percent

def separate_free_time(todo_task):

    print('separate_free_time is called.')
    print(f'todo_task:{todo_task}')
    todo_task_free_time_n = len(todo_task)
    print(f'todo_task_free_time_n:{todo_task_free_time_n}')
    if todo_task['free'] == 0:
        return todo_task
    free_time = todo_task['free'] / todo_task_free_time_n
    print(f'free_time:{free_time}')
    del todo_task['free']

    for i in range(0,todo_task_free_time_n):
        free_name = f'free{i}'
        todo_task[free_name] = free_time
    print(f'todo_task:{todo_task}')

    return todo_task

