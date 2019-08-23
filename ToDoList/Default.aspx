<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToDoList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TODOs</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>TODOs</h1>

        <asp:repeater id="TODOs" runat="server" onitemcommand="TODOs_ItemCommand">
            <headertemplate>
                <table>
                    <tr>
                        <th>Description</th>
                        <th>&nbsp;</th>
                    </tr>
            </headertemplate>
            <itemtemplate>
                <tr>
                    <td>
                        <asp:label id="Description" runat="server" 
                            text='<%# Eval("Description") %>'
                            font-strikeout='<%# Eval("Done") %>' />
                    </td>
                    <td>
                        <asp:button id="Done" runat="server" text="Done"
                            commandname="Done" 
                            commandargument='<%# Container.ItemIndex %>'
                            visible='<%# !((bool)Eval("Done")) %>' />
                    </td>
                </tr>
            </itemtemplate>
            <footertemplate>
                </table>
            </footertemplate>
        </asp:repeater>

        <h2>Add New TODO</h2>

        <asp:textbox id="Description" runat="server" />
        <asp:button id="Submit" runat="server" text="Submit" onclick="Submit_Click" />

        <div>
            <asp:label id="ErrorMessage" runat="server" text="Please provide a description." forecolor="Red" visible="false" />
        </div>

    </div>
    </form>
</body>
</html>
