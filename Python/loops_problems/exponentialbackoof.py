import time

wait_time = 1
max_retries = 5
attempts = 0

while attempts<max_retries:
    print("Attempts:",attempts + 1,"-wait_time:",wait_time)