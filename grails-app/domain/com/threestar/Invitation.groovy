package com.threestar

class Invitation implements Serializable {

    private static final NIL_DATE = new Date(0)

    String countryCode
    String phoneNumber
    String code
    User invitedBy
    Date createdDate = NIL_DATE
    Date validDate = NIL_DATE
    Date lastUpdate = NIL_DATE
    String status

    static constraints = {
        phoneNumber blank: false, unique: true
        countryCode blank: false, minSize: 1, maxSize: 3
        code blank: false
    }

    static hasMany = [payments: Payment]
    static mappedBy = [payments: "invitation"]

    static belongsTo = [invitedBy: User]

    def beforeInsert() {
        if (createdDate == NIL_DATE) {
            createdDate = new Date()
        }
    }

    def beforeUpdate() {
        if (validDate == NIL_DATE) {
            validDate = new Date()
        }
        lastUpdate = new Date()
    }
}
