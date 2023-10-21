<%@ Page Language="C#" AutoEventWireup="true" CodeFile="flightpay.aspx.cs" Inherits="flightpayment_flightpay" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Flight Ticket Booking</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Payment Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Flight Ticket Booking Payment</h1>
<div class="check">
    <div class="check-head">
       <h2>Payment</h2>
	   <small class="strip"> </small>
	</div>
	<div class="check-bottom">
	     <form>
             <p>Choose Your Card Type</p>
			<div class="expir-picker1">
						<ul>						
						<li>
                            <asp:DropDownList ID="ctype" runat="server" CssClass="drop-date">
                                <asp:ListItem>Creadit Card</asp:ListItem>
                                <asp:ListItem>Debit Card</asp:ListItem>
                                <asp:ListItem>Rupay</asp:ListItem>
                                <asp:ListItem>Visa</asp:ListItem>
                            </asp:DropDownList>
						 </li>						
					<li><a href="#"><i class="fa fa-calendar-o"></i></a></li>
				</ul>		
			</div>
		    <p>Card Holder Name</p>
             <asp:TextBox ID="cnm" runat="server"></asp:TextBox>
             <!--<asp:RequiredFieldValidator ID="reqcnm" runat="server" ControlToValidate="cnm" ErrorMessage="Card Holder Name" />
             <asp:RegularExpressionValidator ID="regcnm" runat="server" ControlToValidate="cnm" ValidationExpression="[a-zA-Z ]*$" ErrorMessage="Only Characters" />
                                
		     <!--<input type="text" value="John Smith" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'John Smith';}">-->
			<p>Card Number</p>
             <asp:TextBox ID="cnum" runat="server"></asp:TextBox>
             <!--<asp:RequiredFieldValidator ID="reqcnum" runat="server" ControlToValidate="cnum" ErrorMessage="Card Number" />
             <asp:RegularExpressionValidator ID="regcnum" runat="server" ControlToValidate="cnum" ValidationExpression="^[0-9]{10}$" ErrorMessage="Only 10 digit Mobile No." />
                                
			 <!--<input type="text" value="4689 0005 4954 5868" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">-->
			<p>Expiry Date</p>
			<div class="expir-picker1">
						<ul>						
						<li>
                            <asp:DropDownList ID="month" runat="server" CssClass="drop-date">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
						 </li>	
                         <li>
                             <asp:DropDownList ID="year" runat="server" CssClass="drop-date">
                                 <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>
                                <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>
                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2026</asp:ListItem>
                                <asp:ListItem>2027</asp:ListItem>
                                <asp:ListItem>2028</asp:ListItem>
                                <asp:ListItem>2029</asp:ListItem>
                                <asp:ListItem>2030</asp:ListItem>
                                <asp:ListItem>2031</asp:ListItem>
                                <asp:ListItem>2032</asp:ListItem>
                            </asp:DropDownList>
							</li>						
					<li><a href="#"><i class="fa fa-calendar-o"></i></a></li>
				</ul>		
			</div>
			<div class="cvv-numb">
			  <div class="cvv-text">
			    <p>Cvv Number</p>
                  <asp:TextBox ID="cvv" runat="server" CssClass="c-num" placeholder="CVV"></asp:TextBox>
			    <!--<input type="text" class="c-num" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">-->
			  </div>
			  <div class="cvv-para">
			    <p>Please Check This Field</p>
			  </div>
			   <div class="clear"> </div> 
			</div>
             <asp:Button ID="confirm" runat="server" Text="Confirm Payment" OnClick="confirm_Click" />
			<!--<input type="submit" value="Confirm Payment">-->
		 </form>
	</div>
</div>
<div class="copy-right">
			<p>© 2020-2021 YSD Bus Ticket Booking || All Rights Reserved.</p>
</div>
    </div>
    </form>
</body>
</html>
