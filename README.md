# Kubespray docker

http://kubespray.io

This image contains Kargo and KPM tools

## Deploy the cluster with Kargo

Prepare the volume

```
mkdir $HOME/kubespray
vim $HOME/kubespray/kargo.yml
```

Run the container. It opens a bash shell.

```
$ docker run --name kubespray --rm -ti -v $HOME/kubespray:/kubespray jcsirot/kubespray
```

Run Kargo to deploy the cluster

```
bash-4.3# kargo prepare --config /kubespray/kargo.yml --nodes node1[ansible_ssh_host=10.99.21.1] node2[ansible_ssh_host=10.99.21.2] node3[ansible_ssh_host=10.99.21.3]
bash-4.3# kargo deploy --config /kubespray/kargo.yml
```

See kargo [documentation](https://github.com/kubespray/kargo-cli) for more details
