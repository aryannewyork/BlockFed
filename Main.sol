// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

contract Main {
    address payable public owner;

    constructor(){
        owner=payable(address(this));
    }
    
    uint[] private models;
    address [] public clients;
    mapping (address=>uint) public indexes;
    uint private constant n=20;
    uint [] public submodels;
    function makemeclient() public{
        clients.push(msg.sender);
        submodels.push(0);
        indexes[msg.sender]=clients.length-1;
    }
    function data_request() public payable{
        models.push(msg.value);
    }
    function data_post(uint ind, uint para) public returns(bool){
        submodels[indexes[msg.sender]]=para;
        return true;
    }
    function model_aggregation(uint ind) public returns(bool){
        require (2*indexes[msg.sender]+1<clients.length);
        submodels[indexes[msg.sender]]=submodels[2*indexes[msg.sender]]+submodels[2*indexes[msg.sender]+1];
        data_post(ind,submodels[indexes[msg.sender]]);
        return true;
    }
    function readindex(uint ind, uint i) public view returns(uint){
        return submodels[i];
    }
}