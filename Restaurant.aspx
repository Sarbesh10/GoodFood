<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurant.aspx.cs" Inherits="goodfood.Restaurant" %>

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
                        <div class="topic-left">Restaurant</div>
                        </div>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="REST_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="51px">
                        <EditItemTemplate>
                            REST_ID:
                            <asp:Label ID="REST_IDLabel1" runat="server" Text='<%# Eval("REST_ID") %>' />
                            <br />
                            REST_NAME:
                            <asp:TextBox ID="REST_NAMETextBox" runat="server" Text='<%# Bind("REST_NAME") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            REST_ID:
                            <asp:TextBox ID="REST_IDTextBox" runat="server" Text='<%# Bind("REST_ID") %>' />
                            <br />
                            REST_NAME:
                            <asp:TextBox ID="REST_NAMETextBox" runat="server" Text='<%# Bind("REST_NAME") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            REST_ID:
                            <asp:Label ID="REST_IDLabel" runat="server" Text='<%# Eval("REST_ID") %>' />
                            <br />
                            REST_NAME:
                            <asp:Label ID="REST_NAMELabel" runat="server" Text='<%# Bind("REST_NAME") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM GOOD_FOOD.RESTAURANT WHERE (REST_ID = :PARAM1) AND (REST_NAME = :PARAM2)" InsertCommand="INSERT INTO GOOD_FOOD.RESTAURANT(REST_ID, REST_NAME) VALUES (:PARAM1, :PARAM2)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT REST_ID, REST_NAME FROM GOOD_FOOD.RESTAURANT" UpdateCommand="UPDATE GOOD_FOOD.RESTAURANT SET REST_NAME = :PARAM1 WHERE (REST_ID = :PARAM2) AND (REST_NAME = :PARAM3)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_REST_ID" Type="Decimal" />
                            <asp:Parameter Name="original_REST_NAME" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="REST_ID" Type="Decimal" />
                            <asp:Parameter Name="REST_NAME" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="REST_NAME" Type="String" />
                            <asp:Parameter Name="original_REST_ID" Type="Decimal" />
                            <asp:Parameter Name="original_REST_NAME" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="REST_ID" DataSourceID="SqlDataSource1" CssClass="table">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="REST_ID" HeaderText="REST_ID" ReadOnly="True" SortExpression="REST_ID" />
                            <asp:BoundField DataField="REST_NAME" HeaderText="REST_NAME" SortExpression="REST_NAME" />
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
