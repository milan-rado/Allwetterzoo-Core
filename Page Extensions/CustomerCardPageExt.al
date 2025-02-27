pageextension 50100 CustomerCardPageExt extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(TierPatenschaftGroup)
            {
                Caption = 'Animal sponsorship';
                field(Pate; Rec.Pate)
                {
                    ApplicationArea = All;
                }
                field(Schenker; Rec.Schenker)
                {
                    ApplicationArea = All;
                }
                field("Unterlagen verschickt am"; Rec."Unterlagen verschickt am")
                {
                    ApplicationArea = All;
                }
                field("Mailadresse und Telefonnummer"; Rec."Mailadresse und Telefonnummer")
                {
                    ApplicationArea = All;
                }
                field(Verlangerung; Rec.Verlangerung)
                {
                    ApplicationArea = All;
                }
                field("Pate seit"; Rec."Pate seit")
                {
                    ApplicationArea = All;
                }
                field("Pate hat ein Patenschild"; Rec."Pate hat ein Patenschild")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}