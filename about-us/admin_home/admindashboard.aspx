<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/admin_home/aMasterPage.master" AutoEventWireup="true" CodeFile="admindashboard.aspx.cs" Inherits="about_us_admin_home_admindashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


                        <div class="span9">
                        <div class="content">
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <img src="../img/bannerdash2.jpg" class="shadowed"/>
                               </div><br />
                                <div class="btn-box-row row-fluid">
                                    <a href="postinfo.aspx" class="btn-box big span4"><i class="icon-list-alt"></i><%--<b>65%</b>--%>
                                        <b><p class="text-muted">
                                            Post New Information</p></b>
                                    </a><a href="udetails.aspx" class="btn-box big span4"><i class="icon-eye-open"></i><%--<b>15</b>--%>
                                        <b><p class="text-muted">
                                            View User Details</p></b>
                                    </a><a href="feedres.aspx" class="btn-box big span4"><i class="icon-comments"></i><%--<b>15,152</b>--%>
                                        <b><p class="text-muted">
                                            View Feedback/Complaint</p></b>
                                    </a>
                                </div>
                                <div class="btn-box-row row-fluid">
                                   

                                        <div class="row-fluid">
                                            <div class="span12">
                                                <a href="newpickup.aspx" class="btn-box big span4"><i class="icon-truck"></i><b><p class="text-muted">Pickup Requests</p></b>
                                                </a><a href="addaharspot.aspx"class="btn-box big span4"><i class="menu-icon icon-map-marker"></i><b><p class="text-muted">Add Ahar Spots</p></b>
                                                </a><a href="deliveryfood.aspx" class="btn-box big span4"><i class="menu-icon icon-truck""></i><b><p class="text-muted">Deliver Food</p> </b> </a>
                                            </div>
                                        </div>




                                        <div class="row-fluid">
                                            <div class="span12">
                                              <a href="hotelentry.aspx" class="btn-box big span4"><i class="menu-icon icon-columns"></i><b><p class="text-muted">Hotel Entry</p></b>
                                                </a><a href="vahicleentry.aspx" class="btn-box big span4"><i class="menu-icon icon-truck"></i><b><p class="text-muted">Vahicle Entry</p></b>
                                                </a><a href="aharspotinfo.aspx"class="btn-box big span4" ><i class="menu-icon icon-map-marker"></i><b><p class="text-muted">Ahar Spots Details</p></b>
                                                </a>
                                            </div>
                                        </div>
                                    <div class="row-fluid">
                                            <div class="span12">
                                                 <a href="contactusinfo.aspx" class="btn-box big span4"><i class="menu-icon icon-phone"></i><b><p class="text-muted">Contact Us Details</p></b>
                                            </a>   <a href="donationinfo.aspx"  class="btn-box big span4"><i class="menu-icon icon-money"></i><b><p class="text-muted">Donation Info</p></b>
                                                </a><a href="hdetail.aspx"  class="btn-box big span4"><i class="menu-icon icon-columns"></i><b><p class="text-muted">Hotel Details</p></b>
                                                </a>
                                            </div>
                                        </div>
                                    <div class="row-fluid">
                                            <div class="span12">
                                               <a href="hpickupinfo.aspx" class="btn-box big span4"><i class="menu-icon icon-columns"></i><b><p class="text-muted">Hotel Pickup Details</p></b>
                                                </a><a href="vahicle_details.aspx" class="btn-box big span4"><i class="menu-icon icon-truck"></i><b><p class="text-muted">Vahicle Details</p></b>
    </a><a href="vdetails.aspx" class="btn-box big span4" ><i class="menu-icon icon-group"></i><b><p class="text-muted">Volunteer Details</p></b>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                             
                            </div>
        
                        </div>
                        <!--/.content-->
                    </div>



</asp:Content>

