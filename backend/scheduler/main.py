import json

import scheduler_algorithm
import utils

def main():

    print("Hello, Beautiful World.")

    # in serevice, getting json file from post request
    print("-" * 30)
    print("Loding Template json file.")
    f = open('./input_template.json', 'r')
    json_dict = json.load(f)
    print("read json template complite.")
    print("print json template.")
    print(json_dict)
    print("-" * 30)

    user_planning_time = json_dict['times']
    users_tasks = json_dict['tasks']

    print("debugging scheduler algorithm...")
    scheduler = scheduler_algorithm.SchedulerAlgorithm(user_planning_time, users_tasks)

    results = {}
    results['give_up'] = 'never give up'
    results['user_planning_time'] = user_planning_time
    results['todo_task'] = scheduler.gyutto_algorithm()

    # print("*" * 30)
    # todo_task, giveup_task = scheduler.simple_algorithm()
    # print(f'todo_task : {todo_task}')
    # print(f'give up task : {giveup_task}')
    # # print("*" * 30)
    #
    # user_planning_time = scheduler_algorithm.scheduler_into_percent(todo_task, user_planning_time)
    # print(f'user_planning_time:{user_planning_time}')
    #

    #
    # for simple algo
    # results = {}
    # results['give_up'] = giveup_task
    # results['user_planning_time'] = user_planning_time
    # results['todo_task'] = scheduler_algorithm.separate_free_time(todo_task)

    # save
    # with open('./output_template.json', 'w') as fp:
    #     json.dump(results, fp)

    print('------ RESULTS OF THIS PROGRAM ------')
    print('#%$&' * 30)
    print(results)
    print('#%$&' * 30)

if __name__ == "__main__":
    main()