Object subclass: Account [
    |num|
    |cust|
    |bal|

    Account class [
        new: n cust: c bal: b [
            ^ super new init: n cust: c bal: b
        ]
    ]

    init: n cust: c bal: b [
        ^ self subclassResponsibility
    ]

    accrue: rate[
        ^ self subclassResponsibility
    ]

    balance [
        ^ bal
    ] 

    deposit: amount [
        bal:=bal+amount
    ]

    withdraw: amount[
        bal:=bal-amount
    ]

    toString [
        ^ num , ':' , (cust toString) , ':' , (bal asString)
    ]
]