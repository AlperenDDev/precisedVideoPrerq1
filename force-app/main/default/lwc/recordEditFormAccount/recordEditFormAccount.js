import { LightningElement } from 'lwc';
import ACC_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordEditFormAccount extends LightningElement {
    objectName = ACC_OBJECT;
    recordId = "";
    fields = {
        name: NAME_FIELD,
        type: TYPE_FIELD,
        industry: INDUSTRY_FIELD,
        revenue: REVENUE_FIELD,
        phone: PHONE_FIELD,
        website: WEBSITE_FIELD
    };

    successHandler(){
        const successMessage = new ShowToastEvent({
            title: "Success",
            message: "Success on saving record. You save the world",
            variant: "success"
        })
        this.dispatchEvent(successMessage);
    }
}