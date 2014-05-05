package com.threestart

/**
 * User domain class
 * 
 * @author Hai Quach
 */
class User {
	
	String userId
	String password
	String firstname
	String lastname
	String phoneNumber
	Integer countryCode
	String email
	Date createDate
	String status

    static constraints = {
	}
	
	String toString () {
		"$lastName, $firstName"
	}
}
