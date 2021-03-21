<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StripeDemo.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Acme Glasses</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet" />
    <style>
        #cart th, #cart td {
            padding: 5px;
        }

        #cart {
            border: 1px solid black;
        }

        label {
            width: 100px;
        }
    </style>
</head>
<body onload="clean()">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Acme Glasses</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <br />
                <br />
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#">
                                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/0135/4144/1595/products/john-jacobs-jj-s12805-c3-sunglasses_g_3249_1_45d4a207-b212-4b25-aeab-a2f4588b7523_300x.jpg?v=1608623192" /></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">Aviators</a>
                                </h4>
                                <h5>$5</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                            </div>
                            <button type="button" onclick="AddToCart('Aviators')">Add to Cart</button>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#">
                                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/0135/4144/1595/products/john-jacobs-jj-s11707-c3-sunglasses_j_7677_1_1_7b1a6ba1-1961-4626-b47e-a94ae81d9f61_480x.jpg?v=1608623232" /></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">Polarized</a>
                                </h4>
                                <h5>$10</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                            </div>
                            <button type="button" onclick="AddToCart('Polarized')">Add to Cart</button>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#">
                                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/0135/4144/1595/products/john-jacobs-jj-s12810-c1-sunglasses_john-jacobs-jj-s12810-c1-sunglasses_G_1724_1_300x.jpg?v=1614920669" /></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">Ray Ban</a>
                                </h4>
                                <h5>$15</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                            </div>
                            <button type="button" onclick="AddToCart('Ray Ban')">Add to Cart</button>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#">
                                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/0135/4144/1595/products/john-jacobs-jj-s12803-c2-sungl_john-jacobs-jj-s12803-c2-sungl_G_9754_1_480x.jpg?v=1614920651" /></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">Police</a>
                                </h4>
                                <h5>$20</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                            </div>
                            <button type="button" onclick="AddToCart('Police')">Add to Cart</button>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#">
                                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/0135/4144/1595/products/john-jacobs-jj-s12474-c1-sunglasses_g_1852_1_1_1_765x.jpg?v=1614920379" /></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">Pilots</a>
                                </h4>
                                <h5>$25</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                            </div>
                            <button type="button" onclick="AddToCart('Pilots')">Add to Cart</button>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#">
                                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/0135/4144/1595/products/john-jacobs-jj-s11767-c5-sunglasses_john-jacobs-jj-s11767-c5-sunglasses_g_1532_1_360x.jpg?v=1614920744" /></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">Aviator Pilots</a>
                                </h4>
                                <h5>$30</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                            </div>
                            <button type="button" onclick="AddToCart('Aviator Pilots')">Add to Cart</button>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.col-lg-9 -->
            <div class="col-lg-3" id="cartDiv" style="display: none;">
                <h1 class="my-4">Cart</h1>
                <table id="cart" class="cart" style="width: 400px">
                    <tr>
                        <th>Item Name
                        </th>
                        <th>Quantity
                        </th>
                        <th>Unit Price
                        </th>
                        <th>Itemized Price
                        </th>
                    </tr>
                </table>
                <br />
                <button type="button" id="checkOutButton" style="display: none;" onclick="CheckOutButtonOnClick()">Check Out</button>
                <form id="form1" runat="server">
                    <div id="placeOrderDiv" style="display: none; width: 400px">
                        <p>Enter your shipping details below.</p>
                        <label for="fname">First name</label>
                        <input type="text" id="fname" name="fname" placeholder="John" /><br />
                        <label for="lname">Last name</label>
                        <input type="text" id="lname" name="lname" placeholder="Doe" /><br />
                        <label for="address">Address</label>
                        <input type="text" id="address" name="address" /><br />
                        <label for="zipCode">Zip Code</label>
                        <input type="number" id="zipCode" name="zipCode" placeholder="821124" /><br />
                        <br />
                        <p>Enter your card details below.</p>
                        <label for="cardnumber">Card Number</label>
                        <input type="text" maxlength="16" id="cardnumber" runat="server" name="cardnumber" placeholder="4242424242424242" /><br />
                        <label for="expiryMonth">Expiry Month</label>
                        <input type="number" maxlength="2" id="expiryMonth" runat="server" name="expiryMonth" min="1" max="12" placeholder="05" /><br />
                        <label for="expiryYear">Expiry Year</label>
                        <input type="number" maxlength="4" id="expiryYear" runat="server" name="expiryYear" min="2021" max="2025" placeholder="2025" /><br />
                        <label for="cvvCode">CVC Code</label>
                        <input type="number" id="cvvCode" runat="server" name="cvvCode" maxlength="3" min="100" max="999" placeholder="123" /><br />
                        <br />
                        <asp:Button ID="PlaceOrder" Text="Place Order" OnClick="PlaceOrder_Click" OnClientClick="this.disabled = true; this.value = 'Submitting...';" UseSubmitBehavior="false" runat="server" />
                        <asp:HiddenField runat="server" ID="hdnTotalPrice" />
                    </div>
                </form>
            </div>
            <div class="col-lg-3">
                <br /><br />
                <div>
                    <asp:Label runat="server" ID="successMessage" />
                </div>
                <asp:Label runat="server" ID="errorMessage" />
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
        </div>
        <!-- /.container -->
    </footer>
    <!-- Bootstrap core JavaScript -->



    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
        var glasses = ["Aviators", "Polarized", "Ray Ban", "Police", "Pilots", "Aviator Pilots"];
        var unitPrices = [5, 10, 15, 20, 25, 30];
        function AddToCart(itemName) {
            document.getElementById("cartDiv").style.display = "block";
            var count = parseInt(localStorage.getItem(itemName));
            localStorage.setItem(itemName, count + 1);
            document.getElementById("checkOutButton").style.display = "block";
            rebuildTable();
        }
        function rebuildTable() {
            var table = document.getElementById("cart");
            while (table.rows.length > 1) {
                table.deleteRow(1);
            }
            var totalPrice = 0;
            for (var i = 0; i < glasses.length; i++) {
                if (localStorage.getItem(glasses[i]) != 0) {
                    var row = table.insertRow(table.rows.length);
                    var itemName = row.insertCell(0);
                    itemName.innerHTML = glasses[i];
                    var quantity = row.insertCell(1);
                    quantity.innerHTML = localStorage.getItem(glasses[i]);
                    var unitPrice = row.insertCell(2);
                    unitPrice.innerHTML = '$ ' + unitPrices[i];
                    var itemizedPrice = row.insertCell(3);
                    var itemizedPriceInInt = localStorage.getItem(glasses[i]) * unitPrices[i];
                    itemizedPrice.innerHTML = '$ ' + itemizedPriceInInt;
                    totalPrice = itemizedPriceInInt + totalPrice;
                }
            }
            var totalRow = table.insertRow(table.rows.length);
            totalRow.insertCell(0).innerHTML = '<b>Total Price</b>';
            totalRow.insertCell(1); totalRow.insertCell(2);
            var totalPriceColumn = totalRow.insertCell(3);
            totalPriceColumn.innerHTML = '<b>$ ' + totalPrice + '</b>';
            localStorage.setItem('TotalPrice', totalPrice);
            document.getElementById("hdnTotalPrice").value = totalPrice;
        }
        function clean() {
            glasses.forEach(reset);
        }
        function reset(item) {
            localStorage.setItem(item, 0);
        }
        function CheckOutButtonOnClick() {
            document.getElementById("checkOutButton").style.display = "none";
            document.getElementById("placeOrderDiv").style.display = "block";
        }
    </script>
</body>
</html>