import json

def main():
    print("Hello, Beautiful World.")

    # in serevice, getting json file from post request
    print("Loding Template json file...")

    f = open('./input_template.json', 'r')
    json_dict = json.load(f)

    print(json_dict)

if __name__ == "__main__":
    main()