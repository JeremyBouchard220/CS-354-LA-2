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
        accounts do: [
            :test | test accrue: rate
        ]
    ]

    toString [
        |r| r:= ''.
        accounts do: [
            :test | r:=r, test toString, (Character nl asString)
        ].
        ^ r
    ]
]

|bank| bank:=Bank new.
|customer| customer:=Customer new: 'Jeremy'.
|checking| checking:=CheckingAccount new: '01001' cust: customer bal: 100.00.
bank add: checking.
|savings| savings:=SavingsAccount new: '01002' cust: customer bal: 200.00.
bank add: savings.
bank accrue: 0.02.
(bank toString) printNl.