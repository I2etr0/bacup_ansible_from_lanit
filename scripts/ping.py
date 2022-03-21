import os

ip = "172.29.16."
i = 25

while i <= 254:
    response = os.system(f"ping -c 1 {ip}{i}")
    print('\n' + "---------------------------------")
    i += 1

    if response == 0:
        print(f"{ip}{i}", 'is up!')
        up = f"{ip}{i} is up!"
        file = open("servers.txt", "a")
        file.write(up + '\n')
        file.close()

    else:
        print(f"{ip}{i}", 'is down!')
        up = f"{ip}{i} is down!"
        file = open("servers.txt", "a")
        file.write(up + '\n')
        file.close()
