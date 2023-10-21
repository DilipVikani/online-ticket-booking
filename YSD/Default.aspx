<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    	<style>

		h1{
			font-size: 2.1rem;
			line-height: 10.4;
			letter-spacing: 0.5rem;
			text-align: center;
			color: white;
		
		}
		.maindiv{
			width: 90%;
			height: 400px;
			position: absolute;
			left: 50%;
			top: 50%;
			transform: translate(-50%,-50%);
			background-image: url(grapes.jpg);
			background-size: 100% 100%;
			box-shadow: 1px 2px 10px 5px white;
			animation: slider 13s infinite linear;
		}

		@keyframes slider{
			0%{ background-image: url(images/bus3.jpg); }

			20%{ background-image: url(images/hotel1.jpg); }

			40%{ background-image: url(images/flight3.jpg); }

            60%{ background-image: url(images/bus2.jpg); }

            80%{ background-image: url(images/hotel2.jpg); }

		}

	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <h1>YSD JOURNEY BOOKING</h1>
	<div class="maindiv">
		
	</div>

</asp:Content>

