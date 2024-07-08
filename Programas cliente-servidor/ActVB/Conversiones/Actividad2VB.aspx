<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Actividad2VB.aspx.vb" Inherits="Act2_VB.Actividad2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>UPP</h3>
        <h5>Alumno: Jesus Daniel Castro Alamilla</h5>
        <h5>Materia: Programacion cliente/servidor</h5>
        <h5>Profesor: M. en C. Arturo Austria Cornejo</h5>
        <h5>Matricula: 2231122132</h5>
    </div>
    <div>
        <asp:TextBox ID="MonOri" runat="server" OnTextChanged="MonOri_TextChanged" Placeholder="Moneda Original"></asp:TextBox>
        <asp:TextBox ID="TxtMonO" runat="server" OnTextChanged="TxtMonO_TextChanged" ReadOnly="true"></asp:TextBox>
        <asp:TextBox ID="MonDes" runat="server" OnTextChanged="MonDes_TextChanged" Placeholder="Moneda Destino" ></asp:TextBox>
        <asp:TextBox ID="TxtMonD" runat="server" OnTextChanged="TxtMonD_TextChanged" ReadOnly="true"></asp:TextBox>
    </div>
    <div class="row">
        <div class="col-md-3">
            <asp:Button ID="DolPes" runat="server" Text="Dolares EU a Pesos Mx" OnClick="DolPes_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="DcaPes" runat="server" Text="Dolares Can a Pesos Mx" OnClick="DcaPes_Click" />    
        </div>
        <div class="col-md-3">
            <asp:Button ID="EurPes" runat="server" Text="Euros a Pesos Mx" OnClick="EurPes_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="LibPes" runat="server" Text="Libras a Pesos Mx" OnClick="LibPes_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="PesDol" runat="server" Text="Pesos Mx a Dolares EU" OnClick="PesDol_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="PesDca" runat="server" Text="Pesos Mx a Dolar Can" OnClick="PesDca_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="PesEur" runat="server" Text="Pesos Mx a Euros" OnClick="PesEur_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="PesLib" runat="server" Text="Pesos Mx a Libras" OnClick="PesLib_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="Res" runat="server" Text="Reset" OnClick="Res_Click" />
        </div>
    </div>
</asp:Content>
