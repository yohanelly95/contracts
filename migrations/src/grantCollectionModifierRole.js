// grantCollectionModifierRole.js
const { ethers } = require('hardhat');

async function main() {
  const addressToGrant = '0x8088663604E9Bd8656d5efA7Cf66a3A4fD17771A';

  // Get the contract factory
  const Contract = await ethers.getContractFactory('CollectionManager');

  const contractAddress = '0xFe8627C79E85447c3ea643F388613D5E69C8Ca4a';

  // Get the deployed contract instance
  const contract = await Contract.attach(contractAddress);

  // keccak256("COLLECTION_MODIFIER_ROLE")
  const COLLECTION_MODIFIER_ROLE = '0xa3a75e7cd2b78fcc3ae2046ab93bfa4ac0b87ed7ea56646a312cbcb73eabd294';

  console.log(`Granting COLLECTION_MODIFIER_ROLE to ${addressToGrant}`);

  // Grant the role
  const tx = await contract.grantRole(COLLECTION_MODIFIER_ROLE, addressToGrant);

  // Wait for the transaction to be mined
  await tx.wait();

  console.log(`Role granted. Transaction hash: ${tx.hash}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
