<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="goodfood.Customer" %>

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
                                <!-- <li>
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
                                    <a href="Customer_Order Detail.aspx">Customer Order Detail</a>
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
                        <div class="topic-left">Customer</div>
                        </div>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CUST_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="38px">
                        <EditItemTemplate>
                            CUST_ID:
                            <asp:Label ID="CUST_IDLabel1" runat="server" Text='<%# Eval("CUST_ID") %>' />
                            <br />
                            CUST_NAME:
                            <asp:TextBox ID="CUST_NAMETextBox" runat="server" Text='<%# Bind("CUST_NAME") %>' />
                            <br />
                            CUST_ADDRESS:
                            <asp:TextBox ID="CUST_ADDRESSTextBox" runat="server" Text='<%# Bind("CUST_ADDRESS") %>' />
                            <br />
                            CUST_PHONE:
                            <asp:TextBox ID="CUST_PHONETextBox" runat="server" Text='<%# Bind("CUST_PHONE") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            CUST_ID:
                            <asp:TextBox ID="CUST_IDTextBox" runat="server" Text='<%# Bind("CUST_ID") %>' />
                            <br />
                            CUST_NAME:
                            <asp:TextBox ID="CUST_NAMETextBox" runat="server" Text='<%# Bind("CUST_NAME") %>' />
                            <br />
                            CUST_ADDRESS:
                            <asp:TextBox ID="CUST_ADDRESSTextBox" runat="server" Text='<%# Bind("CUST_ADDRESS") %>' />
                            <br />
                            CUST_PHONE:
                            <asp:TextBox ID="CUST_PHONETextBox" runat="server" Text='<%# Bind("CUST_PHONE") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            CUST_ID:
                            <asp:Label ID="CUST_IDLabel" runat="server" Text='<%# Eval("CUST_ID") %>' />
                            <br />
                            CUST_NAME:
                            <asp:Label ID="CUST_NAMELabel" runat="server" Text='<%# Bind("CUST_NAME") %>' />
                            <br />
                            CUST_ADDRESS:
                            <asp:Label ID="CUST_ADDRESSLabel" runat="server" Text='<%# Bind("CUST_ADDRESS") %>' />
                            <br />
                            CUST_PHONE:
                            <asp:Label ID="CUST_PHONELabel" runat="server" Text='<%# Bind("CUST_PHONE") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM GOOD_FOOD.CUSTOMER WHERE (CUST_ID = :PARAM1) AND (CUST_NAME = :PARAM2) AND (CUST_ADDRESS = :PARAM3) AND (CUST_PHONE = :PARAM4)" InsertCommand="INSERT INTO GOOD_FOOD.CUSTOMER(CUST_ID, CUST_NAME, CUST_ADDRESS, CUST_PHONE) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT CUST_ID, CUST_NAME, CUST_ADDRESS, CUST_PHONE FROM GOOD_FOOD.CUSTOMER" UpdateCommand="UPDATE GOOD_FOOD.CUSTOMER SET CUST_NAME = :PARAM1, CUST_ADDRESS = :PARAM2, CUST_PHONE = :PARAM3 WHERE (CUST_ID = :PARAM4) AND (CUST_NAME = :PARAM5) AND (CUST_ADDRESS = :PARAM6) AND (CUST_PHONE = :PARAM7)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_CUST_ID" Type="Decimal" />
                            <asp:Parameter Name="original_CUST_NAME" Type="String" />
                            <asp:Parameter Name="original_CUST_ADDRESS" Type="String" />
                            <asp:Parameter Name="original_CUST_PHONE" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CUST_ID" Type="Decimal" />
                            <asp:Parameter Name="CUST_NAME" Type="String" />
                            <asp:Parameter Name="CUST_ADDRESS" Type="String" />
                            <asp:Parameter Name="CUST_PHONE" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CUST_NAME" Type="String" />
                            <asp:Parameter Name="CUST_ADDRESS" Type="String" />
                            <asp:Parameter Name="CUST_PHONE" Type="String" />
                            <asp:Parameter Name="original_CUST_ID" Type="Decimal" />
                            <asp:Parameter Name="original_CUST_NAME" Type="String" />
                            <asp:Parameter Name="original_CUST_ADDRESS" Type="String" />
                            <asp:Parameter Name="original_CUST_PHONE" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CUST_ID" DataSourceID="SqlDataSource1" CssClass="table">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CUST_ID" HeaderText="CUST_ID" ReadOnly="True" SortExpression="CUST_ID" />
                            <asp:BoundField DataField="CUST_NAME" HeaderText="CUST_NAME" SortExpression="CUST_NAME" />
                            <asp:BoundField DataField="CUST_ADDRESS" HeaderText="CUST_ADDRESS" SortExpression="CUST_ADDRESS" />
                            <asp:BoundField DataField="CUST_PHONE" HeaderText="CUST_PHONE" SortExpression="CUST_PHONE" />
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
