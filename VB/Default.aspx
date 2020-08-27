<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxCardView - Search Panel - How to highlight the text placed inside a DataItem template</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="ads" KeyFieldName="CategoryID">
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:CardViewTextColumn FieldName="CategoryID" ReadOnly="True" Visible="False">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="CategoryName" VisibleIndex="0">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="Description" VisibleIndex="1">
                    <DataItemTemplate>
                        <dx:ASPxLabel ID="label1" runat="server" Text='<%#Eval("Description")%>' EncodeHtml="false" OnDataBound="label1_DataBound"></dx:ASPxLabel>
                        <p>
                        <dx:ASPxImage ID="ASPxImage2" runat="server" ShowLoadingImage="true" 
                            ImageUrl='<%#String.Format("~/Images/{0}.jpg", Eval("CategoryID"))%>'>
                        </dx:ASPxImage>
                    </DataItemTemplate>
                </dx:CardViewTextColumn>
            </Columns>
        </dx:ASPxCardView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
    </form>
</body>
</html>