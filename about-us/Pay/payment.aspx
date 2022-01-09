<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Pay_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        		<section id="pricing-table2">
			<div class="container">
				<div class="row">
					<div class="title">
						<h2 class="wow fadeInUp" data-wow-delay=".3s">PAYMENTS</h2>
						<p class="wow fadeInUp" data-wow-delay=".5s">Summary of your selected services.</p>
					</div>
					<div class="col-md-12 col bordered">
						<div class="block text-center" >
                            
                            <div class="col-md-12">

                                <asp:Table ID="Table1" runat="server" CssClass="table">

                                    <asp:TableHeaderRow Width="2" >
                                        <asp:TableHeaderCell>PAYMENT SUMMARY</asp:TableHeaderCell>
                                        
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

                                        <asp:TableCell><I>0</I></asp:TableCell>
                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableHeaderCell><span class="red">TOTAL AMOUNT</span></asp:TableHeaderCell>
                                        <asp:TableCell><span class="red">&#8377;<asp:Label ID="total" runat="server" Text="Total"></asp:Label></span></asp:TableCell>

                                    </asp:TableRow>


                                </asp:Table>


                    </div>
                             <div class="col-md-12">
                            <a href="paymentmethod.aspx" class="btn btn-buy">Proceed To Payment</a>
                            <br />
                        </div>
					</div>
                    </div>
                    </div>
                    </div>
		</section>



</asp:Content>

