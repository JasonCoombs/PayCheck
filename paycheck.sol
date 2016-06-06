contract owned {
    function owned() {
        owner = msg.sender;
    }
    modifier onlyowner() {
        if (msg.sender == owner)
            _
    }
    address public owner;
}

contract PayCheck is owned {

    uint public expiration = now + 1 weeks;
    uint public value = 10000000000000000000;

    function changeOwner(address _newOwner) onlyowner  {
        owner = _newOwner;
    }

    function Redeem() onlyowner {
        if (block.timestamp > expiration) {

        msg.sender.send(value);
        expiration = now + 1 weeks;

        }
    }
}
