<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Act5VB.aspx.vb" Inherits="ProyectoActividad5.Act5VB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>UPP</h3>
        <h5>Alumno: Jesus Daniel Castro Alamilla</h5>
        <h5>Materia: Programacion cliente/servidor</h5>
        <h5>Profesor: M. en C. Arturo Austria Cornejo</h5>
        <h5>Matricula: 2231122132</h5>
    </div>
    <div>
        <asp:TextBox ID="Mon_ori" runat="server" Placeholder="Moneda original"></asp:TextBox>
        <asp:TextBox ID="Mon_des" runat="server" Placeholder="Moneda destino"></asp:TextBox>
    </div>
    <div class="row">
        <div class="col-md-3">
            <asp:Button ID="Deu_Pes" runat="server" Text="Dolares EU a Pesos Mx" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="Dca_Pes" runat="server" Text="Dolares Can a Pesos Mx" />    
        </div>
        <div class="col-md-3">
            <asp:Button ID="Eur_Pes" runat="server" Text="Euros a Pesos Mx" />    
        </div>
        <div class="col-md-3">
            <asp:Button ID="Lib_Pes" runat="server" Text="Libras a Pesos Mx" />    
        </div>
        <div class="col-md-3">
            <asp:Button ID="Pes_Deu" runat="server" Text="Pesos Mx a Dolares EU" />    
        </div>
        <div class="col-md-3">
            <asp:Button ID="Pes_Dca" runat="server" Text="Pesos Mx a Dolares Can" />    
        </div>
        <div class="col-md-3">
            <asp:Button ID="Pes_Eur" runat="server" Text="Pesos Mx a Euros" />    
        </div>
        <div class="col-md-3">
            <asp:Button ID="Pes_Lib" runat="server" Text="Pesos Mx a Libras" />   
        </div>
        <div class="col-md-3">
            <asp:Button ID="Reset" runat="server" Text="Reset" />
        </div>
    </div>
</asp:Content>