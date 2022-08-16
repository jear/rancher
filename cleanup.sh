# https://docs.rke2.io/install/linux_uninstall/
# https://rancher.com/docs/rancher/v2.5/en/cluster-admin/cleaning-cluster-nodes/


rke2-uninstall.sh
# /usr/local/bin/rke2-uninstall.sh



sudo rm -rf /run/secrets/kubernetes.io
sudo rm -rf /var/lib/etcd
sudo rm -rf /var/lib/kubelet
sudo rm -rf /var/lib/rancher
sudo rm -rf /etc/kubernetes
sudo rm -rf /opt/rke

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker volume rm -f $(docker volume ls)
sudo systemctl restart docker
