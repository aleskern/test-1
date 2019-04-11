page 50100 "Warning Level Card"
{

    PageType = Card;
    SourceTable = "Warning Level";
    Caption = 'Warning Level Card';

    layout
    {
        area(content)
        {
            group(General)
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
