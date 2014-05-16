package com.threestar

class Role implements Serializable {

    String authority

    static mapping = {
        cache true
    }

    static constraints = {
        authority blank: false, unique: true
    }
}
