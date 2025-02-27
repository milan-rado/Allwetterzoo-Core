pageextension 50101 ItemListPageExt extends "Item List"
{
    layout
    {

    }
    trigger OnOpenPage()
    var

    begin
        Rec.SetRange(Rec.Blocked, false);
    end;
}