
# Hierarchical Aggregation in Federated Learning

Read the Research Proposal and BlockFed Notes to get an idea about the thought process and concrete proposal.


## Authors

- [Aryan Shukla](https://www.github.com/aryannewyork)


## Deployment

To deploy this project run the following on Ubuntu 22.04 LTS (Linux)

- Make sure to install ngrok and ganache-cli to continue
- Upload the dataset *swarm-aligned* and smart contract *Main.sol* to the drive (or local storage)
- Add the correct links of dataset and smart contract in the ipynb

```bash
    ganache-cli -d
```
- It should look something like this

![image](https://github.com/aryannewyork/BlockFed/assets/79625246/cfba5b10-16db-4e36-9b79-39240f84d296)

```bash
ngrok http 8545
```
- It should look something like this

![image](https://github.com/aryannewyork/BlockFed/assets/79625246/8376272b-24ad-47fb-81be-72a8e4827f98)

- After running the ganache server tunneled through ngrok, paste the *Forwarding* link in **SmartContractInteraction.ipynb** It should look somethinglike this,

![image](https://github.com/aryannewyork/BlockFed/assets/79625246/d51c8c8a-c85d-4bfc-a644-519df119e82e)

- Download the dataset from https://archive.ics.uci.edu/dataset/524/swarm+behaviour 
- The dataset has been preprocessed, here is the preprocessed dataset [link](https://drive.google.com/drive/folders/1sJ7UoPXQ7KbI1SZ4J53Nm6QdIoNxL339?usp=drive_link)
