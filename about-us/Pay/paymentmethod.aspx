<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/Pay/MasterPage.master" AutoEventWireup="true" CodeFile="paymentmethod.aspx.cs" Inherits="about_us_Pay_paymentmethod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



            		<section id="contact-form">
			<div class="container">
				<div class="row">
					<div class="title">
						<h2 class="wow fadeInUp" data-wow-delay=".3s">PAYMENT MTHOD</h2>
						<p class="wow fadeInUp" data-wow-delay=".5s">Choose Payment Method.</p>
					</div>
					<div class="col-md-12 col bordered">
						<div class="block text-center" >
                           
                               
                            <div class="row">
                                    <h3>SELECT PAYMENT METHOD</h3>
                                    <br />
                            </div>


                            <form id="Form1" runat="server">
                            <div class="row">
                               
                                    <asp:RadioButtonList ID="pmethod" runat="server" CssClass="col-md-12" AutoPostBack="true">
                                        <asp:ListItem >Debit/Credit Card</asp:ListItem>
                                        <asp:ListItem>Paytm Wallet</asp:ListItem>
                                        <asp:ListItem>Freecharge Wallet</asp:ListItem>
                                        <asp:ListItem>UPI</asp:ListItem>
                                        <asp:ListItem>Net Banking</asp:ListItem>
                                  </asp:RadioButtonList>
                                   <br />
                                   <br />
                                   <asp:DropDownList ID="banks" runat="server" Visible="false">

                                   </asp:DropDownList>

                                </div>

                                   <br />

                                <div class="row">
                                   <asp:Button ID="btn" runat="server" Text="Confirm and Pay" CssClass="btn-default" OnClick="btn_Click" />
                            
                                
                                </div>
                                </form>
                               
                           
                                   
                           
                           
                       </div>
					
                    </div>
                    </div>
                    </div>
		</section>

</asp:Content>

