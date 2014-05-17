package com.threestar

class Request implements Serializable {

    private static final NIL_DATE = new Date(0)

    String countryCode
    String phoneNumber
    String requestDate

    static constraints = {
        phoneNumber nullable: false, unique: true
        countryCode nullable: false, minSize: 1, maxSize: 3
    }

    def beforeInsert() {
        if (requestDate == NIL_DATE) {
            requestDate = new Date()
        }
    }
}
