package com.sexingtechnologies

class Invdetail {

	String location
	String bullCode
	String bullName
	String ownCode
	String ownName
	String gender
	String tank
	String section
	Long   canister
	String bulkLocation
	String expCode
	Date   collDate
	String collCode
	String strawColor
	String concentration
	String container
	String pkg
	Long   qtyCo
	Long   qtyOh
	String lastUser
	Date   lastUpdt

	static mapping = { // camelCased DB column names mapped to class properties.
		version false
        bullCode        column: 'BullCode'
        bullName        column: 'BullName'
        ownCode         column: 'OwnCode'
        ownName         column: 'OwnName'
        bulkLocation    column: 'BulkLocation'
        expCode         column: 'ExpCode'
        collDate        column: 'CollDate'
        collCode        column: 'CollCode'
        strawColor      column: 'StrawColor'
        qtyCo           column: 'QtyCo'
        qtyOh           column: 'QtyOh'
        lastUser        column: 'LastUser'
        lastUpdt        column: 'LastUpdt'
	}

	static constraints = {
		location maxSize: 3
		bullCode maxSize: 10
		bullName maxSize: 37
		ownCode maxSize: 8
		ownName maxSize: 32
		gender maxSize: 5
		tank maxSize: 9
		section nullable: true, maxSize: 2
		bulkLocation nullable: true, maxSize: 6
		expCode maxSize: 9
		collDate nullable: true, maxSize: 10
		collCode maxSize: 10
		strawColor maxSize: 6
		concentration nullable: true, maxSize: 4
		container maxSize: 6
		pkg maxSize: 2
		lastUser maxSize: 12
		lastUpdt nullable: true, maxSize: 10
	}
}
