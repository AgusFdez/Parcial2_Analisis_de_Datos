<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inversion.aspx.cs" Inherits="Parcial_2_Analisis_de_Datos.Inversion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="table">
        <tr>
            <td style="width: 180px">Banco Provincia</td>
            <td>Interes mensual</td>
            <td>Interes Trimestral</td>
            <td>Interes Anual</td>
        </tr>
        <tr>
            <td style="width: 180px">año 2023</td>
            <td><asp:TextBox ID="txtInt_Mensual_Provincia1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_Provincia1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_Provincia1" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 180px">año 2024</td>
            <td><asp:TextBox ID="txtInt_Mensual_Provincia2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_Provincia2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_Provincia2" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 180px">año 2025</td>
            <td><asp:TextBox ID="txtInt_Mensual_Provincia3" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_Provincia3" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_Provincia3" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
    </table>
    <br />
        <table class="table">
        <tr>
            <td style="width: 180px">Banco Nacion&nbsp; </td>
            <td>Interes mensual</td>
            <td>Interes Trimestral</td>
            <td>Interes Anual</td>
        </tr>
        <tr>
            <td style="width: 180px">año 2023</td>
            <td><asp:TextBox ID="txtInt_Mensual_nacion1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_nacion1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_nacion1" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 180px">año 2024</td>
            <td><asp:TextBox ID="txtInt_Mensual_nacion2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_nacion2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_nacion2" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 180px">año 2025</td>
            <td><asp:TextBox ID="txtInt_Mensual_nacion3" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_nacion3" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_nacion3" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
    </table>
    <br />
        <table class="table">
        <tr>
            <td style="width: 180px">Banco Hipotecario</td>
            <td>Interes mensual</td>
            <td>Interes Trimestral</td>
            <td>Interes Anual</td>
        </tr>
        <tr>
            <td style="width: 180px">año 2023</td>
            <td><asp:TextBox ID="txtInt_Mensual_hipotecario1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_hipotecario1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_hipotecario1" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 180px">año 2024</td>
            <td><asp:TextBox ID="txtInt_Mensual_hipotecario2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_hipotecario2" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_hipotecario2" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 180px">año 2025</td>
            <td><asp:TextBox ID="txtInt_Mensual_hipotecario3" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Trimestral_hipotecario3" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td><asp:TextBox ID="txtInt_Anual_hipotecario3" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
    </table>
    <br />

    <table class="table">
        <tr>
            <td style="width: 50%">Ingrese capital a calcular: <asp:TextBox ID="txtCapital" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="btnCalcular" runat="server" Text="Calcular" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
