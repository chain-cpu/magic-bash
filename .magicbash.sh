export PATH="$HOME/.poetry/bin:$PATH"
nvm alias default node
function mig () {
	cp -r $1 temp_$2
	sudo rm -r temp_$2/.git
	sudo cp -r $2/.git temp_$2
	# sudo rm -r $2
	cp -r temp_$2/* $2
	sudo rm -r temp_$2
}

function sshadd() {
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519zen
}

function sshcpuadd() {
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519
}
function sshbugadd() {
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519_elitebug0
}
function sshgeraldadd() {
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa_gerald
}

function gitgerald() {
	git config --global user.name "gerald.chainlab"
	git config --global user.email "gerald.chainlab@gmail.com"
}

function gitcpu() {
	git config --global user.name "chain-cpu"
	git config --global user.email "earth04190419@gmail.com"
}

function gitzen() {
	git config --global user.name "zenius-davinch"
	git config --global user.email "zenius.davinch@gmail.com"
}
function gitbug() {
	git config --global user.name "elitebug0"
	git config --global user.email "elitebug0@gmail.com"
}


function connectaws() {
	ssh -i ~/.ssh/server.pem ubuntu@54.195.131.208
}
function multisig_new_tx(){
	./rs-cli tx new --multisig $1 ./mock_ixs.json
}
function multisig_new() {
	./rs-cli multisig new --owners J8BgNYUopyJTTU78TFJh3N2fNDyf3UqfojR5f8VcZ3Po,FkTwZVNkjb2YbJomz9mReApNCMN672zsznptHusoDPRJ,DL8TDS2vMrYJqxvLcxk57HNdkP9SQWdpR9iMas4P2WUH --threshold 2 
}
function multisig_show() {
	./rs-cli multisig show $1
}
function multisig_showowned() {
	./rs-cli multisig show-owned
}

function rt () {
	cargo build
	./rs-cli multisig new -t 100
}

function connectec2() {
	dev zk
	ssh -i ./server.pem	ubuntu@54.216.111.98
}
function cleandocker() {
	sudo sh -c "truncate -s 0 /var/lib/docker/containers/*/*-json.log"
}
function ex() {
	cd /home/earth/snap/exercism/5/exercism/rust/$1
}
function mj()
{
	cp -r ~/dev/magnety/contract/contracts/* ~/dev/magnety/contract_with_js/contracts/
}

function voyager()
{
	 docker run -itd --name=voyager -p 8800:8800 -e STARKNET_ENDPOINT=$1  ghcr.io/demerzelsolutions/voyager:latest
}
function docker-starknet()
{
	docker run -p 127.0.0.1:5050:5050 shardlabs/starknet-devnet
}
function dp()
{
	declare SithSwapV1Pair
}
function df()
{
	declare SithSwapV1Fees
}

# function declare()
# {
# 	starknet declare --contract starknet-artifacts/contracts/$1.cairo/$1.json --gateway_url http://localhost:5050
# }
function tm()
{
	npx hardhat --network localhost test ./test/math/**.ts --parallel
}
function hrr()
{
	npx hardhat run scripts/0_*.ts
}
function hz()
{
	hc
	htt
}

function ht()
{
	npx hardhat test test/$1_*.ts
}
function htt()
{
	npx hardhat test test/0_*.ts
}
function hcc()
{
	npx hardhat run scripts/compile-specific-contracts.ts
}
function hc()
{
	npx hardhat run scripts/compile-contract.ts
}
function hr()
{
	npx hardhat run scripts/$1.ts
}
function bt()
{
	rm -r .pytest_cache
	nile clean
	clear
	bin/test
}

function bc()
{
	bin/compile
}
# hardhat
function csize() {
	npx hardhat size-contracts
}

# avalanch
function avash() {
	~/avalanchego
}
function avashsample () {
	git clone https://github.com/ava-labs/avalanche-smart-contract-quickstart.git $1
	cd $1
	yarn
}
# anchor template
function anchorsample() {
	git clone git@github.com:chain-cpu/anchor-escrow.git $1
	
}

# cairo

function cc() {
	cairo-compile $1.cairo \
    --output $1_compiled.json 
}

function crun() {
	cairo-run \
		--program=$1_compiled.json --print_output \
		--print_info --layout=small
}

# function starkdeploy() {
# 	starknet deploy --contract $1_compiled.json --inputs $2 $3
# }
# function starkc() {
# 	starknet-compile $1.cairo \
#     --output $1_compiled.json \
#     --abi $1_abi.json --account_contract
# }
# function starktx() {
# 	starknet tx_status --hash $1
# }
# function starkerrtx() {
# 	starknet tx_status --hash $2 --contracts ${CONTRACT_ADDRESS}:$1_compiled.json --error_message
# }
# function starktxdetail() {
# 	starknet get_transaction --hash $1
# }
# function starkcall() {
# 	starknet call \
# 		--address ${CONTRACT_ADDRESS} \
# 		--abi $1_abi.json \
# 		--function $2 \
# 		--inputs $3 $4 $5 $6
# }
# function starkinvoke() {
# 	starknet invoke \
# 		--address ${CONTRACT_ADDRESS} \
# 		--abi $1_abi.json \
# 		--function $2 \
# 		--inputs $3 $4 $5 $6 $7
# }
# function starkzfinvoke() {
# 	starknet invoke \
# 		--address ${CONTRACT_ADDRESS} \
# 		--abi $1_abi.json \
# 		--function $2 \
# 		--inputs $3 $4 $5 $6 $7 \
# 		--max_fee 0
# }

function cairoenv() {
	source ~/cairo_venv/bin/activate
}
# update bash to github
function updatebash() {
	mkdir ~/.mytemp
	cd ~/.mytemp
	cp ~/.magicbash.sh ~/.mytemp/.magicbash.sh
	git init
	git remote add origin git@github.com:chain-cpu/magic-bash.git
	git add .
	git commit -m "update"
	git checkout -b main
	git push origin main --force
	cd -
	sudo rm -r ~/.mytemp
}
# setup pro-bash env
function setup_env() {
	install_snippets
}

# save vscode snippets
function installsnippet() {
	mkdir ~/.config/Code/User/snippets
	cd ~/.config/Code/User/snippets
	git init
	git remote add origin git@github.com:chain-cpu/vscode-snippets.git
	git checkout -b main
	git pull origin main
	cd -	
}
function savesnippet() {
	cd ~/.config/Code/User/snippets/
	git init
	git remote add origin git@github.com:chain-cpu/vscode-snippets.git
	git checkout -b main

	git add .
	git commit -m "update snippets"
	git push origin main --force
	cd -
}

#solana
function swcat () {
	cat ~/.config/solana/$1.json
}
function swto () {
	solana config set -k ~/.config/solana/$1.json
}
function swnew() {
	solana-keygen new -o ~/.config/solana/$1.json
}
function saddr () {
	solana-keygen pubkey
}
function sget() {
	solana config get
}
function surito() {
	solana config set --uri $1
}

# github
function gu () {
	git add .
	git commit -m "$1"
	git push origin $2
}
#truffle script
function tloc() {
	truffle migrate --reset
}
# hardhat runscript
function locrun() {
	npx hardhat run scripts/run.js
}
function netrun() {
	npx hardhat run scripts/run.js --network $1
}
function rinkrun() {
	netrun rinkeby
}
function deploy() {
 	npx hardhat run scripts/deploy.js --network $1
}

# dev browsing
function dev(){
	cd ~/dev/$1
}

function tutorial(){
	cd ~/dev/tutorial/$1
}

# bash
function editbash(){
	code ~/.magicbash.sh
}

function savebash(){
	source ~/.magicbash.sh
}

# cardano
function cadatestnode(){
cardano-node run \
--config $HOME/cardano/testnet-config.json \
--database-path $HOME/cardano/db/ \
--socket-path $HOME/cardano/db/test/node.socket \
--host-addr 127.0.0.1 \
--port 1337 \
--topology $HOME/cardano/testnet-topology.json
}
