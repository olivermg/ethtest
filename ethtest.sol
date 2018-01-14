pragma solidity ^0.4.19;

contract Sample
{
	uint256 data;
	address owner;
	event logData(uint256 dataToLog);

	modifier onlyOwner() {
		assert(msg.sender == owner);
		_;
	}

	function Sample(uint256 initData, address initOwner) public {
		data = initData;
		owner = initOwner;
	}

	function getData() public constant returns (uint256) {
		return data;
	}

	function setData(uint256 newData) onlyOwner public {
		logData(newData);
		data = newData;
	}
}
