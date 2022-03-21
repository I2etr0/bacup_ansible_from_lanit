import os

path = "/etc/yum.repos.d/"

files = ["CentOS-Base.repo", "CentOS-Debuginfo.repo", "CentOS-Media.repo", "CentOS-Vault.repo", "epel.repo",
         "CentOS-CR.repo", "CentOS-fasttrack.repo", "CentOS-Sources.repo", "CentOS-x86_64-kernel.repo",
         "epel-testing.repo"]

i = 0

while i <= 9:
    with open(f'{path}{files[i]}', 'r') as f:
        old_data = f.read()

    new_data = old_data.replace('baseurl = https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm', '')
    os.system(f"cat {path}{files[i]}")

    with open(f'{path}{files[i]}', 'w') as f:
        f.write(new_data)

    i += 1

os.system('echo "ВСЕ!')