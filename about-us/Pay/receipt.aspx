<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/Pay/MasterPage.master" AutoEventWireup="true" CodeFile="receipt.aspx.cs" Inherits="about_us_Pay_receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=Panel1.ClientID %>");
            var printWindow = window.open('', '', 'height=1000,width=1200');
            printWindow.document.write('<html><head><title>Print Receipt</title>');
            printWindow.document.write(' <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">');
            printWindow.document.write('<link rel="stylesheet" href="../css/bootstrap.min.css">');
            printWindow.document.write('<link rel="stylesheet" href="../css/style.css">');
            printWindow.document.write('<link rel="stylesheet" href="../css/font-awesome.min.css">');
            printWindow.document.write('<link type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet"></head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>




            		<section id="pricing-table2">
			<div class="container">
				<div class="row">
					<div class="title">
						<h2 class="wow fadeInUp" data-wow-delay=".3s">PAYMENTS</h2>
						<p class="wow fadeInUp" data-wow-delay=".5s">Summary of your selected services.</p>
					</div>
					<div class="col-md-12 col bordered">
						<div class="block text-center" >

                            <asp:Panel ID="Panel1" runat="server">
                            
                            <div class="col-md-12">

                                <asp:Table ID="Table1" runat="server" CssClass="table">

                                    <asp:TableHeaderRow Width="2" >
                                        <asp:TableHeaderCell>PAYMENT SUMMARY</asp:TableHeaderCell>
                                        <asp:TableCell><img src="../img/ahar1.png" height="50" width="50" alt=""></asp:TableCell>
                                        
                                    </asp:TableHeaderRow>

                                    <asp:TableRow>
                                        <asp:TableHeaderCell> BILLING ADDRESS:</asp:TableHeaderCell>
                                        <asp:TableCell>
                                            <asp:Label ID="baddr" runat="server" Text="Billing Address"></asp:Label> 
                                            
                                        </asp:TableCell>
                                      
                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableHeaderCell>SERVICE TYPE:</asp:TableHeaderCell>
                                        <asp:TableCell>
                                            <asp:Label ID="service" runat="server" Text="Service Type"></asp:Label>
                                            
                                        </asp:TableCell>


                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableHeaderCell>AMOUNT</asp:TableHeaderCell>
                                        <asp:TableCell>&#8377; <asp:Label ID="amount" runat="server" Text="Amount"></asp:Label></asp:TableCell>



                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableHeaderCell>ADDITIONAL CHARGES</asp:TableHeaderCell>

                                        <asp:TableCell><I>NULL</I></asp:TableCell>
                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableHeaderCell><span class="red">TOTAL AMOUNT</span></asp:TableHeaderCell>
                                        <asp:TableCell><span class="red">&#8377;<asp:Label ID="total" runat="server" Text="Total"></asp:Label></span></asp:TableCell>

                                    </asp:TableRow>


                                </asp:Table>


                    </div>

                                </asp:Panel>
                             <div class="col-md-12">
                            <button id="print" class="btn btn-buy" onclick="PrintPanel();">Print</button>
                            <br />
                        </div>
					</div>
                    </div>
                    </div>
                    </div>
		</section>








</asp:Content>

