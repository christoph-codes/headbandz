const main = async () => {
    // This will compile our contract and generate the necessary files we need to work with our contract under the artifcats directory.
    // This name must match the contract.sol file name.
    const nftContractFactory = await hre.ethers.getContractFactory('headbandzNFT');
    // Hardhat is creating a local Ethereum network for us but just for this contract.
    // After the script completes it'll destroy the local network.
    // So every time you run the contract it'll be a fresh blockchain. It's like refreshing your local server every time so you always start from a clean slate which makes it easy to debug.
    const nftContract = await nftContractFactory.deploy();
    // We will await the contract to be officially mined and deployed on the blockchain.
    // Hardhat creates faker miners on your machine to try its best to imitate the actual blockchain.
    await nftContract.deployed();
    // Once deployed this will give us the address of the deployed contract. 
    // This is how we can find our contract on the blockchain.
    console.log(`Deployed NFT contract at ${nftContract.address}`);

    // Call our function
    let txn = await nftContract.createHeadbandzNFT();
    // Wait for the NFT to be minted
    await txn.wait();
}

const runMain = async () => {
    try {
        await main();
        process.exit(0);
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
}

runMain();