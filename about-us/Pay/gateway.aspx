<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gateway.aspx.cs" Inherits="gateway" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    <meta charset="utf-8" />
    <title>Card Payment </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="../gateway/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../gateway/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="../gateway/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../gateway/bootstrap/js/bootstrap.min.js"></script>


</head>
<body>
    
    <div>

        <asp:Panel ID="paypanel" runat="server">

    <div class="container">

<div class="page-header">
    <h1>PAYMENT GATEWAY <small>CARD PAYMENT</small></h1>
</div>

<!-- Credit Card Payment Form - START -->

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h3 class="text-center">Payment Details</h3>
                        <img class="img-responsive cc-img" src="../img/creditcardicons.png"/>
                    </div>
                </div>
                 <form id="form1" runat="server">
                <div class="panel-body">
                   
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">

                                    <asp:Label ID="malert" runat="server" Text="<span style='color:red;'>One or more important fields empty!</span>" Visible="false" ></asp:Label>




                                    <label>CARD NUMBER</label>
                                    
                                    <div class="input-group">
        
                                        <asp:TextBox ID="cnum" runat="server" CssClass="form-control" placeholder="0000000000000000"></asp:TextBox>
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">

                                    <label>EXPIRATION DATE</label>
                                                  
                                    <asp:TextBox ID="cexp" runat="server" CssClass="form-control" placeholder="MMYY"></asp:TextBox><br />
                                    
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label>CVV CODE</label>
                                    <asp:TextBox ID="cvv" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                   <asp:TextBox ID="cname" runat="server" CssClass="form-control" placeholder="Name on Card"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                  
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-12">
                           
                            <asp:Button ID="paynow" runat="server" Text="Process Payment" CssClass="btn-success btn-lg" OnClick="paynow_Click"/>
                               
                        </div>
                    </div>
                </div>
                 </form>
            </div>
        </div>
    </div>
</div>

<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
<!-- Credit Card Payment Form - END -->

</div>

            </asp:Panel>



        <asp:Panel ID="waitpanel" runat="server" >
            <div class="container">
                <div class="page-header"></div>
               <div class="row">
                <div class="text-center">
                    <br />
                    <p>Please wait while your payment is being processed. Do not refresh the page!</p>
                    <p><br /><br /><img src="../img/load.gif"  width="50" height="50"/></p></div>
                
                </div>
            </div>

        </asp:Panel>

    </div>
    
</body>
</html>
