// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Voting {
    // Structure to represent a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Structure to represent a voter
    struct Voter {
        bool isRegistered;
        bool hasVoted;
        uint votedFor;
    }

    address public admin; // Contract owner
    uint public candidatesCount; // Total number of candidates
    mapping(uint => Candidate) public candidates; // Mapping of candidate ID to candidate details
    mapping(address => Voter) public voters; // Mapping of voter's address to voter details

    // Events to notify front-end when certain actions occur
    event VoterRegistered(address voter);
    event CandidateAdded(uint candidateId, string candidateName);
    event VoteCast(address voter, uint candidateId);

    // Modifier to ensure only the admin can perform certain actions
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    // Modifier to check if the voter is registered
    modifier onlyRegisteredVoters() {
        require(voters[msg.sender].isRegistered, "Only registered voters can vote");
        _;
    }

    // Constructor to initialize the admin of the contract
    constructor() {
        admin = msg.sender;
    }

    // Function to add a new candidate (only admin can add)
    function addCandidate(string memory _name) public onlyAdmin {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
        emit CandidateAdded(candidatesCount, _name);
    }

    // Function to register a voter (only admin can register voters)
    function registerVoter(address _voter) public onlyAdmin {
        require(!voters[_voter].isRegistered, "Voter is already registered");
        voters[_voter] = Voter(true, false, 0);
        emit VoterRegistered(_voter);
    }

    // Function to vote for a candidate (only registered voters can vote)
    function vote(uint _candidateId) public onlyRegisteredVoters {
        require(!voters[msg.sender].hasVoted, "Voter has already voted");
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate ID");

        voters[msg.sender].hasVoted = true;
        voters[msg.sender].votedFor = _candidateId;
        candidates[_candidateId].voteCount++;

        emit VoteCast(msg.sender, _candidateId);
    }

    // Function to get a list of candidates (public view)
    function getCandidates() public view returns (Candidate[] memory) {
        Candidate[] memory candidateList = new Candidate[](candidatesCount);
        for (uint i = 1; i <= candidatesCount; i++) {
            candidateList[i - 1] = candidates[i];
        }
        return candidateList;
    }

    // Function to get the vote count for a candidate
    function getVoteCount(uint _candidateId) public view returns (uint) {
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate ID");
        return candidates[_candidateId].voteCount;
    }

    // Function to check if a voter is registered
    function isVoterRegistered(address _voter) public view returns (bool) {
        return voters[_voter].isRegistered;
    }

    // Function to check if a voter has voted
    function hasVoterVoted(address _voter) public view returns (bool) {
        return voters[_voter].hasVoted;
    }

    function contractAdmin()public view returns(address){
        return admin;
    }
    
}
