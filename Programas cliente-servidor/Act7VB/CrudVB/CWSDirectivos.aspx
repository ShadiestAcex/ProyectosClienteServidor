<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CWSDirectivos.aspx.vb" Inherits="ProyectoConsWSVB.CWSDirectivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                    <div>
        <h3>UPP</h3>
        <h5>Alumno: Jesus Daniel Castro Alamilla</h5>
        <h5>Materia: Programacion cliente/servidor</h5>
        <h5>Profesor: M. en C. Arturo Austria Cornejo</h5>
        <h5>Matricula: 2231122132</h5>
        </div>
            <div class="text-center">
    <h3>Pagina Directivos</h3>
</div>

<div class="row">
    <div class="col-md-3">
        <asp:TextBox ID="txt_no" runat="server" Placeholder="Nomina"></asp:TextBox>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt_nom" runat="server" Placeholder="Nombre"></asp:TextBox>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt_ap" runat="server" Placeholder="Apellido paterno"></asp:TextBox>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt_am" runat="server" Placeholder="Apellido materno"></asp:TextBox>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt_rfc" runat="server" Placeholder="RFC"></asp:TextBox>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt_curp" runat="server" Placeholder="CURP"></asp:TextBox>
    </div>
    <div class="col-md-3">
        <asp:TextBox ID="txt_sex" runat="server" PlaceHolder="Sexo"></asp:TextBox>
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:DropDownList ID="ddl_estados" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceEstados" DataTextField="estado" DataValueField="clv_estado"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceEstados" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT clv_estado, estado FROM Estados"></asp:SqlDataSource>
        </div>
        <div class="col-md-4">
            <asp:DropDownList ID="ddl_municipios" runat="server" DataSourceID="SqlDataSourceMunicipios" DataTextField="municipio" DataValueField="clv_municipio" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceMunicipios" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT clv_municipio, municipio FROM Municipios WHERE (clv_estado = @clv_estado) ORDER BY municipio">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_estados" PropertyName="SelectedValue" Name="clv_estado"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="col-md-4">
            <asp:DropDownList ID="ddl_localidades" runat="server" DataSourceID="SqlDataSourceLocalidades" DataTextField="localidad" DataValueField="clv_localidad" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceLocalidades" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT clv_localidad, localidad, latitud, longitud, altitud FROM Localidades WHERE (clv_estado = @clv_estado) AND (clv_municipio = @clv_municipio) ORDER BY localidad">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_estados" PropertyName="SelectedValue" Name="clv_estado"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="ddl_municipios" PropertyName="SelectedValue" Name="clv_municipio"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

    <div class="row">
        <div class="form-group col-md-4">
            <asp:Button ID="Bt_agregar" runat="server" Text="Agregar" Style="background-color: green; color: black;" OnClick="Bt_agregar_Click" />
        </div>
        <div class="form-group col-md-4">
            <asp:Button ID="Bt_modificar" runat="server" Text="Modificar" Style="background-color: yellow; color: black;" OnClick="Bt_modificar_Click" />
        </div>
        <div class="form-group col-md-4">
            <asp:Button ID="Bt_eliminar" runat="server" Text="Eliminar" Style="background-color: red; color: black;" OnClick="Bt_eliminar_Click" />
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="GV_directivos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDirectivosEdoMunLoc" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GV_directivos_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                    <asp:BoundField DataField="Nomina" HeaderText="Nomina" SortExpression="Nomina"></asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                    <asp:BoundField DataField="APaterno" HeaderText="APaterno" SortExpression="APaterno"></asp:BoundField>
                    <asp:BoundField DataField="AMaterno" HeaderText="AMaterno" SortExpression="AMaterno"></asp:BoundField>
                    <asp:BoundField DataField="RFC" HeaderText="RFC" SortExpression="RFC"></asp:BoundField>
                    <asp:BoundField DataField="CURP" HeaderText="CURP" SortExpression="CURP"></asp:BoundField>
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo"></asp:BoundField>
                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado"></asp:BoundField>
                    <asp:BoundField DataField="municipio" HeaderText="municipio" SortExpression="municipio"></asp:BoundField>
                    <asp:BoundField DataField="localidad" HeaderText="localidad" SortExpression="localidad"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099"></FooterStyle>

                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#FFFFCC" ForeColor="#330099"></PagerStyle>

                <RowStyle BackColor="White" ForeColor="#330099"></RowStyle>

                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FEFCEB"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#AF0101"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#F6F0C0"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#7E0000"></SortedDescendingHeaderStyle>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSourceDirectivosEdoMunLoc" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Nomina, Nombre, APaterno, AMaterno, RFC, CURP, Sexo, estado, municipio, localidad FROM DirectivosEdoMunLoc"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
