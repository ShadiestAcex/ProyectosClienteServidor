<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Maestros.aspx.cs" Inherits="ProyectoAct9CS.Crud.Maestros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>UPP</h3>
        <h5>Alumno: Jesus Daniel Castro Alamilla</h5>
        <h5>Materia: Programacion cliente/servidor</h5>
        <h5>Profesor: M. en C. Arturo Austria Cornejo</h5>
        <h5>Matricula: 2231122132</h5>
    </div>
    <div class="text-center">
        <h3>Pagina Maestros</h3>
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
                <asp:Button ID="Bt_modificar" runat="server" Text="Modificar" Style="background-color: yellow; color: black; height: 34px;" OnClick="Bt_modificar_Click" />
            </div>
            <div class="form-group col-md-4">
                <asp:Button ID="Bt_eliminar" runat="server" Text="Eliminar" Style="background-color: red; color: black;" OnClick="Bt_eliminar_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GV_maestros" runat="server" AutoGenerateColumns="False" DataSourceID="NewSqlDataSourceMaestrosEdoMunLoc" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GV_maestros_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
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
                        <asp:BoundField DataField="latitud" HeaderText="latitud" SortExpression="latitud"></asp:BoundField>
                        <asp:BoundField DataField="longitud" HeaderText="longitud" SortExpression="longitud"></asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C"></PagerStyle>

                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>

                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#F4F4FD"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#5A4C9D"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#D8D8F0"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#3E3277"></SortedDescendingHeaderStyle>
                </asp:GridView>

                <asp:SqlDataSource runat="server" ID="NewSqlDataSourceMaestrosEdoMunLoc" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Nomina, Nombre, APaterno, AMaterno, RFC, CURP, Sexo, estado, municipio, localidad, latitud, longitud FROM NewMaestrosEdoMunLoc"></asp:SqlDataSource>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceMaestrosEdoMunLoc" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Nomina, Nombre, APaterno, AMaterno, RFC, CURP, Sexo, estado, municipio, localidad FROM MaestrosEdoMunLoc"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <map:GoogleMap ID="GoogleMap1" runat="server" MapType="Hybrid" Zoom="16" Latitude="19.9798047" Longitude="-98.6853093" CssClass="map" DefaultAddress="Universidad Politecnica de Pachuca" Width="100%">
            </map:GoogleMap>
        </div>
   </div>
</asp:Content>
