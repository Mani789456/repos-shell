echo -e "\e[32m CONFIGURING YUM REPOSITORIES FROM SCRIPT \e[0m"
curl -s https://packagecloud.io/install/repositories/rabbitmq/erlang/script.rpm.sh | bash
echo -e "\e[32m CONFIGURING YUM REPOSITORIES FROM RABBITMQ \e[0m"
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | bash
echo -e "\e[33m INSTALLING RABBITMQ SERVICE \e[0m"
yum installrabbitmq-server -y
echo -e "\e[33m CREATION OF USER FOR THE APPLICATION \e[0m"
rabbitmqctladd_userroboshop roboshop123
rabbitmqctlset_permissions -p / roboshop".*"".*"".*"

