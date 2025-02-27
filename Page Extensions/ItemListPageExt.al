pageextension 50101 ItemListPageExt extends "Item List"
{
    layout
    {

    }
    trigger OnOpenPage()
    var

    begin
        Message('In');
        Rec.SetRange(Rec.Blocked, false);
    end;
}