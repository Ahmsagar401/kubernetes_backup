clear
apt update
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sudo tee /etc/modules-load.d/containerd.conf <<EOF
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter
sudo tee /etc/sysctl.d/kubernetes.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system
sudo apt install ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 
apt update
sudo apt install -y containerd.io
containerd config default | sudo tee /etc/containerd/config.toml >/dev/null 2>&1
sudo sed -i 's/SystemdCgroup \= false/SystemdCgroup \= true/g' /etc/containerd/config.toml
sudo systemctl restart containerd
sudo systemctl enable containerd
sudo systemctl status containerd
apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo systemctl enable --now kubelet
system status containerd
systemctl status containerd
systemctl status kubelt
systemctl status kubelet
kubeadm init
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes
kubectl get pods -a
kubectl get pods -A
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml
kubectl get pods -A
kubectl get pods -A -w
kubectl get nodes
kubeadm token create --print-join-command
kubectl get nodes
history
kubectl get pods -A
kubectl get nodes
kubectl get podes -A
kubectl get pods -A
kubectl get pods -A -owide
circtl ps
sudo circtl ps
sudo crictl ps
ctr image ls
crictl ps -a
ctr -n k8s.io containers list
kubectl get nodes
kubectl get pods
kubectl get pods -A
kubectl get pods -A -owide
kubeadm token create --print-join-command
crictl ps
crictl image 
crictl image ls
crictl ps -a
ctr -n k8s.io containers list
kube system
vi jenkins.yml
kubectl get namespace
ls
vi jenkins.yml 
kubectl apply -f jenkins.yml
kubectl get pods
kubectl get pods -a
kubectl get pods -A
kubectl get pods -A -owide
kubectl get pods -A -owide | grep jenkins
cat jenkins.yml 
vi jenkins.yml 
crictl ps | grep jenkins
kubectl get nodes
kubectl get pods
kubectl get pods -A
kubectl get namespace
kubectl namespace --help
namespace --help
kubectl get namespace sample-namespace
kubectl create namespace sample
kubectl get namespace
vi jenkins.yml 
kubectl apply -f jenkins.yml
kubectl get pods
kubectl get pods -A -owide
kubectl get pods -n sample
vi jenkins.yml 
kubectl delete -f jenkins.yml
kubectl get pods
kubectl get pods -n sample
kubectl get pods -A -owide
ls
kubectl delete -f jenkins.yml
vi jenkins.yml 
kubectl delete -f jenkins.yml
kubectl get pods
kubectl get pods -A -owide
ls
kubectl get nodes
kubectl get pods
kubectl delete -f jenkins-tomcat.yml 
kubectl get pods
cat jenkins.yml 
vi jenkins-replica.yml
kubectl get pods
kubectl applu -f jenkins-replica.yml 
kubectl apply -f jenkins-replica.yml 
vi jenkins-replica.yml
ls
vi jenkins
vi jenkins.yml 
kubectl apply -f jenkins.yml 
kubectl get pods
vi jenkins.yml 
vi jenkins-replica.yml 
kubectl apply -f jenkins-replica.yml 
cat jenkins.yml 
vi jenkins-replica.yml 
vi jenkins-replicas.yml
kubectl delete -f jenkins.yml 
kubectl apply -f jenkins-replicas.yml 
vi jenkins-replica.yml 
vi jenkins-replicas.yml
kubectl apply -f jenkins-replicas.yml 
vi jenkins-replicas.yml
kubectl apply -f jenkins-replicas.yml 
vi jenkins-replicas.yml
kubectl apply -f jenkins-replicas.yml 
vi jenkins-replicas.yml
kubectl apply -f jenkins-replicas.yml 
vi jenkins-replicas.yml 
kubectl apply -f jenkins-replicas.yml 
kubectl get nodes
kubectl get pods
kubectl get pods -owide
ls
kubectl get pods
kubectl get nodes
kubectl get namespace
ls
vi jenkins-tomcat.yml
vi jenkins.yml 
vi jenkins-tomcat.yml 
kubectl apply -f jenkins-tomcat.yml 
kubectl get pods
kubectl get pods -A
kubectl get pods -owide
kubectl get nodes
kubectl get pods
kubectl edit jenkins-tomcat.yml 
kubectl edit jenkins-tomcat-pod
cat jenkins-tomcat.yml 
kubectl edit jenkins-tomcat-pod
kubectl edit pod jenkins-tomcat-pod
route -n
apt install net-tools
route -n
kubectl get pods
kubectl get pods -owide
kubectl get nodes
curl -v 192.168.250.66
curl -v 192.168.250.66:8080
su - ubuntu
ls
kubectl get nodes
kubectl get pods
kubectl get pods -owide
kubectl delete pods jenkins
kubectl get pods -owide
kubectl delete pods jenkins-replica-r4xjn
kubectl get pods -owide
vi jenkins-replicas.yml 
kubectl apply -f jenkins-replicas.yml 
kubectl get nodes
kubectl get pods
kubectl delete -f jenkins-replicas.yml 
kubectl get pods
df- h
df -h
kubectl get pods
kubectl get replicaset
kubectl get pods
kubectl apply -f jenkins-replicas.yml 
kubectl get pods
kubectl delete -f jenkins-replicas.yml 
kubectl get pods
kubectl get pods -owide
kubectl get pods
kubectl delete jenkins-replica-2vn4t
kubectl delete pods jenkins-replica-2vn4t
kubectl delete pods jenkins-replica-sr7vk
kubectl get pods
vi jenkins-replicas
kubectl get pods
kubectl apply -f jenkins-replicas.yml 
kubectl get pods
kubectl delete pod jenkins-replica-g9zvw
kubectl get pods
kubectl get replicaset
vi jenkins-replicas.yml 
kubectl apply -f jenkins-replicas.yml 
kubectl get nods
kubectl get pods
kubectl get replicaset
vi jenkins-replicas.yml 
kubectl get pods
kubectl delete pods --all --force
kubectl get pods
vi jenkins-replicas.yml 
kubectl get pods
vi jenkins-replicas.yml 
kubectl get pods
kubectl delete pods --all --force
kubectl get pods
kubectl delete -f jenkins-replicas.yml 
kubectl delete -f jenkins-replica.yml 
kubectl get pods
kubectl get replicaset
vi jenkins-replicas.yml 
kubectl delete -f jenkins-replicas.yml 
