<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="Demo.CRUD" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.3.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"  />
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table cellspacing="0" rules="all" border="1">
                        <tr>
                            <th scope="col" style="width: 120px">Name
                            </th>
                            <th scope="col" style="width: 100px">Mobile
                            </th>
                            <th scope="col" style="width: 100px">Email
                            </th>
                            <th scope="col" style="width: 80px"></th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:TextBox ID="Name" runat="server" Width="120" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MobileNo" runat="server" Width="120" Text='<%# Eval("MobileNo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Email" runat="server" Width="120" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
                            <asp:HiddenField ID="hdnId" Value='<%# Eval("ID") %>' runat="server" />
                            <asp:LinkButton ID="lnkUpdate" Text="Update" runat="server" OnClick="OnUpdate" /><br />
                            <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" OnClick="OnDelete" OnClientClick="return confirm('Do you want to delete this row?');" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
