<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inversion.aspx.cs" Inherits="Parcial_2_Analisis_de_Datos.Inversion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h4>Plazos fijos: tasas anuales (TNA, en %)</h4>
    <table class="table">
        <tr>
            <td>Banco</td>
            <td>año 2023</td>
            <td>año 2024</td>
            <td>año 2025</td>
        </tr>
        <tr>
            <td>Banco Provincia</td>
            <td><asp:TextBox ID="txtProv1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtProv2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtProv3" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Banco Nación</td>
            <td><asp:TextBox ID="txtNac1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtNac2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtNac3" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Banco Hipotecario</td>
            <td><asp:TextBox ID="txtHip1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtHip2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtHip3" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
    </table>

    <p>Ingresá las tasas como porcentaje.</p>

    <div>
        <label>Capital a invertir:</label>
        <asp:TextBox ID="txtCapital" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn btn-primary" OnClick="btnCalcular_Click" />
    <br /><br />

    <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>

    <asp:GridView ID="gvRendimientos" runat="server" AutoGenerateColumns="false" CssClass="table">
    <Columns>
        <asp:BoundField DataField="NombreBanco" HeaderText="Banco" />
        <asp:BoundField DataField="Modalidad" HeaderText="Modalidad" />
        <asp:BoundField DataField="Rendimiento" HeaderText="Rendimiento (ganancia)" DataFormatString="{0:C2}" />
    </Columns>
</asp:GridView>

    <asp:Label ID="lblRecomendacion" runat="server" Font-Bold="true"></asp:Label>

</asp:Content>