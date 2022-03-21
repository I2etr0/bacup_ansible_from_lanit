echo "---------- docker build image ----------"
docker build -t retr0/centos7_for_atlassian:v1 .
echo "---------- docker images ---------- "
docker images
echo "---------- docker save image ----------"
docker save retr0/centos7_for_atlassian >> centos7_for_atlassian.tar

