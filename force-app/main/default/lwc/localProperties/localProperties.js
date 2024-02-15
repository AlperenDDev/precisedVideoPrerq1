import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name;
    fullName = "Alp";
    age = 27;
    isComplete = true
    location = {
        city: "Houston",
        country: "United States"
    };
    fruits = ["banana", "Grape", "Apple", "Dragon"];
}