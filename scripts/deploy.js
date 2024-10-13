async function main() {
  // Get the contract factory
  const Voting = await ethers.getContractFactory("Voting");

  // Deploy the contract and wait for it to be mined
  const votingContract = await Voting.deploy();

  console.log("Voting contract deployed to:", votingContract.address);
}

// Run the deploy script
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
