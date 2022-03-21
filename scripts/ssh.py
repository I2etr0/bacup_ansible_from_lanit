import os

servers = "172.29.83."
ip = [149, 152, 153, 154, 155, 157, 156]
i = 0

while i <= 6:
    os.system(f"sshpass -p \"Beroslav43\" ssh-copy-id -i ~/.ssh/id_rsa.pub retr0@{servers}{ip[i]}")
    i += 1

