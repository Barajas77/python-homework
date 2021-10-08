pragma solidity ^0.5.0;

// Import Mintable token here
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "./Gift_Coin_Mint.sol";

contract GiftTokenSale is Crowdsale, MintedCrowdsale {
    constructor(
        uint rate, 
        address payable wallet,
        GiftToken token
    )
        
        Crowdsale(rate, wallet, token)
        public
    {
        // Body of the contract
    }
}

contract GiftTokenSaleDeployer {
    
    address public gift_sale_address; 
    address public token_address;
    
    constructor(
        string memory name, 
        string memory symbol,
        address payable wallet
    )
        public
    {
        GiftToken token = new GiftToken(name, symbol, 0);
        token_address = address(token);
        
        GiftTokenSale gift_sale = new GiftTokenSale(1, wallet, token);
        gift_sale_address = address(gift_sale);
        
        token.addMinter(gift_sale_address);
        token.renounceMinter;
    }
    
}