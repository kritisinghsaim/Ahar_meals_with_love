<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/MasterPage.master" AutoEventWireup="true" CodeFile="donation.aspx.cs" Inherits="about_us_donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>		<style type="text/css">
				</style>
	<link rel='stylesheet' id='select2-css'  href='//www.nofoodwaste.in/wp-content/plugins/woocommerce/assets/css/select2.css?ver=2ffca2a26539a754b56278303b67cc9f' type='text/css' media='all' />
<noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>		<style type="text/css">
				</style>
	<link rel='stylesheet' id='select2-css'  href='//www.nofoodwaste.in/wp-content/plugins/woocommerce/assets/css/select2.css?ver=2ffca2a26539a754b56278303b67cc9f' type='text/css' media='all' />
<div id="main">

	
	<section class='container-wrap main-title alternate-color  main-right-breadcrumb border-bottom'><div class='container'><span class="page-title">Donation</span><div class='breadcrumb-extra'><p class="page-info"><em class="muted">Call us on</em> &nbsp;&nbsp;<i class="icon-phone"></i> +91 80923 08696 &nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail-alt"></i> ahar.in@gmail.com</p></div></div></section>
<section class="container-wrap main-color">
	<div id="main-container" class="container">
		<div class="row"> 
			<div class="template-page col-sm-12 tpl-no">
				<div class="wrap-content">
					
				
		
			

<div itemscope itemtype="http://schema.org/Product" id="product-11449" class="post-11449 product type-product status-publish has-post-thumbnail first instock shipping-taxable purchasable product-type-variable has-default-attributes has-children">
	<div class="row">
	
		
<div class="images col-sm-6">
	<div class="kleo-images-wrapper" style="border-right: 1px solid #E5E5E5;">
	
	<a href="img/happy.jpg" itemprop="image" class="woocommerce-main-image zoom" title="images"><img width="275" height="183" src="img/happy.jpg" class="attachment-shop_single size-shop_single wp-post-image" alt="" title="images" /></a><div class="woo-main-image-nav"><a class="kleo-woo-prev" href="#"><i class="icon-angle-left"></i></a><a class="kleo-woo-next" href="#"><i class="icon-angle-right"></i></a></div>	
		</div>
</div>
		<div class="summary entry-summary col-sm-12">

			<h1 itemprop="name" class="product_title entry-title">Donate Money</h1>        
                                            <div style="display:none">
                                                                                        </div >
                      

	
</div>

<form runat="server">
			<table class="variations" cellspacing="0">
			<tbody>
									<tr>
						<td class="label"><label for="pa_capacity"><h3>Amount : </h3></label></td>
						<td class="value">
                            <asp:TextBox ID="txtmoney" BackColor="Snow" runat="server"></asp:TextBox>
                           					</td>
					</tr>
		        			</tbody>
		</table>
    
		                        
		<div class="single_variation_wrap">
			<div class="woocommerce-variation single_variation"></div><div class="woocommerce-variation-add-to-cart variations_button">
			<div class="quantity">
	</div>   

                    <asp:Button ID="Button1" BackColor="#f25f34" class="single_add_to_cart_button button alt" runat="server" Text="pay" OnClick="Button1_Click" ValidationGroup="v2" Style="width:5%;margin-left:10%;"  />  
                 <asp:Label ID="lbladd" runat="server" Text="Tatisilwai Ranchi" CssClass="control-label" Visible="false"></asp:Label>
                                                           <asp:Label ID="lblser" runat="server" Text="Ahar Food Donation" CssClass="control-label" Visible="false"></asp:Label>
                               
 
</div>
		</div>

			
	</form>


	<div id="accordion-woo" class="panel-group panel-kleo icons-to-right" data-active-tab="1">
	
							<div class="panel">
					<div class="panel-heading">
						
					</div>
							</div>
				</div>
				</div>




		</div><!-- .summary -->
	
	</div>

	         
		
	
				
				</div><!--end wrap-content-->
			</div><!--end main-page-template-->
						</div><!--end .row-->		</div><!--end .container-->
 
		
</asp:Content>