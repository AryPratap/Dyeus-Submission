pragma solidity ^0.8.7;

contract Test {
    int user_input;
    uint randNonce = 0;
    int score = 0;
    function randMod(uint _modulus) internal returns(uint)
    {
        randNonce++; 
        return uint(keccak256(abi.encodePacked(now,
                                          msg.sender,
                                          randNonce))) % _
                                          modulus;
    }
    int computer_value = randMod();
    function get() public view returns (int) {
        if (user_input!=computer_value){
            score = score + computer_value;
            return (computer_value,"RUNS");
        }
        else{
            return (score,"OUT");
        }
    }
}

