pageextension 50101 "CustCardExt" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("Warning Level"; "Warning Level")
            {
                ApplicationArea = All;
            }
        }
    }
}