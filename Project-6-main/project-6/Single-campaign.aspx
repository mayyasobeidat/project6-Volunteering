<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Single-campaign.aspx.cs" Inherits="project_6.WebForm5" %>
<%@ import Namespace="System.Data.SqlClient" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
    #left{
        width:50%;
    }



    </style>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString6 %>" SelectCommand="SELECT * FROM [Campaigns]"></asp:SqlDataSource>
   
 
    
    <%

        string id = Request.QueryString["id"];

            string con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(con);
            SqlCommand com = new SqlCommand($"select * from campaigns where Id_campaigns='{id}'", conn);
        conn.Open();
            SqlDataReader rdr = com.ExecuteReader();
            rdr.Read();
           
%>
    <div id="main">
    <div id="left">
   <h3 id="title"><%=rdr[1]%></h3>
       
    <p><%=rdr[2]%></p>
       
   <img src="<%=rdr[3]%>" style="width:400px ; height:450px" />
            <p>The Target of this campaign is <%=rdr[4].ToString()%>$</p>
    </div>
      
        
    <div id="right">

        <div class="md">
    <asp:Label ID="target" runat="server" Text="" Width="25%" Height="20px" CssClass="sd"></asp:Label>
    </div>
       
    </div>

    
       </div>



    <div>



      

         <asp:Button ID="Button1" runat="server" Text="Donate here" CssClass="rzp-button1" />

    </div>
</asp:Content>
