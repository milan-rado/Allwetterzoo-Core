tableextension 50100 CustomerTableExt extends Customer
{
    fields
    {
        field(50100; Pate; Text[200])
        {
            Caption = 'Sponsor (Name, Address)';
        }
        field(50101; Schenker; Text[200])
        {
            Caption = 'Donor (Name, Address)';
        }
        field(50102; "Unterlagen verschickt am"; Date)
        {
            Caption = 'Documents sent on';
        }
        field(50103; "Mailadresse und Telefonnummer"; Text[100])
        {
            Caption = 'E-mail address and telephone number of the sponsor';
        }
        field(50104; Verlangerung; Boolean)
        {
            Caption = 'Extension';
        }
        field(50105; "Pate seit"; Date)
        {
            Caption = 'Mentor since';
        }
        field(50106; "Pate hat ein Patenschild"; Boolean)
        {
            Caption = 'Sponsor has a sponsor sign';
        }
    }
}