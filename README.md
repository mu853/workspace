# Usage
## build workspace image
```
cd build
docker build -t xxx .
```

## create secret
```
./create_tls_secret.sh <workspace name>
```

## create workspace
```
helm repo add https://mu853.github.io/workspace
helm install <workspace name> workspace/java
```

## check vip address
```
kubectl get svc --selector app=<workspace name>
```

## access workspace
```
open browser with url "https://<vip>:8443/"
```

## clone git repository

## git settings
```
git clone xxxx
git config --global credential.helper store --file /config/.mycred
git config --global user.name xxxx
git config --global user.emal xxxx
```
