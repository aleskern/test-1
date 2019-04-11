tableextension 50100 "CustExt" extends Customer
{
    fields
    {

        field(50100; "Warning Level"; Enum "Warning Level Enum")
        //field(50100; "Warning Level"; Option)
        {
            DataClassification = CustomerContent;
            //OptionMembers = None,Low,High;
            //OptionCaption = 'None,Low,High';
        }
    }
}
