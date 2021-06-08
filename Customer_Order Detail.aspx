<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Order Detail.aspx.cs" Inherits="goodfood.Customer_Order_Detail" %>

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
                        <div class="topic-left">Customer Order Detail</div>
                        </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="CUST_NAME" HeaderText="CUST_NAME" SortExpression="CUST_NAME" />
                            <asp:BoundField DataField="ORD_UNIT" HeaderText="ORD_UNIT" SortExpression="ORD_UNIT" />
                            <asp:BoundField DataField="ORD_AMNT" HeaderText="ORD_AMNT" SortExpression="ORD_AMNT" />
                            <asp:BoundField DataField="DELIVERY_POINT" HeaderText="DELIVERY_POINT" SortExpression="DELIVERY_POINT" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT
    ll.cust_name,
    mm.ord_unit,
    oo.ord_amnt,
    nn.delivery_point
FROM
    dish_order         mm,
    customer           ll,
    &quot;Order&quot;            oo,
    delivery_address   nn,
    rest_order_dish    pp
WHERE
    ll.cust_id = mm.customer_cust_id
    AND nn.delivery_id = oo.delivery_address_delivery_id
    AND mm.id = pp.dish_order_id
    AND oo.ord_num = pp.order_ord_num"></asp:SqlDataSource>
                </div>
            </div>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
