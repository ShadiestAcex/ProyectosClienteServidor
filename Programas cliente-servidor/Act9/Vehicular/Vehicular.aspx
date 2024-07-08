<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vehicular.aspx.cs" Inherits="ProyectoAct9CS.Vehicular.Vehicular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>UPP</h3>
        <h5>Alumno: Jesus Daniel Castro Alamilla</h5>
        <h5>Materia: Programacion cliente/servidor</h5>
        <h5>Profesor: M. en C. Arturo Austria Cornejo</h5>
        <h5>Matricula: 2231122132</h5>
    </div>
    <div class="text-center">
        <h3>Pagina Registro vehicular</h3>
    </div>
    <div class="row">
        <div class="col-md-3">
        <asp:Label ID="lbl_placa" runat="server" Text="Placa"></asp:Label>
        <asp:TextBox ID="tbx_placa" runat="server" placeholder="Placa"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-3">
                <asp:Label ID="lbl_marca" runat="server" Text="Marca"></asp:Label>
                <asp:DropDownList ID="ddl_marca" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceMarca" DataTextField="Marca" DataValueField="Cve_marca"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceMarca" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Cve_marca, Marca FROM Marcas"></asp:SqlDataSource>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lbl_submarca" runat="server" Text="Submarca"></asp:Label>
                <asp:DropDownList ID="ddl_submarca" runat="server" DataSourceID="SqlDataSourceSubmarca" DataTextField="Submarca" DataValueField="Cve_suvmarca" AutoPostBack="True"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceSubmarca" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Cve_suvmarca, Submarca FROM Submarcas WHERE (Clv_marca = @cve_marca) ORDER BY Submarca">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_marca" PropertyName="SelectedValue" Name="cve_marca"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="col-md-3">
                <asp:Label ID="lbl_modelo" runat="server" Text="Modelo"></asp:Label>
                <asp:DropDownList ID="ddl_modelo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceModelos" DataTextField="anio" DataValueField="id_anio"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceModelos" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT id_anio, anio FROM ModeloAños"></asp:SqlDataSource>
            </div>
            <div class="col-md-3">
                <asp:Label ID="lbl_color" runat="server" Text="Colores"></asp:Label>
                <asp:DropDownList ID="ddl_colores" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceColores" DataTextField="nombre_color" DataValueField="id_color"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceColores" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT id_color, nombre_color FROM ColoresAuto"></asp:SqlDataSource>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="lbl_nds" runat="server" Text="Numero de serie"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lbl_ndm" runat="server" Text="Numero de motor"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lbl_com" runat="server" Text="Combustible"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lbl_edo" runat="server" Text="Estado"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lbl_mun" runat="server" Text="Municipio"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="lbl_loc" runat="server" Text="Localidad"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="tbx_nds" runat="server" placeholder="Numero de Serie"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="tbx_ndm" runat="server" placeholder="Numero de Motor"></asp:TextBox>
           </div>
            <div class="col-md-2">
                <asp:DropDownList ID="ddl_combustible" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCombustibles" DataTextField="conbustible" DataValueField="id_combus"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceCombustibles" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT id_combus, conbustible FROM Combustibles"></asp:SqlDataSource>
            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="ddl_estados" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceEstados" DataTextField="estado" DataValueField="clv_estado"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceEstados" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT clv_estado, estado FROM Estados"></asp:SqlDataSource>

            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="ddl_municipios" runat="server" DataSourceID="SqlDataSourceMunicipios" DataTextField="municipio" DataValueField="clv_municipio" AutoPostBack="True"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceMunicipios" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT clv_municipio, municipio FROM Municipios WHERE (clv_estado = @clv_estado) ORDER BY municipio">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_estados" PropertyName="SelectedValue" Name="clv_estado"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
            <div class="col-md-2">
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
            <div class="col-md-4">
                <asp:Label ID="lbl_mat_nom" runat="server" Text="Matricula o Nomina del dueño"></asp:Label>
            </div>
            <div class="col-md-8">
                <asp:Label ID="lbl_infd" runat="server" Text="Información del Dueño"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="tbx_mat_nom" runat="server" placeholder="Matricula o Nomina"></asp:TextBox>
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbx_infd" runat="server" ReadOnly="true" style="width: 100%; box-sizing: border-box;"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:CheckBox ID="cbx_dact" runat="server"/>
                <asp:Label ID="lbl_dact" runat="server" AssociatedControlID="cbx_dact" Text="Dueño Actual"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:CheckBox ID="cbx_dant" runat="server"/>
                <asp:Label ID="lbl_dant" runat="server" AssociatedControlID="cbx_dant" Text="Dueño anterior"></asp:Label>
            </div>
        </div> 
        <div class="col-md-12 text-center">
                <asp:Label ID="lbl_gv_dv" runat="server" Text="Dueño de Vehiculos"></asp:Label>
         </div>
        <div class="row">
            <asp:GridView ID="GV_DueVeh" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDueVeh" OnSelectedIndexChanged="GV_DueVeh_SelectedIndexChanged" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                    <asp:BoundField DataField="Mat_Nom" HeaderText="Mat_Nom" SortExpression="Mat_Nom"></asp:BoundField>
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre"></asp:BoundField>
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

                    <asp:CheckBoxField DataField="DueAct" HeaderText="DueAct" SortExpression="DueAct"></asp:CheckBoxField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF"></HeaderStyle>

                <PagerStyle HorizontalAlign="Left" BackColor="#99CCCC" ForeColor="#003399"></PagerStyle>

                <RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceDueVeh" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT DISTINCT Vehiculos.Mat_Nom, AluMasDir.nombre, AluMasDir.APaterno, AluMasDir.AMaterno, AluMasDir.RFC, AluMasDir.CURP, AluMasDir.Sexo, AluMasDir.estado, AluMasDir.municipio, AluMasDir.localidad, AluMasDir.latitud, AluMasDir.longitud, Vehiculos.DueAct FROM Vehiculos INNER JOIN AluMasDir ON Vehiculos.Mat_Nom = AluMasDir.Nomina"></asp:SqlDataSource>
        </div>
        <div class="row">
            <div class="form-group col-md-4">
                <asp:Button ID="Bt_agregar" runat="server" Text="Agregar" Style="background-color: green; color: black; height: 34px;" OnClick="Bt_agregar_Click" />
            </div>
            <div class="form-group col-md-4">
                <asp:Button ID="Bt_modificar" runat="server" Text="Modificar" Style="background-color: yellow; color: black; height: 34px;" OnClick="Bt_modificar_Click" />
            </div>
            <div class="form-group col-md-4">
                <asp:Button ID="Bt_eliminar" runat="server" Text="Eliminar" Style="background-color: red; color: black; height: 34px;" OnClick="Bt_eliminar_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 text-center">
                <asp:Label ID="lbl_gv_mp" runat="server" Text="Mapa"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <asp:GridView ID="gv_due_veh" runat="server">
                    
                </asp:GridView>
            </div>
            <div class="col-md-4">
                <map:GoogleMap ID="GoogleMap1" runat="server" MapType="Hybrid" Zoom="16" Latitude="19.9798047" Longitude="-98.6853093" CssClass="map" DefaultAddress="Universidad Politecnica de Pachuca" Width="100%">
                </map:GoogleMap>
            </div>
        </div>
        <div class="row">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
            <asp:Label ID="lbl_gv_rv" runat="server" Text="Registro Vehicular"></asp:Label>
            <div class="col-md-8">
                <asp:GridView ID="gv_Reg_Veh" runat="server" DataSourceID="SqlDataSourceRegisVeh" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="gv_Reg_Veh_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                        <asp:BoundField DataField="Nomina" HeaderText="Nomina" SortExpression="Nomina"></asp:BoundField>
                        <asp:CheckBoxField DataField="DueAct" HeaderText="DueAct" SortExpression="DueAct"></asp:CheckBoxField>
                        <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca"></asp:BoundField>
                        <asp:BoundField DataField="Submarca" HeaderText="Submarca" SortExpression="Submarca"></asp:BoundField>
                        <asp:BoundField DataField="nombre_color" HeaderText="nombre_color" SortExpression="nombre_color"></asp:BoundField>
                        <asp:BoundField DataField="anio" HeaderText="anio" SortExpression="anio"></asp:BoundField>
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado"></asp:BoundField>
                        <asp:BoundField DataField="municipio" HeaderText="municipio" SortExpression="municipio"></asp:BoundField>
                        <asp:BoundField DataField="localidad" HeaderText="localidad" SortExpression="localidad"></asp:BoundField>
                        <asp:BoundField DataField="Placa" HeaderText="Placa" SortExpression="Placa"></asp:BoundField>
                        <asp:BoundField DataField="conbustible" HeaderText="conbustible" SortExpression="conbustible"></asp:BoundField>
                        <asp:BoundField DataField="Num_serie" HeaderText="Num_serie" SortExpression="Num_serie"></asp:BoundField>
                        <asp:BoundField DataField="Num_motor" HeaderText="Num_motor" SortExpression="Num_motor"></asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Left" BackColor="#99CCCC" ForeColor="#003399"></PagerStyle>

                    <RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceRegisVeh" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT AluMasDir.Nomina, Vehiculos.DueAct, Marcas.Marca, Submarcas.Submarca, ColoresAuto.nombre_color, ModeloAños.anio, Estados.estado, Municipios.municipio, Localidades.localidad, Vehiculos.Placa, Combustibles.conbustible, Vehiculos.Num_serie, Vehiculos.Num_motor FROM Municipios INNER JOIN Estados ON Municipios.clv_estado = Estados.clv_estado INNER JOIN Localidades ON Municipios.clv_municipio = Localidades.clv_municipio AND Estados.clv_estado = Localidades.clv_estado INNER JOIN Vehiculos INNER JOIN AluMasDir ON Vehiculos.Mat_Nom = AluMasDir.Nomina ON Estados.clv_estado = Vehiculos.clv_estado AND Municipios.clv_municipio = Vehiculos.clv_municipio AND Localidades.clv_localidad = Vehiculos.clv_localidad INNER JOIN ModeloAños ON Vehiculos.Clv_modelo = ModeloAños.id_anio INNER JOIN Marcas ON Vehiculos.Clv_marca = Marcas.Cve_marca INNER JOIN Submarcas ON Vehiculos.Clv_submarca = Submarcas.Cve_suvmarca AND Marcas.Cve_marca = Submarcas.Clv_marca INNER JOIN Combustibles ON Vehiculos.Clv_combus = Combustibles.id_combus INNER JOIN ColoresAuto ON Vehiculos.Clv_color = ColoresAuto.id_color WHERE (AluMasDir.Nomina = @Nomina)">
                        <SelectParameters>
                            <asp:Parameter Name="Nomina" Type="String" DefaultValue="" />
                        </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
