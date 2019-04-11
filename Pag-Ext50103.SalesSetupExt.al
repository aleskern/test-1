pageextension 50103 "SalesSetupExt" extends "Sales & Receivables Setup"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Navigation)
        {
            action("Warning Level")
            {
                ApplicationArea = All;
                RunObject = page "Warning Level List";
                Image = Warning;
            }
        }
    }
}