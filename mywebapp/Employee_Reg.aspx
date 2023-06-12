<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Reg.aspx.cs" Inherits="mywebapp.Employee_Reg" %>

<html>
<head>
    <title>Registration Form</title>
    <style type="text/css">
        #firstName {
            margin-left: 32px;
        }

        #lastName {
            margin-left: 47px;
        }

        #dateOfBirth {
            margin-left: 22px;
        }

        #address {
            width: 244px;
            margin-left: 40px;
        }

        #employmentStatus {
        }

        #numbers {
            width: 239px;
            margin-left: 38px;
        }
    </style>
</head>
<body style="height: 500px">
    
    <asp:Label ID="lbl1" runat="server" Text="Employee Registration Form:" Font-Bold="True" Font-Size="Large"></asp:Label>
    <form id="form1" runat="server">

        <div>
            
            <asp:Label ID="lbl2" runat="server" Text="Emp ID:"></asp:Label>
            <asp:TextBox ID="txtempid" runat="server" Style="margin-left: 52px" Width="239px" TextMode="Number" BackColor="#4A3C8C" ForeColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtempid" ErrorMessage="Employee ID is Empty !" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div>
            
            <asp:Label ID="lbl3" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="firstName" runat="server" BackColor="#4A3C8C" ForeColor="White" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="firstName" ErrorMessage="First Name is Empty !" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            
            <asp:Label ID="lbl4" runat="server" Text="Surname:"></asp:Label>
            <asp:TextBox ID="lastName" runat="server" BackColor="#4A3C8C" ForeColor="White" Width="238px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lastName" ErrorMessage="Surname is Empty !" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            
            <asp:Label ID="lbl5" runat="server" Text="Date of Birth:"></asp:Label>
            <asp:TextBox ID="dateOfBirth" runat="server" Width="238px" TextMode="Date" BackColor="#4A3C8C" ForeColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dateOfBirth" ErrorMessage="Please insert DOB !" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>            
            <asp:Label ID="lbl6" runat="server" Text="Address:"></asp:Label>
            <asp:TextBox ID="Add" runat="server" Style="margin-left: 50px" Width="238px" BackColor="#4A3C8C" ForeColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Add" ErrorMessage="Address is Empty !" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>            
            
            <asp:Label ID="lbl7" runat="server" Text="Employee Status:"></asp:Label>
            <asp:DropDownList ID="employmentStatus" runat="server" BackColor="#4A3C8C" ForeColor="White" Height="19px" Width="237px" AutoPostBack="True">
                <asp:ListItem />
                <asp:ListItem Text="Full time" />
                <asp:ListItem Text="Part time" />
                <asp:ListItem Text="Unemployed" />
                <asp:ListItem Text="Student" />

                <asp:ListItem Value="Blank"></asp:ListItem>

            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="employmentStatus" ErrorMessage="Please Select Employee Status !" ForeColor="Red"></asp:RequiredFieldValidator>
            <div style="height: 46px; margin-top: 65px;">
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Height="44px" Width="171px" BackColor="#4A3C8C" ForeColor="White" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#4A3C8C" ForeColor="White" Height="42px" OnClick="Button2_Click" style="margin-top: 0px" Text="Clear" Width="159px" />
            </div>
        </div>
        <p>
            &nbsp;            
        <asp:Label ID="lbl8" runat="server" Text="Employee Details :" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <p>
        <asp:GridView ID="GridView1" runat="server" Width="1001px" BackColor="White" GridLines="Horizontal" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="177px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </form>
</body>
</html>

