<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_6.WebForm4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        #socialLoginForm button {
            width:150px;
            background-color:#587bc2;
            color:white;

        }

      
   
          .auto-style1 {
              margin-left: 0;
          }

      
   
        </style> 

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="color:#302f5a;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div> 

    </div  >

        
  
        <h4 style="color:#302f5a;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" >Create a new account </h4>
        <hr />


            
       
                    

                    
            <div class="row"  >
                        
                        
                <div class="col-md-6">
                            
                    
                    <asp:Panel runat="server" ID="Panel3">



        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-4 control-label">Email</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>

        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-4 control-label">Password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-4 control-label">Confirm password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>

                        <p class="text-center" style="color:white">.</p>

               <div class="form-group mt-lg-5">
            <asp:Label  runat="server" ID="Label1" CssClass="col-md-4 mt-lg-5 control-label" AssociatedControlID="RadioButtonList1" Text="" />
                   <div class="col-md-8 mt-lg-5"> <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Vertical">
                       <asp:ListItem Value="0" Class="radio-inline mt-lg-5">Volunteer</asp:ListItem>
                       <asp:ListItem Value="1" Class="radio-inline mt-lg-5">Partners</asp:ListItem>
                   </asp:RadioButtonList>
                         <div class="form-group">
            <div  class="col-md-offset-4 col-md-8 ">
                <asp:Button runat="server" style="margin-left:65px"  OnClick="CreateUser_Click" Text="Next"  CssClass="btn btn-primary " />
            
            </div>
        </div>


        </div>

                        <p class="text-center" style="color:white">.</p>
                   <uc:OpenAuthProviders ID="OpenAuthLogin"  runat="server" />

               </div>
       


            </asp:Panel>

    </div>


    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1"  ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
            
                <asp:Panel runat="server" ID="reg">
                    <div  class="col-md-6">
            <img src="Reg.png" style="width:70%" class="d-flex justify-content-center" alt="Alternate Text" />
        </div>
                </asp:Panel>

        

     




            </div>

<%--            
        </div>
       
    </div>
--%>

        

            <asp:Panel runat="server" ID="Panel1">

               <%-- <asp:Label Text="Full Name" runat="server" />
                <asp:TextBox runat="server" ID="txtName" />--%>

               <%-- <br />
                <asp:Label Text="Phone" runat="server" />
                <asp:TextBox runat="server" ID="txtPhone" TextMode="Phone" />

                                <br />--%>
                 
                <div class="form-group">
   
                    <label for="" class="control-label col-xs-2">Full Name</label> 
    
                    <div class="col-xs-10">
      
                        <div class="input-group">

                            <asp:TextBox runat="server" class="form-control" placeholder="Full Name"  required="required" ID="txtName" />
        
<%--                            <input  placeholder="Add your full name" type="text" required="required" class="form-control" ID="txtName"> --%>
        
     
                            </div>
    
                    </div>
  
                </div>

<%--                ______________________________________________________________________--%>

                <br />
                                
                <br />
                                
                <br />

                
                <div class="form-group">
    
                    <label for="text" class="control-label col-xs-2">Phone</label> 
    
                    <div class="col-xs-10">
      
                        <asp:TextBox runat="server" Class="form-control" placeholder="Phone"   required="required"  ID="txtPhone" Width="1609px" />
       
                    <%--    <input id="text" name="text" placeholder="Phone Number" type="text" required="required" class="form-control"> --%>
        
                     
                    </div>
    
                    </div>

               
                <br />
                <br />

  
                

        <%--                ______________________________________________________________________--%>

        
<%--                <asp:Label Text="City" runat="server" />

                <asp:DropDownList runat="server" ID="DropDownList1">
                    <asp:ListItem Text="Amman" value="1" />
                    <asp:ListItem Text="Irbid" value="2" />
                </asp:DropDownList>--%>

                 
        <div class="form-group">
    
            <label  class="control-label col-xs-2">Description</label> 
    
            <div class="col-xs-10">
     
                                        
                <asp:TextBox runat="server" Class="form-control" placeholder="Description"  ID="txtDetalis" Width="885px" Rows="2" TextMode="MultiLine" />

<%--                <textarea id="textarea" name="textarea" cols="40" rows="10" required="required" class="form-control"></textarea>--%>
   
                </div>
            </div> 

                  
                <br />
                <br />
                <br />

                <div class="form-group">
    
                <label class="control-label col-xs-2" for="DropDpwnList1">City</label> 
   
                <div class="col-xs-10">
      
       
                    <asp:DropDownList runat="server" ID="DropDownList1">
                    <asp:ListItem Text="Amman" value="1" />
                    <asp:ListItem Text="Irbid" value="2" />
                </asp:DropDownList>

                    
    
                </div>
  
                </div>

       

                <br />
               

                
         <div class="form-group row">
   
             <div class="col-xs-offset-2 col-xs-10" style="left: 32px; top: 0px; width: 81%">


      
                <asp:Button  Text="Save"  runat="server" ID="btn_vol"   CssClass="btn btn-primary" OnClick="btn_vol_Click" style="margin-left: 0"   />
    
             </div>
  
         </div>

                <div>

                </div>


<%--                               <br />

                <asp:Label Text="Detalis" runat="server" />

                <asp:TextBox runat="server" id="txtDetalis" />


                <asp:Button Text="Save" runat="server" ID="btn_vol" OnClick="btn_vol_Click" style="height: 26px"  />
--%>


            


            </asp:Panel>


        <%--__________________________________________________________________________________________________________--%>






        <asp:Panel runat="server" ID="Panel2">

             
            <div class="form-group">
    
                <label for="" class="control-label col-xs-2"> Full Name</label> 
    
                <div class="col-xs-10">
     
                    <div class="input-group">
                                       
                        <asp:TextBox runat="server" ID="txtName2" placeholder="Full Name" required="required" class="form-control"  />

       
                        <br />
                        <br />

       
                        </div>
    
                </div>
  
            </div>


             <div class="form-group">
    
                 <label for="text" class="control-label col-xs-2">Phone</label> 
    
                 <div class="col-xs-10">
      
                     <div class="input-group">
                       <asp:TextBox runat="server" ID="txtNumber" placeholder="Phone Number" TextMode="Phone"  required="required" class="form-control"/>

       
     
                         <br />
                         <br />

       
     
                         </div>
   
                     </div>
  
             </div>


<%--             <asp:Label Text="Full Name" runat="server" />
                <asp:TextBox runat="server" ID="txtName2" />--%>

                <br />
              <%--  <asp:Label Text="National Number" runat="server" />
                <asp:TextBox runat="server" ID="txtNumber" TextMode="Phone"/>--%>


                
            <br />






               <div class="form-group">
    
            <label  class="control-label col-xs-2">Year</label> 
    
            <div class="col-xs-10">
                     <asp:TextBox runat="server" ID="txtYear"  TextMode="Date" Class="form-control" CssClass="auto-style1"/>

                                        

<%--                <textarea id="textarea" name="textarea" cols="40" rows="10" required="required" class="form-control"></textarea>--%>
   
                </div>
                   <div class="form-group">
                   </div>
                   <div class="form-group">
                       <label class="control-label col-xs-2" style="left: -10px; top: 33px">
                       Description<br />
                       </label>
                   </div>
                   &nbsp;<div class="col-xs-10">
                       <asp:TextBox ID="txtdesc" runat="server" Class="form-control" placeholder="Description" Rows="2" TextMode="MultiLine" Width="885px" />
                       <%--                <textarea id="textarea" name="textarea" cols="40" rows="10" required="required" class="form-control"></textarea>--%>
                   </div>
            </div> 







            
                         
            <asp:Button Text="Register" runat="server" ID="btn_Par" OnClick="btn_Par_Click" CssClass="btn btn-primary" />

           

               
        </asp:Panel>



    


        
    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
