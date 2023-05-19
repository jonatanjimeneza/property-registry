const { expect } = require("chai");

describe("PropertyRegistry", function () {
  let propertyRegistry;
  let owner;

  beforeEach(async () => {
    const PropertyRegistry = await ethers.getContractFactory("PropertyRegistry");
    propertyRegistry = await PropertyRegistry.deploy();
    await propertyRegistry.deployed();

    // Obtén la cuenta propietaria
    [owner] = await ethers.getSigners();
  });

  it("should register a property", async function () {
    const name = "Property 1";
    const location = "Location 1";
    const value = 1000;

    await propertyRegistry.registerProperty(name, location, value);

    const propertyInfo = await propertyRegistry.getPropertyInfo(1);
    expect(propertyInfo.owner).to.equal(owner.address);
    expect(propertyInfo.name).to.equal(name);
    expect(propertyInfo.location).to.equal(location);
    expect(propertyInfo.value).to.equal(value);
  });

  it("should transfer property ownership", async function () {
    const newOwner = "0x70997970C51812dc3A010C7d01b50e0d17dc79C8"; // Reemplaza con la dirección de la nueva cuenta propietaria
    const name = "Property 1";
    const location = "Location 1";
    const value = 1000;

    await propertyRegistry.registerProperty(name, location, value);

    await propertyRegistry.transferProperty(1, newOwner);

    const propertyInfo = await propertyRegistry.getPropertyInfo(1);
    expect(propertyInfo.owner).to.equal(newOwner);
  });
});

