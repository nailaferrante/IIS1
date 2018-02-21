<%@page Language="C#"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Componentes</title>
<style type="text/css">
    form{
        width:70%;
        margin:100px auto;
        padding:10px;
        border: 1px #ccc dotted;
        box-shadow: 5px 5px 10px #333;
    }
    span{
        font-family:Arial, Helvetica, sans-serif;
        font-size: 10pt;
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }
    input[type=text]{
        width:95%;
        padding:5px;
        display:block;
        margin-bottom: 10px;
    }
    input[type=submit]{
        padding:10px;
        background: rgb(109, 61, 129);
        border:0px;
        color: #FFF;
        font-weight: bold;
    }
    input[type=text]:hover{
        background: rgba(207, 55, 212, .1);
    }

</style>
</head>
<script runat="server">
    private void Botao_Click(Object sender, EventArgs ev){
        lblMensagem.Text = "Nome: " + txtNome.Text + "   " + "E-mail: " + txtEmail.Text; //.Text pq vamos pegar o texto de dentro da caixa
    }
</script>
<body>
    <form runat="server">
        <asp:Label id="lblNome" text="Nome:" runat="server"/>
        <asp:TextBox id="txtNome" runat="server"/>
        
        <asp:Label id="lblEmail" text="Email:" runat="server"/>
        <asp:TextBox id="txtEmail" runat="server"/>

        <asp:Button id="btnExibir" text="Exibir" runat="server" onclick="Botao_Click"/>
        
        <asp:Label id="lblMensagem" runat="server"/>


    </form>
</body>
</html>