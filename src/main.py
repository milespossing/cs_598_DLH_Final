import argparse
from gbert.bert import Bert

def parse_arguments():
    parser = argparse.ArgumentParser()
    return parser.parse_args()


if __name__ == '__main__':
    args = parse_arguments()
    model = Bert()