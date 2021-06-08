<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="goodfood.User" %>

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
                                </li>-->
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
                                    <a href="Order Activity.aspx">Order Activity</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-10">
                <div class="mainbody">
                    <div class="topic-head">
                        <div class="topic-left">Order</div>
                        </div>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ORD_NUM" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="16px">
                        <EditItemTemplate>
                            ORD_NUM:
                            <asp:Label ID="ORD_NUMLabel1" runat="server" Text='<%# Eval("ORD_NUM") %>' />
                            <br />
                            ORD_AMNT:
                            <asp:TextBox ID="ORD_AMNTTextBox" runat="server" Text='<%# Bind("ORD_AMNT") %>' />
                            <br />
                            COLUMN1:
                            <asp:TextBox ID="COLUMN1TextBox" runat="server" Text='<%# Bind("COLUMN1") %>' />
                            <br />
                            STATUS:
                            <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                            <br />
                            DELIVERY_ADDRESS_DELIVERY_ID:
                            <asp:TextBox ID="DELIVERY_ADDRESS_DELIVERY_IDTextBox" runat="server" Text='<%# Bind("DELIVERY_ADDRESS_DELIVERY_ID") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            ORD_NUM:
                            <asp:TextBox ID="ORD_NUMTextBox" runat="server" Text='<%# Bind("ORD_NUM") %>' />
                            <br />
                            ORD_AMNT:
                            <asp:TextBox ID="ORD_AMNTTextBox" runat="server" Text='<%# Bind("ORD_AMNT") %>' />
                            <br />
                            COLUMN1:
                            <asp:TextBox ID="COLUMN1TextBox" runat="server" Text='<%# Bind("COLUMN1") %>' />
                            <br />
                            STATUS:
                            <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                            <br />
                            DELIVERY_ADDRESS_DELIVERY_ID:
                            <asp:TextBox ID="DELIVERY_ADDRESS_DELIVERY_IDTextBox" runat="server" Text='<%# Bind("DELIVERY_ADDRESS_DELIVERY_ID") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ORD_NUM:
                            <asp:Label ID="ORD_NUMLabel" runat="server" Text='<%# Eval("ORD_NUM") %>' />
                            <br />
                            ORD_AMNT:
                            <asp:Label ID="ORD_AMNTLabel" runat="server" Text='<%# Bind("ORD_AMNT") %>' />
                            <br />
                            COLUMN1:
                            <asp:Label ID="COLUMN1Label" runat="server" Text='<%# Bind("COLUMN1") %>' />
                            <br />
                            STATUS:
                            <asp:Label ID="STATUSLabel" runat="server" Text='<%# Bind("STATUS") %>' />
                            <br />
                            DELIVERY_ADDRESS_DELIVERY_ID:
                            <asp:Label ID="DELIVERY_ADDRESS_DELIVERY_IDLabel" runat="server" Text='<%# Bind("DELIVERY_ADDRESS_DELIVERY_ID") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM GOOD_FOOD.&quot;Order&quot; WHERE (ORD_NUM = :PARAM1) AND (ORD_AMNT = :PARAM2) AND (&quot;Ord_date/time&quot; = :PARAM3) AND (STATUS = :PARAM4) AND (DELIVERY_ADDRESS_DELIVERY_ID = :PARAM5)" InsertCommand="INSERT INTO GOOD_FOOD.&quot;Order&quot; (ORD_NUM, ORD_AMNT, &quot;Ord_date/time&quot;, STATUS, DELIVERY_ADDRESS_DELIVERY_ID) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT ORD_NUM, ORD_AMNT, &quot;Ord_date/time&quot; AS column1, STATUS, DELIVERY_ADDRESS_DELIVERY_ID FROM GOOD_FOOD.&quot;Order&quot;" UpdateCommand="UPDATE GOOD_FOOD.&quot;Order&quot; SET ORD_AMNT = :PARAM1, &quot;Ord_date/time&quot; = :PARAM2, STATUS = :PARAM3, DELIVERY_ADDRESS_DELIVERY_ID = :PARAM4 WHERE (ORD_NUM = :PARAM5) AND (ORD_AMNT = :PARAM6) AND (&quot;Ord_date/time&quot; = :PARAM7) AND (STATUS = :PARAM8) AND (DELIVERY_ADDRESS_DELIVERY_ID = :PARAM9)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ORD_NUM" Type="Decimal" />
                            <asp:Parameter Name="original_ORD_AMNT" Type="Decimal" />
                            <asp:Parameter Name="original_column1" Type="DateTime" />
                            <asp:Parameter Name="original_STATUS" Type="String" />
                            <asp:Parameter Name="original_DELIVERY_ADDRESS_DELIVERY_ID" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ORD_NUM" Type="Decimal" />
                            <asp:Parameter Name="ORD_AMNT" Type="Decimal" />
                            <asp:Parameter Name="column1" Type="DateTime" />
                            <asp:Parameter Name="STATUS" Type="String" />
                            <asp:Parameter Name="DELIVERY_ADDRESS_DELIVERY_ID" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ORD_AMNT" Type="Decimal" />
                            <asp:Parameter Name="column1" Type="DateTime" />
                            <asp:Parameter Name="STATUS" Type="String" />
                            <asp:Parameter Name="DELIVERY_ADDRESS_DELIVERY_ID" Type="Decimal" />
                            <asp:Parameter Name="original_ORD_NUM" Type="Decimal" />
                            <asp:Parameter Name="original_ORD_AMNT" Type="Decimal" />
                            <asp:Parameter Name="original_column1" Type="DateTime" />
                            <asp:Parameter Name="original_STATUS" Type="String" />
                            <asp:Parameter Name="original_DELIVERY_ADDRESS_DELIVERY_ID" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table" DataKeyNames="ORD_NUM" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ORD_NUM" HeaderText="ORD_NUM" ReadOnly="True" SortExpression="ORD_NUM" />
                            <asp:BoundField DataField="ORD_AMNT" HeaderText="ORD_AMNT" SortExpression="ORD_AMNT" />
                            <asp:BoundField DataField="COLUMN1" HeaderText="COLUMN1" SortExpression="COLUMN1" />
                            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                            <asp:BoundField DataField="DELIVERY_ADDRESS_DELIVERY_ID" HeaderText="DELIVERY_ADDRESS_DELIVERY_ID" SortExpression="DELIVERY_ADDRESS_DELIVERY_ID" />
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
