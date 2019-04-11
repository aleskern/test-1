pageextension 50102 "CustListExt" extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field("Warning Level"; "Warning Level")
            {
                ApplicationArea = All;
            }
        }
    }

    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;
}