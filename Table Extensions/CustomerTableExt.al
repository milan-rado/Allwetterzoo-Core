tableextension 50100 CustomerTableExt extends Customer
{
    fields
    {
        field(50100; "Paten Name"; Text[100])
        {
            Caption = 'Sponsor Name';
        }
        field(50101; "Paten Anschrift"; Text[100])
        {
            Caption = 'Sponsor Address';
        }
        field(50102; PLZ; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = if ("Country/Region Code" = const('')) "Post Code"
            else
            if ("Country/Region Code" = filter(<> '')) "Post Code" where("Country/Region Code" = field("Country/Region Code"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                OnBeforeLookupPLZ(Rec, PostCode);

                PostCode.LookupPostCode(City, "Post Code", County, "Country/Region Code");

                OnAfterLookupPLZ(Rec, xRec, PostCode);
            end;

            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                IsHandled := false;
                OnBeforeValidatePLZ(Rec, PostCode, CurrFieldNo, IsHandled);
                if not IsHandled then
                    PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);

                AltCustVATRegFacade.CheckCustomerConsistency(Rec);

                OnAfterValidatePLZ(Rec, xRec);
            end;
        }
        field(50103; Ort; Text[30])
        {
            Caption = 'City';
            OptimizeForTextSearch = true;
            TableRelation = if ("Country/Region Code" = const('')) "Post Code".City
            else
            if ("Country/Region Code" = filter(<> '')) "Post Code".City where("Country/Region Code" = field("Country/Region Code"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                OnBeforeLookupOrt(Rec, PostCode);

                PostCode.LookupPostCode(City, "Post Code", County, "Country/Region Code");

                OnAfterLookupOrt(Rec, PostCode);
            end;

            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                IsHandled := false;
                OnBeforeValidateOrt(Rec, PostCode, CurrFieldNo, IsHandled);
                if not IsHandled then
                    PostCode.ValidateCity(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);

                AltCustVATRegFacade.CheckCustomerConsistency(Rec);

                OnAfterValidateOrt(Rec, xRec);
            end;
        }
        field(50104; "Paten eMail"; Text[80])
        {
            Caption = 'Sponsor Email';
            ExtendedDatatype = EMail;
            trigger OnValidate()
            var
                MailManagement: Codeunit "Mail Management";
            begin
                MailManagement.CheckValidEmailAddresses("Paten eMail");
            end;
        }

        field(50105; "Pate Telefon"; Text[30])
        {
            Caption = 'Sponsor Phone No.';
            ExtendedDatatype = PhoneNo;
            trigger OnValidate()
            var
                TyperHelper: Codeunit "Type Helper";
            begin
                if not TyperHelper.IsPhoneNumber("Pate Telefon") then
                    FieldError("Pate Telefon", PhoneNoCannotContainLettersErr);
            end;
        }
        field(50106; "Pantenschaft aktiv"; Boolean)
        {
            Caption = 'Active Pantenschaft';
        }
        field(50107; Schenker; Text[200])
        {
            Caption = 'Donor (Name, Address)';
        }
        field(50108; "Unterlagen verschickt am"; Date)
        {
            Caption = 'Documents sent on';
        }
        field(50109; Verlangerung; Boolean)
        {
            Caption = 'Extension';
        }
        field(50110; "Pate seit"; Date)
        {
            Caption = 'Mentor since';
        }
        field(50111; "Pate hat ein Patenschild"; Boolean)
        {
            Caption = 'Sponsor has a sponsor sign';
        }
    }
    var
        PostCode: Record "Post Code";
        AltCustVATRegFacade: Codeunit "Alt. Cust. VAT. Reg. Facade";
        PhoneNoCannotContainLettersErr: Label 'must not contain letters';

    [IntegrationEvent(false, false)]
    local procedure OnBeforeLookupPLZ(var Customer: Record Customer; var PostCodeRec: Record "Post Code")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterLookupPLZ(var Customer: Record Customer; xCustomer: Record Customer; var PostCodeRec: Record "Post Code")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidatePLZ(var Customer: Record Customer; var PostCodeRec: Record "Post Code"; CurrentFieldNo: Integer; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidatePLZ(var Customer: Record Customer; xCustomer: Record Customer)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeLookupOrt(var Customer: Record Customer; var PostCodeRec: Record "Post Code")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterLookupOrt(var Customer: Record Customer; var PostCodeRec: Record "Post Code")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidateOrt(var Customer: Record Customer; var PostCodeRec: Record "Post Code"; CurrentFieldNo: Integer; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidateOrt(var Customer: Record Customer; xCustomer: Record Customer)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidatePatenEmail(var Customer: Record Customer; var IsHandled: Boolean; xCustomer: Record Customer)
    begin
    end;

}