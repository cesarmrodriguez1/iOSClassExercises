//
//  Contact.swift
//  ContactsApp
//
//  Created by César on 16/02/21.
//

import Foundation

//This is the Model Class for Contacts in our app:

class Contact{
    var avatarName: String
    var personName: String
    
    init(avatarName: String, personName: String)
    {
        self.avatarName = avatarName
        self.personName = personName
    }
    
}
