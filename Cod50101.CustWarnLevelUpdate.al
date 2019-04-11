codeunit 50101 "CustWarnLevelUpdate"
{
    trigger OnRun()
    begin
        UpdateAllWarningLevel();
    end;

    procedure UpdateAllWarningLevel()
    var
        Cust: Record Customer;
    begin
        if Cust.FindSet() then repeat
                                   UpdateCustWarnLevel(Cust);
            until Cust.Next() = 0;
    end;

    procedure UpdateCustWarnLevel(Cust: Record Customer)
    var
        WarnLevel: record "Warning Level";
    begin
        Cust.CalcFields("Balance (LCY)");
        WarnLevel.SetFilter(Amount, '<=%1', Cust."Balance (LCY)");
        if WarnLevel.FindLast() then
            Cust."Warning Level" := WarnLevel."Warning Level"
        else
            cust."Warning Level" := Cust."Warning Level"::None;
        Cust.Modify();
    end;
}