<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/user_home/uMasterPage.master" AutoEventWireup="true" CodeFile="review.aspx.cs" Inherits="about_us_user_home_review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>User Details</title>');
            printWindow.document.write(' <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">');
            printWindow.document.write('<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">');
            printWindow.document.write('<link type="text/css" href="css/theme.css" rel="stylesheet">');
            printWindow.document.write('<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">');
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



   
            				<div class="span9">
					<div class="content">

						<div class="module">
                             <asp:Panel id="pnlContents" runat = "server">
							
                                 <div class="module-head">
								<h3>Print Profile</h3>
							</div>
							<div class="module-body">

                        <div class="container form-horizontal row-fluid">

                            <div class="control-group">
                              <asp:Image ID="uimg" runat="server"  Width="150" Height="200" CssClass="imgb" />
                                <asp:Image ID="qr" runat="server"  Width="200" Height="200" ImageAlign="Right" CssClass="imgq" Visible="false" />
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label1" runat="server" Text="User Name" CssClass="control-label"></asp:Label>
                                    </div>
                                    <div class="controls">
                            <asp:Label ID="uname" runat="server" Text="User Name" CssClass="control-label"></asp:Label>
                               </div>     
                                    
                             </div>

                            <div class="control-group">
                                <div class="control-label">
                                  <asp:Label ID="Label2" runat="server" Text="Gender" CssClass="control-label"></asp:Label>
                                    </div>
                                <div class="controls">
                                <asp:Label ID="ugen" runat="server" Text="Gender" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                     <asp:Label ID="Label3" runat="server" Text="DOB" CssClass="control-label"></asp:Label>
                                     </div>
                                <div class="controls">
                                <asp:Label ID="udob" runat="server" Text="DOB" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                                   </div> 
                                <div class="controls">
                                <asp:Label ID="umail" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label5" runat="server" Text="Phone Number" CssClass="control-label"></asp:Label>
                                    </div>
                                <div class="controls">
                                <asp:Label ID="uphone" runat="server" Text="Phone Number" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            <div class="control-group">
                               <div class="control-label">
                                    <asp:Label ID="Label6" runat="server" Text="Aadhar Number" CssClass="control-label"></asp:Label>
                                    </div>
 <div class="controls">
                                <asp:Label ID="uuid" runat="server" Text="Aadhar Number" CssClass="control-label"></asp:Label>
                            </div>
                            </div>


                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label7" runat="server" Text="Address" CssClass="control-label"></asp:Label>
                                    </div>
<div class="controls">
                                <asp:Label ID="uaddress" runat="server" Text="Address" CssClass="control-label"></asp:Label>
                            </div>
                            </div>

                            <div class="control-group">
                                <div class="control-label">
                                    <asp:Label ID="Label8" runat="server" Text="Area Code" CssClass="control-label"></asp:Label>
                                    </div>
<div class="controls">
                                <asp:Label ID="uarea" runat="server" Text="Area Code" CssClass="control-label"></asp:Label>
                            </div>
                            </div>


                            

                            </div>
                                </div><!--module body-->
                            
                                 </asp:Panel>
                        <div class="module-body">
                            <div class="container form-horizontal row-fluid">
                                                    <div class="control-group">
											<div class="controls">
												<button id="btn" class="btn-large" type="submit" runat="server" onclick="PrintPanel();" >Print</button>
											</div>
										</div>


                        </div>
                            </div>
                        
                        </div><!--module-->
                        </div><!--content-->
                                </div><!--span9-->

     


 
                         
                        



						
						
					<!--/.content-->
				<!--/.span9-->
       





</asp:Content>

