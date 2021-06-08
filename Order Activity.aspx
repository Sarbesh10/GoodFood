<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order Activity.aspx.cs" Inherits="goodfood.Order_Activity" %>

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
                        <div class="topic-left">Order Activity</div>
                        </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="REST_ID" HeaderText="REST_ID" SortExpression="REST_ID" />
                            <asp:BoundField DataField="RESTAURANT_REST_ID" HeaderText="RESTAURANT_REST_ID" SortExpression="RESTAURANT_REST_ID" />
                            <asp:BoundField DataField="DISH_DISH_ID" HeaderText="DISH_DISH_ID" SortExpression="DISH_DISH_ID" />
                            <asp:BoundField DataField="RESTAURANT_REST_ID1" HeaderText="RESTAURANT_REST_ID1" SortExpression="RESTAURANT_REST_ID1" />
                            <asp:BoundField DataField="ORD_UNIT" HeaderText="ORD_UNIT" SortExpression="ORD_UNIT" />
                            <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                            <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                            <asp:BoundField DataField="CUST_ID" HeaderText="CUST_ID" SortExpression="CUST_ID" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT
    aa.rest_id,
    y.restaurant_rest_id,
    bb.dish_dish_id,
    bb.restaurant_rest_id,
    z.ord_unit,
    x.dish_name,
    x.dish_rate,
    cc.cust_id
FROM
    rest_order_dish   y,
    dish              x,
    dish_order        z,
    restaurant        aa,
    rest_dish         bb,
    customer          cc
WHERE
    x.dish_id = y.dish_dish_id
    AND z.id = y.dish_order_id
    AND aa.rest_id = y.restaurant_rest_id
    AND x.dish_id = bb.dish_dish_id
    AND aa.rest_id = bb.restaurant_rest_id
    AND cc.cust_id = z.customer_cust_id"></asp:SqlDataSource>
                </div>
                
            </div>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
