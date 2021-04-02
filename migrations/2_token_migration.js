const Token = artifacts.require("Migrations");

module.exports = function (deployer) {
  await deployer.deploy(Token);
  let tokenInstance = await Tokern.deployed();
  await tokenInstance.mint(100, 200, 100000); // Token id 0
};
