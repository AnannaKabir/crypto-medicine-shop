pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/buying.sol";

contract TestAdoption {

 Adoption adoption = Adoption(DeployedAddresses.Adoption());

 uint expectedPetId = 8;
 address expectedAdopter = address(this);
 

function testUserCanAdoptPet() public {
  uint returnedId = adoption.adopt(expectedPetId);

  Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned.");
}


function testGetAdopterAddressByPetId() public {
  address adopter = adoption.buyers(expectedPetId);

  Assert.equal(adopter, expectedAdopter, "Owner of the expected pet should be this contract");
}

function testGetAdopterAddressByPetIdInArray() public {
  // Store buyers in memory rather than contract's storage
  address[16] memory buyers = adoption.getAdopters();

  Assert.equal(buyers[expectedPetId], expectedAdopter, "Owner of the expected pet should be this contract");
}

}
