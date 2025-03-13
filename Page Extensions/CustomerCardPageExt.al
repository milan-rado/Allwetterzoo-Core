pageextension 50100 CustomerCardPageExt extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(TierPatenschaftGroup)
            {
                Caption = 'Animal sponsorship';
                field("Paten Name"; Rec."Paten Name")
                {
                    ApplicationArea = All;
                }
                field("Paten Anschrift"; Rec."Paten Anschrift")
                {
                    ApplicationArea = All;
                }
                field(PLZ; Rec.PLZ)
                {
                    ApplicationArea = All;
                }
                field(Ort; Rec.Ort)
                {
                    ApplicationArea = All;
                }
                field("Paten eMail"; Rec."Paten eMail")
                {
                    ApplicationArea = All;
                }
                field("Pate Telefon"; Rec."Pate Telefon")
                {
                    ApplicationArea = All;
                }
                field("Pantenschaft aktiv"; Rec."Pantenschaft aktiv")
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