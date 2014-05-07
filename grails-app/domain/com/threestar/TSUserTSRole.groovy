package com.threestar

import org.apache.commons.lang.builder.HashCodeBuilder

class TSUserTSRole implements Serializable {

	private static final long serialVersionUID = 1

	TSUser TSUser
	TSRole TSRole

	boolean equals(other) {
		if (!(other instanceof TSUserTSRole)) {
			return false
		}

		other.TSUser?.id == TSUser?.id &&
			other.TSRole?.id == TSRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (TSUser) builder.append(TSUser.id)
		if (TSRole) builder.append(TSRole.id)
		builder.toHashCode()
	}

	static TSUserTSRole get(long TSUserId, long TSRoleId) {
		TSUserTSRole.where {
			TSUser == TSUser.load(TSUserId) &&
			TSRole == TSRole.load(TSRoleId)
		}.get()
	}

	static TSUserTSRole create(TSUser TSUser, TSRole TSRole, boolean flush = false) {
		new TSUserTSRole(TSUser: TSUser, TSRole: TSRole).save(flush: flush, insert: true)
	}

	static boolean remove(TSUser u, TSRole r, boolean flush = false) {

		int rowCount = TSUserTSRole.where {
			TSUser == TSUser.load(u.id) &&
			TSRole == TSRole.load(r.id)
		}.deleteAll()

		rowCount > 0
	}

	static void removeAll(TSUser u) {
		TSUserTSRole.where {
			TSUser == TSUser.load(u.id)
		}.deleteAll()
	}

	static void removeAll(TSRole r) {
		TSUserTSRole.where {
			TSRole == TSRole.load(r.id)
		}.deleteAll()
	}

	static mapping = {
		id composite: ['TSRole', 'TSUser']
		version false
	}
}
