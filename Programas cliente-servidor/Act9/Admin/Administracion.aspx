<%@ Page Title="Administracion de usuarios y roles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administracion.aspx.cs" Inherits="ProyectoAct9CS.Admin.Administracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="lbl1" runat="server" Text="Rol: "></asp:Label>
            <asp:TextBox ID="txtRolName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnCrearRol" runat="server" Text="Crear Rol" OnClick="btnCrearRol_Click"/>
            <asp:Button ID="btnEliminarRol" runat="server" Text="Eliminar" OnClick="btnEliminarRol_Click"/>
            <br />
            <br />
            <asp:Label ID="lblIdRol" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="lblIdUser" runat="server" Visible="false"></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:Label ID="lbl2" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GV_Rolname" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GV_Rolname_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>

                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>

                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"></RowStyle>

                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FFF1D4"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#B95C30"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#F1E5CE"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#93451F"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Id, Name FROM AspNetRoles"></asp:SqlDataSource>
        </div>
        <div class="col-sm-4">
            <asp:Panel ID="Panel1" runat="server" Enabled="true" Visible="false">
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert">x</button>
                    <strong>Exito! </strong>Operacion ejecutada sobre el rol con exito.
                </div>
            </asp:Panel>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:TextBox ID="txtCorreo" runat="server" Placeholder="Email"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtCCorreo" runat="server" Placeholder="Confirmar Email"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtPass" runat="server" Placeholder="Contraseña"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtConfirmar" runat="server" Placeholder="Confirmar Contraseña"></asp:TextBox>
            <br />
            <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" OnClick="btnCrearUsuario_Click"/>
            <asp:Button ID="btnBorrarUsuario" runat="server" Text="Borrar Usuario" OnClick="btnBorrarUsuario_Click"/>
        </div>
        <div class="col-sm-5">
            <asp:GridView ID="GV_Usuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GV_Usuarios_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99"></FooterStyle>

                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>

                <RowStyle BackColor="#F7F7DE"></RowStyle>

                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FBFBF2"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#848384"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#EAEAD3"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#575357"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Id, UserName FROM AspNetUsers"></asp:SqlDataSource>
        </div>
        <div class="col-sm-3">
            <asp:Panel ID="Panel3" runat="server" Enabled="true" Visible="false">
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert">x</button>
                    <strong>Exito! </strong>Operacion ejecutada sobre el Usuario con exito.
                </div>
            </asp:Panel>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <h3>Asignación de Roles</h3>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Usuario: "></asp:Label>
            <asp:Label ID="lblNomUser" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Rol: "></asp:Label>
            <asp:Label ID="lblNomRol" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnRelacion" runat="server" Text="Asignar Rol" OnClick="btnRelacion_Click"/>
        </div>
        <div class="col-sm-6">
            <asp:Panel ID="Panel5" runat="server" Enabled="true" Visible="false">
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert">x</button>
                    <strong>Exito! </strong>Asignacion creada Corectamente.
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" Enabled="true" Visible="false">
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert">x</button>
                    <strong>Fracaso! </strong>Asignacion no creada.
                </div>
            </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' InsertCommand="INSERT INTO AspNetUserRoles(UserId, RoleId) VALUES (@UserId, @RoleId)" SelectCommand="SELECT UserId, RoleId FROM AspNetUserRoles">
                <InsertParameters>
                    <asp:Parameter Name="UserId"></asp:Parameter>
                    <asp:Parameter Name="RoleId"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
