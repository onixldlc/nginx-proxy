# nginx-proxy

a simple nginx https proxy for mcs

# Running

### setup
to run the project you first need to set up the ssl with the `setup-ssl.sh` script by running
```sh
# allow script to be run
chmod u+x setup-ssl.sh

# generate cert and key
./setup-ssl.sh
```

### configure
to configure which port to what port you modify the `nginx.conf` file

### run
and now to start the nginx you can just run docker compose with this command
```
docker compose up -d
```
