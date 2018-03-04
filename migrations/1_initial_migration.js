var Migrations = artifacts.require("./Migrations.sol");

module.exports = function(deployer, network, accounts) {
  console.log('Migrate to network ==>', network);
  console.log('All Account ==>', accounts);
  deployer.deploy(Migrations);
};