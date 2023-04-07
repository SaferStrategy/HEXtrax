# HEXtrax - My Ethereum Tracking Webapp

HEXtrax is a web app to track Ethereum wallets transactions for buys, sells, and interacting with staking contracts for HEX crypto. We're using Vagrant to manage our dev and prod environments on Ubuntu VMs, with all the cool tools and technologies listed below.

## Requirements

- Vagrant
- VirtualBox
- Git
- Python
- JavaScript
- PostgreSQL
- MongoDB
- Elasticsearch
- Logstash
- Kibana
- Grafana
- Geth
- Web3.py
- Solidity compiler
- Infura
- Ansible
- Jenkins

## Getting Started

1. Install [Vagrant](https://www.vagrantup.com/downloads) using Homebrew: `brew install hashicorp/tap/hashicorp-vagrant`

2. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) on your machine.

3. Clone this repository: `git clone https://github.com/yourusername/your-repo.git`

4. Navigate to the project directory: `cd your-repo`

5. Start the VMs using Vagrant: `vagrant up`

## Progress

- [x] Set up the development environment using Vagrant and VirtualBox
- [ ] Develop the web app to track Ethereum wallet transactions
- [ ] Implement HEX price tracking since the launch of the oldest HEX/ETH pair on Uniswap
- [ ] Create a linear price chart for buy/sell/stake/unstake actions
- [ ] Store and sync relevant info in a quick and indexable database
- [ ] Calculate the true cost of assets including transaction fees
- [ ] Provide wallet value tracking in USD and Ethereum
- [ ] Implement commercial tax tracking with legal tax avoidance suggestions
- [ ] Leverage AI-API

## Directory Structure
```
HEXtrax/
|-- Vagrantfile
|-- README.md
|-- master_script.sh
|-- ansible/
|   |-- playbook.yml
|   |-- roles/
|   |   |-- web/
|   |   |   |-- tasks/
|   |   |   |-- templates/
|   |   |   |-- files/
|   |   |-- db/
|   |   |   |-- tasks/
|   |   |   |-- templates/
|   |   |   |-- files/
|-- app/
|   |-- backend/
|   |   |-- api/
|   |   |-- services/
|   |   |-- utils/
|   |   |-- config/
|   |   |-- tests/
|   |-- frontend/
|   |   |-- src/
|   |   |   |-- components/
|   |   |   |-- views/
|   |   |   |-- utils/
|   |   |   |-- styles/
|   |   |-- public/
|   |   |-- config/
|   |   |-- tests/
|-- scripts/
|   |-- deploy.sh
|   |-- backup.sh
|-- jenkins/
|   |-- Jenkinsfile
```
