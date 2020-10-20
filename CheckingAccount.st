Account subclass: CheckingAccount[

    init: n cust: c bal: b [
        num:=n.
        cust:=c.
        bal:=b.
    ]

    accrue: rate[
    ]
]