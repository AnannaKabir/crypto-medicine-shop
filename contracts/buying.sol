pragma solidity ^0.5.0;

contract Buy{
address[16] public buyers;



function Medbuy(uint medId) public returns (uint) {
  require(medId >= 0 && medId <= 15);
  buyers[medId] = msg.sender;
  return medId;
}


function getBuyers() public view returns (address[16] memory) {
  return buyers;
}
}

