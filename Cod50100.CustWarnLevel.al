codeunit 50100 "CustWarnLevel"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', true, true)]
    local procedure SalesPostOnBeforePostSalesDoc(VAR SalesHeader: Record "Sales Header") //can delete paramaters that are not needed
    var
        Cust: Record Customer;
        i: Integer;
    begin
        Cust.GET(SalesHeader."Sell-to Customer No.");
        case Cust."Warning Level" of
            Cust."Warning Level"::Low:
                begin
                    Message('Warning level is low');
                    i := i + 1;
                end;
            Cust."Warning Level"::High:
                begin
                    Error('Warning level is high!');
                    Message('fuck you microsoft guidelines!!!!');
                end;
        end;
    end;
    //OnAfterPostSalesDoc(VAR SalesHeader : Record "Sales Header";VAR GenJnlPostLine : Codeunit "Gen. Jnl.-Post Line";SalesShptHdrNo : Code;RetRcpHdrNo : Code;SalesInvHdrNo : Code;SalesCrMemoHdrNo : Code;CommitIsSuppressed : Boolean)
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', true, true)]
    local procedure SalesPostOnAfterPostSalesDoc(VAR SalesHeader: Record "Sales Header")
    var
        Cust: Record Customer;
        CustWarnLevelUpdate: Codeunit CustWarnLevelUpdate;
    begin
        Cust.get(SalesHeader."Sell-to Customer No.");
        CustWarnLevelUpdate.UpdateCustWarnLevel(Cust);
    end;
}