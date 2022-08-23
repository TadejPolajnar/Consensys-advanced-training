const ERC20Token = artifacts.require('ERC20Token');

contract('ERC20Token', (accounts) => {
  let erc20Token;

  const TOKEN_NAME = "Workshop Token";
  const TOKEN_SYMBOL = "WSP";
  const admin = accounts[0];

  beforeEach(async () => {
    erc20Token = await ERC20Token.new();
  });

  it('should have name and symbol as set', async () => {
  });

  it('should have set the owner correctly', async () => {
  });

  it('should have decimals set as 18', async () => {
  });

  it('only owner should mint tokens successfully', async () => {
  });

  it('should not allow non-owner to mint tokens', async () => {
  });

  it('should transfer tokens from one account to another successfully', async () => {
  });

});