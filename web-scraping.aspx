<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web-scraping.aspx.cs" Inherits="ASP.NET_pages.web_scraping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=0.65"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <style>
        body{
            background: url(https://i.pinimg.com/originals/a2/04/93/a20493184839815c05371cee41543e28.jpg) no-repeat fixed; /* Добавляем фон */
            background-size: cover; /* Масштабируем фон */
        }
        .serial{
            margin-bottom: 35px;

            display: inline-block;
            margin-left: 20px;
	        margin-right: 20px;
	        background: rgba(255,255, 255, 0.75) none repeat scroll 0 0;
	        border: 1px solid #c0c0c0;
	        height: auto;
	        width: auto;
	        overflow: hidden;
	        padding: 25px 15px;
	        position: relative;
	        transition: all 0.5s ease 0s;
        }
        .serial:hover {
	        box-shadow: 0 0 16px rgba(0, 0, 0, 0.5);
        }
        p {
            padding: 15px 15px 15px 15px;
        	cursor: pointer;
        	text-transform: uppercase;
            max-width: 200px;
            text-align: center;
        }
        img{
            height: auto;
	        max-width: 100%;
        }
        .row1{
            display:flex;
            flex-wrap:wrap;
            align-items:stretch;
            justify-content: center;
            margin-top: 25px;
        }
    </style>
    <title>Web-scraping</title>
</head>
<body>
    <form id="form1" runat="server">
        <a style="margin-left: 10px;" href="https://vod.pl/seriale">Link do strony</a>
        <div class="seriales">
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
        </div>
    </form>
</body>
</html>
