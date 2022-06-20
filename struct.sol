//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract structexplain{
    //defining a strcut with properties
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car[] public cars;

    function examples() external{
        //different ways of creating an object and initializing attributes
        Car memory toyota = Car("Fortuner", 1996, msg.sender);
        Car memory lambo = Car({year: 2022, model: "Veneno", owner: msg.sender});
        Car memory tesla;
        tesla.model = "3";
        tesla.year = 2019;
        tesla.owner = msg.sender;

        //storing cars in array of struct
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
        cars.push(Car("Ferrari", 1978, msg.sender));


        //modifying objects needs copying them in storage
        Car storage _car = cars[0];
        _car.year = 2003;
        delete _car.owner;
        
        delete cars[1];
    }
}