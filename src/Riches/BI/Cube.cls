Class Riches.BI.Cube Extends %DeepSee.CubeDefinition [ DependsOn = Riches.Transact, ProcedureBlock ]
{

XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube name="Riches"
caption="Riches- Generated by Utility"
description="Generated by Utility"
defaultListing="Listing"
nullReplacement="Missing Value"
sourceClass="Riches.Transact">
<listing name="Listing" displayName=" Default Listing "
	fieldList=",ID,Account,AmountCredit,AmountDebit,Category,CheckNumber,Memo,Merchant,OtherSide,SubCategory,TranDate,TranTime" />

<measure name="AmountCredit" sourceProperty="AmountCredit" />
<measure name="AmountDebit" sourceProperty="AmountDebit" />
<measure name="CheckNumber" sourceProperty="CheckNumber" />

<dimension name="Account">
<hierarchy name="H1">
<level name="Account" sourceProperty="Account" />
</hierarchy>
</dimension>

<dimension name="Category">
<hierarchy name="H1">
<level name="Category" sourceProperty="Category" />
</hierarchy>
</dimension>

<dimension name="Memo">
<hierarchy name="H1">
<level name="Memo" sourceProperty="Memo" />
</hierarchy>
</dimension>

<dimension name="Merchant">
<hierarchy name="H1">
<level name="Merchant" sourceProperty="Merchant" />
</hierarchy>
</dimension>

<dimension name="OtherSide">
<hierarchy name="H1">
<level name="OtherSide" sourceProperty="OtherSide" />
</hierarchy>
</dimension>

<dimension name="SubCategory">
<hierarchy name="H1">
<level name="SubCategory" sourceProperty="SubCategory" />
</hierarchy>
</dimension>

<dimension name="TranDate" type = "time" sourceProperty="TranDate" >
<hierarchy name="H1">
<level name="YearTranDate" timeFunction='Year'/>
<level name="MonthTranDate" timeFunction='MonthYear'/>
<level name="DayTranDate" timeFunction='DayMonthYear'/>
</hierarchy>
</dimension>

</cube>
}

}
