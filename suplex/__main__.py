import os

from apscheduler.schedulers.blocking import BlockingScheduler


def main():
    root_dir = os.environ.get('ROOT_MOVIES_DIR')
    delay_s = os.environ.get('ORGANISE_DELAY_S')
    scheduler = BlockingScheduler()
    try:
        scheduler.start()
    except (KeyboardInterrupt, SystemExit):
        pass


if __name__ == '__main__':
    main()
