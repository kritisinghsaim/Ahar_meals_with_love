<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/vol_home/uMasterPage.master" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="about_us_vol_home_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!--*******************************VERY VERY IMPORTANT CODE************************************************-->
    <%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $("#info").load("../admin_home/infocontent.html");
                                                
                                            });
                                        
        </script> --%>
<!--*******************************VERY VERY IMPORTANT CODE DO NOT DELETE************************************************-->

    



                				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Information Feed</h3>
							</div>
							<div class="module-body" id="info">

                                
								<% AddDynamicLabels(); %>

								

							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->




</asp:Content>

