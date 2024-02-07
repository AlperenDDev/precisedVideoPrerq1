@RestResource(urlMapping='/todo/*')
global with sharing class ToDoManager {
    //nordicc-dev-ed.develop.my.salesforce.com/services/apexrest/todo/*
    @HttpGet
    global static List<ToDoWrapper> getToDos(){
        RestRequest request = RestContext.request;
        List<ToDo__c> todos = [SELECT Name, ToDo_Id__c, Completed__c, User_Id__c FROM ToDo__c];
        List<ToDoWrapper> wraps = ToDoHelper.convertToWrapper(todos);
        return wraps;
    }

    @HttpPost
    global static List<ToDoWrapper> postToDos(){
        RestRequest request = RestContext.request;
        String jsonString = request.requestBody.toString();
        List<ToDoWrapper> wraps = (List<ToDoWrapper>)JSON.deserialize(jsonString, List<ToDoWrapper>.class);
        List<ToDo__c> todos = ToDoHelper.convertToSobject(wraps);
        insert todos;
        return ToDoHelper.convertToWrapper(todos);
    }
}