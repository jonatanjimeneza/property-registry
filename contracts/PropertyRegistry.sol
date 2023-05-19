// SPDX-License-Identifier: MIT


pragma solidity ^0.8.9;

/**
 * @title PropertyRegistry
 * @dev Contrato de registro de propiedades que permite a los propietarios registrar, transferir y consultar propiedades.
 */
contract PropertyRegistry {
    struct Property {
        address owner;
        string name;
        string location;
        uint value;
    }

    mapping(uint => Property) public properties;
    uint public propertyCount;

    event PropertyRegistered(uint indexed id, address indexed owner, string name, string location, uint value);
    event PropertyTransferred(uint indexed id, address indexed previousOwner, address indexed newOwner);
    
    /**
     * @dev Registra una nueva propiedad.
     * @param _name Nombre de la propiedad.
     * @param _location Ubicación de la propiedad.
     * @param _value Valor de la propiedad.
     */
    function registerProperty(string memory _name, string memory _location, uint _value) public {
        propertyCount++;
        properties[propertyCount] = Property(msg.sender, _name, _location, _value);
        emit PropertyRegistered(propertyCount, msg.sender, _name, _location, _value);
    }

    /**
     * @dev Transfiere la propiedad a un nuevo propietario.
     * @param _propertyId Identificador de la propiedad a transferir.
     * @param _newOwner Dirección del nuevo propietario.
     */
    function transferProperty(uint _propertyId, address _newOwner) public {
        require(properties[_propertyId].owner == msg.sender, "You are not the owner of this property.");
        properties[_propertyId].owner = _newOwner;
        emit PropertyTransferred(_propertyId, msg.sender, _newOwner);
    }

    /**
     * @dev Obtiene la información de una propiedad específica.
     * @param _propertyId Identificador de la propiedad.
     * @return owner Dirección del propietario de la propiedad.
     * @return name Nombre de la propiedad.
     * @return location Ubicación de la propiedad.
     * @return value Valor de la propiedad.
     */
    function getPropertyInfo(uint _propertyId) public view returns (address owner, string memory name, string memory location, uint value) {
        Property storage property = properties[_propertyId];
        return (property.owner, property.name, property.location, property.value);
    }

    /**
     * @dev Obtiene el número total de propiedades registradas.
     * @return propertyCount Número total de propiedades registradas.
     */
    function getPropertyCount() public view returns (uint) {
        return propertyCount;
    }
}
