#!/bin/sh
###############
# run_electrumxqtum
###############

# configure electrumxqtum
export COIN=BitcoinSegwit
export DAEMON_URL=http://rpcuser:rpcpassword@127.0.0.1
export NET=mainnet
export CACHE_MB=400
export DB_DIRECTORY=/home/username/.electrumxqtum/db
export SSL_CERTFILE=/home/username/.electrumxqtum/certfile.crt
export SSL_KEYFILE=/home/username/.electrumxqtum/keyfile.key
export BANNER_FILE=/home/username/.electrumxqtum/banner
export DONATION_ADDRESS=your-donation-address

# connectivity
export HOST=
export TCP_PORT=50001
export SSL_PORT=50002

# visibility
export REPORT_HOST=hostname.com
export RPC_PORT=8000

# run electrumxqtum
ulimit -n 10000
/usr/local/bin/electrumxqtum_server 2>> /home/username/.electrumxqtum/electrumxqtum.log >> /home/username/.electrumxqtum/electrumxqtum.log &

######################
# auto-start electrumxqtum
######################

# add this line to crontab -e
# @reboot /path/to/run_electrumxqtum.sh
