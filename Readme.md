
# type the following cmds in terminal

docker image build -t app .
docker container run -p 9993:5000 app

# browser type :

 localhost:9993

# create 3 images
docker image build -t app1 .
docker container run -p 9993:5000 app1

docker image build -t app2 .
docker container run -p 9993:5000 app2

# check 3 images are created or not in docker desktop

# build and push all 3 images to docker hub
 docker build -t shraddhahd5/app .
 docker build -t shraddhahd5/app1 .
docker build -t shraddhahd5/app2 .

docker push shraddhahd5/app:latest
docker push shraddhahd5/app1:latest
docker push shraddhahd5/app2:latest

# check whether kubernetes is enabled or not in docker desktop
# create pods
 kubectl run shrinidhi-cnd --image=shraddhahd5/app --port=9993 --labels app=shrinidhi-cnd
 kubectl run shrinidhi-cnd1 --image=shraddhahd5/app1 --port=9993 --labels app1=shrinidhi-cnd 
 kubectl run shrinidhi-cnd2 --image=shraddhahd5/app2 --port=9993 --labels app2=shrinidhi-cnd

 # port forwarding
 kubectl port-forward pod/shrinidhi-cnd 9993:5000
 kubectl port-forward pod/shrinidhi-cnd1 9993:5000
 kubectl port-forward pod/shrinidhi-cnd2 9993:5000

 # list pods 
  kubectl get pods --selector app=shrinidhi-cnd
  kubectl get pods --selector app=shrinidhi-cnd1
  kubectl get pods --selector app=shrinidhi-cnd2

 # delete pods 
 kubectl delete pod shrinidhi-cnd
 kubectl delete pod shrinidhi-cnd1
 kubectl delete pod shrinidhi-cnd2   

