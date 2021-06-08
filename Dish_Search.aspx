<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dish_Search.aspx.cs" Inherits="goodfood.Dish_Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FoodHUB</title>
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
                    <div class="name">Food HUB</div>
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
                        <div class="topic-left">Search Dish</div>
                        <div class="topic-right">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DISH_NAME" DataValueField="DISH_NAME"></asp:DropDownList>
                            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                        </div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table" >
                                <Columns>
                                    <asp:BoundField DataField="REST_ID" HeaderText="REST_ID" SortExpression="REST_ID" />
                                    <asp:BoundField DataField="REST_NAME" HeaderText="REST_NAME" SortExpression="REST_NAME" />
                                    <asp:BoundField DataField="DISH_DISH_ID" HeaderText="DISH_DISH_ID" SortExpression="DISH_DISH_ID" />
                                    <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" SortExpression="DISH_CODE" />
                                    <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                                    <asp:BoundField DataField="LOCAL_NAME" HeaderText="LOCAL_NAME" SortExpression="LOCAL_NAME" />
                                    <asp:BoundField DataField="DELIVERY_POINT" HeaderText="DELIVERY_POINT" SortExpression="DELIVERY_POINT" />
                                    <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                                </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT g.rest_id, g.rest_name, e.dish_dish_id, d.dish_code,  d.dish_rate, d.local_name, h.delivery_point, d.dish_name FROM rest_order_dish e, dish d, &quot;Order&quot; f, restaurant g, delivery_address h WHERE d.dish_id = e.dish_dish_id AND f.ord_num = e.order_ord_num AND g.rest_id = e.restaurant_rest_id AND h.delivery_id = f.delivery_address_delivery_id"></asp:SqlDataSource>
                        </div>
            </div>
        </div>
      </div>
    </form>
</body>
</html>


