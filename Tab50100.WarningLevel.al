table 50100 "Warning Level"
{
    DataClassification = CustomerContent;
    LookupPageId = "Warning Level List";
    fields
    {
        field(1; "Warning Level"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = None,Low,High;
            OptionCaption = 'None,Low,High';

        }
        field(2; Amount; Decimal)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Warning Level")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}