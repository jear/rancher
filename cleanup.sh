# https://docs.rke2.io/install/linux_uninstall/
# https://rancher.com/docs/rancher/v2.5/en/cluster-admin/cleaning-cluster-nodes/


/usr/local/bin/rke2-uninstall.sh


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker volume rm -f $(docker volume ls)

sudo rm -rf /run/secrets/kubernetes.io
sudo rm -rf /var/lib/etcd
sudo rm -rf /var/lib/kubelet
sudo rm -rf /var/lib/rancher
sudo rm -rf /etc/kubernetes
sudo rm -rf /opt/rke

sudo systemctl restart docker
