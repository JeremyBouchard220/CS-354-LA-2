Object subclass: Bank [
    |accounts|

    Bank class [
        new [
            ^super new init
        ]
    ]

    init [
        accounts:= Set new
    ]

    add: account [
        accounts add: account
    ]

    accrue: rate [
        accounts do [
            :test | test accrue: rate
        ]
    ]

    toString [
        |r| r:= ''.
        accounts do [
            :test | r:=r, test toString, (Character nl asString)
        ].
        ^ r
    ]
]

|Bank| Bank:=Bank new.
|Customer| Customer:=Customer new: 'Jeremy'.
Bank add: (CheckingAccount new: '01001' cust: Customer bal: 100.00).
Bank add: (SavingsAccount new: '01002' cust: Customer bal: 200.00).
Bank accrue: 0.02.
Bank toString.
printNl.