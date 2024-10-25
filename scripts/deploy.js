
async function main() {
    const USDTTransactions = await ethers.getContractFactory("USDTTransactions");
    const usdt = await USDTTransactions.deploy();
    console.log("Contract deployed to address:", usdt.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
