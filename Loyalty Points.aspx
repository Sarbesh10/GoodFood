<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loyalty Points.aspx.cs" Inherits="goodfood.Loyalty_Points" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Good Food</title>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="~/Content/Site.css" />
    <link rel="stylesheet" href="~/Content/Home.css" />
    <link rel="stylesheet" href="~/Content/Home-sb.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
            </Scripts>
        </asp:ScriptManager>

        <div class="row body">
            <div class="col-2">
                <div class="sidebar">
                    <div class="name">Good Food</div>
                    <div class="sidebar-menu">
                        <nav>
                            <ul>
                                <li>
                                    <a href="https://localhost:44313/Home">Home</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44313/Dish">Dish</a>
                                </li>
                                <!--<li>
                                    <a href="https://localhost:44313/Order">Order</a>
                                </li> -->
                                <li>
                                    <a href="https://localhost:44313/Loyalty%20Points">Loyalty Points</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44313/Restaurant">Restaurant</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44313/Customer">Customer</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44313/Delivery%20Address">Delivery Address</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44313/Dish_Search">Dish Search</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44313/Customer_Order%20Detail">Customer Order Detail</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44313/Order%20Activity">Order Activity</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-10">
                <div class="mainbody">
                    <div class="topic-head">
                        <div class="topic-left">Loyalty Points</div>
                        </div>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="LOYALTY_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100px">
                        <EditItemTemplate>
                            LOYALTY_ID:
                            <asp:Label ID="LOYALTY_IDLabel1" runat="server" Text='<%# Eval("LOYALTY_ID") %>' />
                            <br />
                            LOYALTYSTARTDATE:
                            <asp:TextBox ID="LOYALTYSTARTDATETextBox" runat="server" Text='<%# Bind("LOYALTYSTARTDATE") %>' />
                            <br />
                            LOYALTYENDDATE:
                            <asp:TextBox ID="LOYALTYENDDATETextBox" runat="server" Text='<%# Bind("LOYALTYENDDATE") %>' />
                            <br />
                            LOYALTY_POINT:
                            <asp:TextBox ID="LOYALTY_POINTTextBox" runat="server" Text='<%# Bind("LOYALTY_POINT") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            LOYALTY_ID:
                            <asp:TextBox ID="LOYALTY_IDTextBox" runat="server" Text='<%# Bind("LOYALTY_ID") %>' />
                            <br />
                            LOYALTYSTARTDATE:
                            <asp:TextBox ID="LOYALTYSTARTDATETextBox" runat="server" Text='<%# Bind("LOYALTYSTARTDATE") %>' />
                            <br />
                            LOYALTYENDDATE:
                            <asp:TextBox ID="LOYALTYENDDATETextBox" runat="server" Text='<%# Bind("LOYALTYENDDATE") %>' />
                            <br />
                            LOYALTY_POINT:
                            <asp:TextBox ID="LOYALTY_POINTTextBox" runat="server" Text='<%# Bind("LOYALTY_POINT") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            LOYALTY_ID:
                            <asp:Label ID="LOYALTY_IDLabel" runat="server" Text='<%# Eval("LOYALTY_ID") %>' />
                            <br />
                            LOYALTYSTARTDATE:
                            <asp:Label ID="LOYALTYSTARTDATELabel" runat="server" Text='<%# Bind("LOYALTYSTARTDATE") %>' />
                            <br />
                            LOYALTYENDDATE:
                            <asp:Label ID="LOYALTYENDDATELabel" runat="server" Text='<%# Bind("LOYALTYENDDATE") %>' />
                            <br />
                            LOYALTY_POINT:
                            <asp:Label ID="LOYALTY_POINTLabel" runat="server" Text='<%# Bind("LOYALTY_POINT") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM GOOD_FOOD.LOYALTY_POINT WHERE (LOYALTY_ID = :PARAM1) AND (LOYALTYSTARTDATE = :PARAM2) AND (LOYALTYENDDATE = :PARAM3) AND (LOYALTY_POINT = :PARAM4)" InsertCommand="INSERT INTO GOOD_FOOD.LOYALTY_POINT(LOYALTY_ID, LOYALTYSTARTDATE, LOYALTYENDDATE, LOYALTY_POINT) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT LOYALTY_ID, LOYALTYSTARTDATE, LOYALTYENDDATE, LOYALTY_POINT FROM GOOD_FOOD.LOYALTY_POINT" UpdateCommand="UPDATE GOOD_FOOD.LOYALTY_POINT SET LOYALTYSTARTDATE = :PARAM1, LOYALTYENDDATE = :PARAM2, LOYALTY_POINT = :PARAM3 WHERE (LOYALTY_ID = :PARAM4) AND (LOYALTYSTARTDATE = :PARAM5) AND (LOYALTYENDDATE = :PARAM6) AND (LOYALTY_POINT = :PARAM7)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_LOYALTY_ID" Type="Decimal" />
                            <asp:Parameter Name="original_LOYALTYSTARTDATE" Type="DateTime" />
                            <asp:Parameter Name="original_LOYALTYENDDATE" Type="DateTime" />
                            <asp:Parameter Name="original_LOYALTY_POINT" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="LOYALTY_ID" Type="Decimal" />
                            <asp:Parameter Name="LOYALTYSTARTDATE" Type="DateTime" />
                            <asp:Parameter Name="LOYALTYENDDATE" Type="DateTime" />
                            <asp:Parameter Name="LOYALTY_POINT" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="LOYALTYSTARTDATE" Type="DateTime" />
                            <asp:Parameter Name="LOYALTYENDDATE" Type="DateTime" />
                            <asp:Parameter Name="LOYALTY_POINT" Type="Decimal" />
                            <asp:Parameter Name="original_LOYALTY_ID" Type="Decimal" />
                            <asp:Parameter Name="original_LOYALTYSTARTDATE" Type="DateTime" />
                            <asp:Parameter Name="original_LOYALTYENDDATE" Type="DateTime" />
                            <asp:Parameter Name="original_LOYALTY_POINT" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LOYALTY_ID" DataSourceID="SqlDataSource1" CssClass="table">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="LOYALTY_ID" HeaderText="LOYALTY_ID" ReadOnly="True" SortExpression="LOYALTY_ID" />
                            <asp:BoundField DataField="LOYALTYSTARTDATE" HeaderText="LOYALTYSTARTDATE" SortExpression="LOYALTYSTARTDATE" />
                            <asp:BoundField DataField="LOYALTYENDDATE" HeaderText="LOYALTYENDDATE" SortExpression="LOYALTYENDDATE" />
                            <asp:BoundField DataField="LOYALTY_POINT" HeaderText="LOYALTY_POINT" SortExpression="LOYALTY_POINT" />
                        </Columns>
                    </asp:GridView>

                    </div>
                </div>
                
        </div>
        <div>
        </div>
    </form>
</body>
</html>
