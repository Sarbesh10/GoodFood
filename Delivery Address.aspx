<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delivery Address.aspx.cs" Inherits="goodfood.Delivery_Address" %>

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
                        <div class="topic-left">Delivery Address</div>
                        </div>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM GOOD_FOOD.DELIVERY_ADDRESS WHERE (DELIVERY_ID = :PARAM1) AND (DELIVERY_POINT = :PARAM2) AND (LONGITUDE_DISTANCE = :PARAM3) AND (LATITUDE_DISTANCE = :PARAM4)" InsertCommand="INSERT INTO GOOD_FOOD.DELIVERY_ADDRESS(DELIVERY_ID, DELIVERY_POINT, LONGITUDE_DISTANCE, LATITUDE_DISTANCE) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT DELIVERY_ID, DELIVERY_POINT, LONGITUDE_DISTANCE, LATITUDE_DISTANCE FROM GOOD_FOOD.DELIVERY_ADDRESS" UpdateCommand="UPDATE GOOD_FOOD.DELIVERY_ADDRESS SET DELIVERY_POINT = :PARAM1, LONGITUDE_DISTANCE = :PARAM2, LATITUDE_DISTANCE = :PARAM3 WHERE (DELIVERY_ID = :PARAM4) AND (DELIVERY_POINT = :PARAM5) AND (LONGITUDE_DISTANCE = :PARAM6) AND (LATITUDE_DISTANCE = :PARAM7)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_DELIVERY_ID" Type="Decimal" />
                            <asp:Parameter Name="original_DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="original_LONGITUDE_DISTANCE" Type="Decimal" />
                            <asp:Parameter Name="original_LATITUDE_DISTANCE" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="DELIVERY_ID" Type="Decimal" />
                            <asp:Parameter Name="DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="LONGITUDE_DISTANCE" Type="Decimal" />
                            <asp:Parameter Name="LATITUDE_DISTANCE" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="LONGITUDE_DISTANCE" Type="Decimal" />
                            <asp:Parameter Name="LATITUDE_DISTANCE" Type="Decimal" />
                            <asp:Parameter Name="original_DELIVERY_ID" Type="Decimal" />
                            <asp:Parameter Name="original_DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="original_LONGITUDE_DISTANCE" Type="Decimal" />
                            <asp:Parameter Name="original_LATITUDE_DISTANCE" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DELIVERY_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="55px" Width="37px">
                        <EditItemTemplate>
                            DELIVERY_ID:
                            <asp:Label ID="DELIVERY_IDLabel1" runat="server" Text='<%# Eval("DELIVERY_ID") %>' />
                            <br />
                            DELIVERY_POINT:
                            <asp:TextBox ID="DELIVERY_POINTTextBox" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                            <br />
                            LONGITUDE_DISTANCE:
                            <asp:TextBox ID="LONGITUDE_DISTANCETextBox" runat="server" Text='<%# Bind("LONGITUDE_DISTANCE") %>' />
                            <br />
                            LATITUDE_DISTANCE:
                            <asp:TextBox ID="LATITUDE_DISTANCETextBox" runat="server" Text='<%# Bind("LATITUDE_DISTANCE") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            DELIVERY_ID:
                            <asp:TextBox ID="DELIVERY_IDTextBox" runat="server" Text='<%# Bind("DELIVERY_ID") %>' />
                            <br />
                            DELIVERY_POINT:
                            <asp:TextBox ID="DELIVERY_POINTTextBox" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                            <br />
                            LONGITUDE_DISTANCE:
                            <asp:TextBox ID="LONGITUDE_DISTANCETextBox" runat="server" Text='<%# Bind("LONGITUDE_DISTANCE") %>' />
                            <br />
                            LATITUDE_DISTANCE:
                            <asp:TextBox ID="LATITUDE_DISTANCETextBox" runat="server" Text='<%# Bind("LATITUDE_DISTANCE") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            DELIVERY_ID:
                            <asp:Label ID="DELIVERY_IDLabel" runat="server" Text='<%# Eval("DELIVERY_ID") %>' />
                            <br />
                            DELIVERY_POINT:
                            <asp:Label ID="DELIVERY_POINTLabel" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                            <br />
                            LONGITUDE_DISTANCE:
                            <asp:Label ID="LONGITUDE_DISTANCELabel" runat="server" Text='<%# Bind("LONGITUDE_DISTANCE") %>' />
                            <br />
                            LATITUDE_DISTANCE:
                            <asp:Label ID="LATITUDE_DISTANCELabel" runat="server" Text='<%# Bind("LATITUDE_DISTANCE") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>


                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table" DataKeyNames="DELIVERY_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY_ID" ReadOnly="True" SortExpression="DELIVERY_ID" />
                            <asp:BoundField DataField="DELIVERY_POINT" HeaderText="DELIVERY_POINT" SortExpression="DELIVERY_POINT" />
                            <asp:BoundField DataField="LONGITUDE_DISTANCE" HeaderText="LONGITUDE_DISTANCE" SortExpression="LONGITUDE_DISTANCE" />
                            <asp:BoundField DataField="LATITUDE_DISTANCE" HeaderText="LATITUDE_DISTANCE" SortExpression="LATITUDE_DISTANCE" />
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
