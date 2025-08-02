// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract DAOTreasury {
    address public owner;
    mapping(address => bool) public members;
    uint public proposalCount;

    struct Proposal {
        string description;
        address payable recipient;
        uint amount;
        uint votes;
        bool executed;
        mapping(address => bool) voted;
    }

    mapping(uint => Proposal) public proposals;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier onlyMember() {
        require(members[msg.sender], "Not member");
        _;
    }

    constructor() {
        owner = msg.sender;
        members[msg.sender] = true;
    }

    receive() external payable {}

    function addMember(address _member) external onlyOwner {
        members[_member] = true;
    }

    function createProposal(string memory _desc, address payable _recipient, uint _amount) external onlyMember {
        require(address(this).balance >= _amount, "Insufficient funds");

        Proposal storage p = proposals[proposalCount++];
        p.description = _desc;
        p.recipient = _recipient;
        p.amount = _amount;
    }

    function vote(uint _id) external onlyMember {
        Proposal storage p = proposals[_id];
        require(!p.voted[msg.sender], "Already voted");
        require(!p.executed, "Already executed");

        p.votes++;
        p.voted[msg.sender] = true;
    }

    function execute(uint _id) external onlyMember {
        Proposal storage p = proposals[_id];
        require(!p.executed, "Already executed");
        require(p.votes >= 2, "Not enough votes");

        p.executed = true;
        p.recipient.transfer(p.amount);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
