<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="ProyectoAct8CECS.Crud.Alumnos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <div>
     <h3>UPP</h3>
     <h5>Alumno: Jesus Daniel Castro Alamilla</h5>
     <h5>Materia: Programacion cliente/servidor</h5>
     <h5>Profesor: M. en C. Arturo Austria Cornejo</h5>
     <h5>Matricula: 2231122132</h5>
</div>
 <div class="text-center">
     <h3>Pagina Alumnos</h3>
 </div>
 
 <div class="row">
     <div class="col-md-3">
         <asp:TextBox ID="txt_mat" runat="server" Placeholder="Matricula"></asp:TextBox>
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
             <asp:Button ID="Bt_modificar" runat="server" Text="Modificar" Style="background-color: yellow; color: black;" OnClick="Bt_modificar_Click"/>
         </div>
         <div class="form-group col-md-4">
             <asp:Button ID="Bt_eliminar" runat="server" Text="Eliminar" Style="background-color: red; color: black;" OnClick="Bt_eliminar_Click"/>
         </div>
     </div>
     <div class="row">
         <div class="col-md-12">
             <asp:GridView ID="GV_alumnos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAlumnosEdoMunLoc" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GV_alumnos_SelectedIndexChanged">
                 <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                     <asp:BoundField DataField="Matricula" HeaderText="Matricula" SortExpression="Matricula"></asp:BoundField>
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
                 <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                 <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True"></FooterStyle>

                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                 <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                 <RowStyle BackColor="#E3EAEB"></RowStyle>

                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                 <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                 <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                 <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                 <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
             </asp:GridView>
             <asp:SqlDataSource runat="server" ID="SqlDataSourceAlumnosEdoMunLoc" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Matricula, Nombre, APaterno, AMaterno, RFC, CURP, Sexo, estado, municipio, localidad FROM AlumnosEdoMunLoc"></asp:SqlDataSource>
         </div>
     </div>
 </div>
</asp:Content>
