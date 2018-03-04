const HBXToken = artifacts.require('./HBXToken.sol');

module.exports = function(deployer, network, accounts) {
  return createDeploy(deployer, accounts);
};

function createDeploy(deployer, accounts) {

  const accountToDeploy = accounts[0];
  console.log("Deploy to account ===>");

  return deployer.deploy(HBXToken, accountToDeploy).then( async () => {
    const instance = await HBXToken.deployed();
    console.log('HBXToken Address ===>', instance.address);
  })
}