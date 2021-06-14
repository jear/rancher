- Rancher/RKE and HPE DataFabric
https://docs.datafabric.hpe.com/62/CSIdriver/csi_prereqs.html
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/release-3.0/client/config/crd/snapshot.storage.k8s.io_volumesnapshotclasses.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/release-3.0/client/config/crd/snapshot.storage.k8s.io_volumesnapshotcontents.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/release-3.0/client/config/crd/snapshot.storage.k8s.io_volumesnapshots.yaml
```

Then deploy Operator
Install with operator framework 
- https://docs.datafabric.hpe.com/62/CSIdriver/csi_installing_operator.html#csi_byoc__section_mvv_5j1_w4b
or 
- https://docs.datafabric.hpe.com/62/CSIdriver/csi_installation.html


- https://github.com/mapr/mapr-csi/blob/master/examples/how-to-use.md
- https://github.com/mapr/mapr-csi

```
# Everything base64 encoded.
# Then get password for mapr-csi user ( or hpe-csi or anything else)
# And CONTAINER_TICKET  using maprlogin cmd which is available inside mapr container.



# Then update accordingly with examples :
k apply -f my-secure-usersecret.yaml
k apply -f my-secureticketsecret.yaml 
k apply -f my-secure-sc.yaml
k get sc
```

- rancher and runai 
    extra_args for kube-apiserver and kube-controller
    
- run.ai source :  https://docs.run.ai/Administrator/Cluster-Setup/cluster-troubleshooting/#symptom-cluster-installation-failed-on-rancher-based-kubernetes-rke
