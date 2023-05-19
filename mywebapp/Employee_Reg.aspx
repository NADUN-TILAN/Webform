<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Reg.aspx.cs" Inherits="mywebapp.Employee_Reg" %>

<html>
<head>
    <title>Registration Form</title>
    <style type="text/css">
        #firstName {
            margin-left: 29px;
        }

        #lastName {
            width: 241px;
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
    <form id="form1" runat="server">

        <div>
            <label for="empid">Emp ID:</label>&nbsp;
            <asp:TextBox ID="txtempid" runat="server" Style="margin-left: 49px" Width="241px" TextMode="Number" BackColor="#9900FF" ForeColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtempid" ErrorMessage="Employee ID is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div>
            <label for="FirstName">First Name:</label>&nbsp;
            <asp:TextBox ID="firstName" runat="server" BackColor="#9900FF" ForeColor="White" Width="238px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="firstName" ErrorMessage="First Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            Surn<label for="lastName">ame:</label>
            <asp:TextBox ID="lastName" runat="server" BackColor="#9900FF" ForeColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lastName" ErrorMessage="Surname is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="dateOfBirth">Date of Birth:</label>
            <asp:TextBox ID="dateOfBirth" runat="server" Width="238px" TextMode="Date" BackColor="#9900FF" ForeColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dateOfBirth" ErrorMessage="Please insert DOB" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="address">Address:</label>
            <asp:TextBox ID="Add" runat="server" Style="margin-left: 50px" Width="238px" BackColor="#9900FF" ForeColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Add" ErrorMessage="Address is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="empstatus">Employee Status:</label>
            <asp:DropDownList ID="employmentStatus" runat="server" BackColor="#9900FF" ForeColor="White" Height="19px" Width="235px" AutoPostBack="True">
                <asp:ListItem Text="Full time" />
                <asp:ListItem Text="Part time" />
                <asp:ListItem Text="Unemployed" />
                <asp:ListItem Text="Student" />
                <asp:ListItem Text="Blank" />

                <asp:ListItem></asp:ListItem>

            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="employmentStatus" ErrorMessage="Please Select Employee Status" ForeColor="Red"></asp:RequiredFieldValidator>
            <div style="height: 46px; margin-top: 65px;">
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Height="44px" Width="171px" BackColor="#9900FF" ForeColor="White" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#9900FF" ForeColor="White" Height="42px" OnClick="Button2_Click" style="margin-top: 0px" Text="Clear" Width="159px" />
            </div>
        </div>
        <p>
            &nbsp;
            Employee Details :</p>
        <asp:GridView ID="GridView1" runat="server" Width="1001px" BackColor="#9900FF" ForeColor="White" GridLines="Vertical">
        </asp:GridView>
    </form>
</body>
</html>

