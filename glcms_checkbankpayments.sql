declare @mobileNo varchar(max)='2349161996478';
declare @fromDate Datetime='2023-06-01';
declare @tillDate Datetime='';
select* from tblCoralPayPayments
where(mobileNo = @mobileNo or pgTxnId = @mobileNo)
and
txnDateTime between 
case 
	when @fromDate<> '' then @fromDate else '2020-01-01'
end + '00:00:00' and
case 
    when @tillDate <> ''  then @tillDate else convert(date, getdate())
end+'23:59:59'
