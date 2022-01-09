<%@ Page Title="" Language="C#" MasterPageFile="~/about-us/hotel_home/uMasterPage.master" AutoEventWireup="true" CodeFile="userdashboard.aspx.cs" Inherits="about_us_hotel_home_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



                        <div class="span9">
                        <div class="content">
                            <div class="btn-controls">
                              <div class="btn-box-row row-fluid">
                                    <img src="../img/bannerdash.jpeg" class="shadowed"/>
                               </div><br />
                                <div class="btn-box-row row-fluid">
                                    <a href="info.aspx" class="btn-box big span4"><i class=" icon-bullhorn"></i><%--<b>65%</b>--%>
                                        <b><p class="text-muted">
                                            Information</p></b>
                                    </a><a href="uprofile.aspx" class="btn-box big span4"><i class="icon-edit"></i><%--<b>15</b>--%>
                                        <b><p class="text-muted">
                                            Complete Hotel Profile</p></b>
                                    </a><a href="pickupreq.aspx" class="btn-box big span4"><i class="icon-truck"></i><%--<b>15,152</b>--%>
                                        <b><p class="text-muted">
                                            Food PickupRequest</p></b>
                                    </a>
                                </div>
                                <div class="btn-box-row row-fluid">
                                   

                                        <div class="row-fluid">
                                            <div class="span12">
                                                <a href="review.aspx" class="btn-box big span4"><i class="icon-save"></i><b><p class="text-muted">Download ID</p></b>
                                                </a><a href="feedback.aspx" class="btn-box big span4"><i class="icon-comments"></i><b><p class="text-muted">Feedback/Complain</p></b>
                                               </a><a href="feedstat.aspx" class="btn-box big span4"><i class="icon-warning-sign"></i><b><p class="text-muted">Feedback/Complain</p></b>
                                               </a>
                                                    </div>
                                        </div>




                                        
                                    </div>
<%--                                    <ul class="widget widget-usage unstyled span4">
                                        <li>
                                            <p>
                                                <strong>Windows 8</strong> <span class="pull-right small muted">78%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar" style="width: 78%;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>Mac</strong> <span class="pull-right small muted">56%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-success" style="width: 56%;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>Linux</strong> <span class="pull-right small muted">44%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-warning" style="width: 44%;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>iPhone</strong> <span class="pull-right small muted">67%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-danger" style="width: 67%;">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>--%>
                             
                            </div>
                            <!--/#btn-controls-->
<%--                            <div class="module">
                                <div class="module-head">
                                    <h3>
                                        Profit Chart</h3>
                                </div>
                                <div class="module-body">
                                    <div class="chart inline-legend grid">
                                        <div id="placeholder2" class="graph" style="height: 500px">
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                            <!--/.module-->
                           <!--/.module-->
                        </div>
                        <!--/.content-->
                    </div>





</asp:Content>

