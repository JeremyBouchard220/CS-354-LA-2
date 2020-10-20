Account subclass: SavingsAccount[
    |int|

    init: n cust: c bal: b [
        num:=n.
        cust:=c.
        bal:=b.
        int:=0.
    ]

    accrue: rate[
        int:=int+(bal*rate).
        bal:=bal+(bal*rate).
    ]
]