import datetime


def write_to_file(data):
    with open('/app/docker-python/output/out.log', 'a') as f:
        try:
            f.writelines(data + '\n')
        except Exception as ex:
            print(ex)


def main():
    write_to_file(str(datetime.datetime.now()))


if __name__ == '__main__':
    main()