import datetime


def write_to_file(data):
    with open('/tmp/out.log', 'a') as f:
        try:
            f.writelines(data + '\n')
        except Exception as ex:
            print(ex)


def main():
    write_to_file(str(datetime.datetime.now()))
    print(str(datetime.datetime.now()))


if __name__ == '__main__':
    main()