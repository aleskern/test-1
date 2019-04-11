page 50101 "Warning Level List"
{

    PageType = List;
    SourceTable = "Warning Level";
    Caption = 'Warning Level List';
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Warning Level Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Warning Level"; "Warning Level")
                {
                    ApplicationArea = All;
                }
                field("Amount"; "Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
