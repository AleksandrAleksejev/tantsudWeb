<%@ Page Title="Tantsupaarid" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="tantsudWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Tantsupaarid</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="977px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="tantsupaar" HeaderText="tantsupaar" SortExpression="tantsupaar" />
                <asp:BoundField DataField="avaliku_paev" HeaderText="avaliku_paev" SortExpression="avaliku_paev" />
                <asp:BoundField DataField="punktid" HeaderText="punktid" SortExpression="punktid" />
                <asp:BoundField DataField="komentaarid" HeaderText="komentaarid" SortExpression="komentaarid" />
                <asp:CommandField DeleteText="Kustuta" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tantsudAleksejevConnectionString1 %>" DeleteCommand="DELETE FROM [tantsud] WHERE [id] = @id" InsertCommand="INSERT INTO [tantsud] ([tantsupaar], [punktid], [komentaarid], [avalik], [avaliku_paev]) VALUES (@tantsupaar, @punktid, @komentaarid, @avalik, @avaliku_paev)" ProviderName="<%$ ConnectionStrings:tantsudAleksejevConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [tantsupaar], [punktid], [komentaarid], [avalik], [avaliku_paev] FROM [tantsud]" UpdateCommand="UPDATE [tantsud] SET [tantsupaar] = @tantsupaar, [punktid] = @punktid, [komentaarid] = @komentaarid, [avalik] = @avalik, [avaliku_paev] = @avaliku_paev WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tantsupaar" Type="String" />
                <asp:Parameter Name="punktid" Type="Int32" />
                <asp:Parameter Name="komentaarid" Type="String" />
                <asp:Parameter Name="avalik" Type="Int32" />
                <asp:Parameter Name="avaliku_paev" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tantsupaar" Type="String" />
                <asp:Parameter Name="punktid" Type="Int32" />
                <asp:Parameter Name="komentaarid" Type="String" />
                <asp:Parameter Name="avalik" Type="Int32" />
                <asp:Parameter Name="avaliku_paev" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>Tantsuri lisamine</p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="tantsupaar" HeaderText="tantsupaar" SortExpression="tantsupaar" />
            <asp:TemplateField HeaderText="punktid" SortExpression="punktid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("punktid") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("punktid") %>'>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("punktid") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="komentaarid" HeaderText="komentaarid" SortExpression="komentaarid" />
            <asp:TemplateField HeaderText="avaliku_paev" SortExpression="avaliku_paev">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("avaliku_paev") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="166px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("avaliku_paev") %>' Width="16px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("avaliku_paev") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField CancelText="Loobu" DeleteText="Kustutamine" InsertText="Lisa" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
   
</asp:Content>
