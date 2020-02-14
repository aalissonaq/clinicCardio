<?php

//switch ($_SESSION['NIVEL']) {
//    Sertor Administrativo
//case 1:
if (!isset($_GET['page']) || $_GET['page'] == null) {
    include "./pages/pages/dashboard.php";
} else {
    switch (@$_GET['page']) {
        case 'inicio':
            include "./pages/pages/dashboard.php";
            break;

        #Usuarios do Sistemas
        case 'edtUsuario':
            include "./pages/pages/edtUsuario.php";
            break;
        case 'edtPasswdUsuario':
            include "./pages/pages/edtPasswdUsuario.php";
            break;
        case 'listarusuarios':
            include "./pages/pages/listausuario.php";
            break;
        case 'verUsuario':
            include "./pages/pages/verUsuario.php";
            break;

        #EXAMES
        case 'listarExamesGest':
            include "./pages/pages/listarExamesGest.php";
            break;
        case 'cadNovoExame':
            include "./pages/pages/cadNovoExame.php";
            break;
        case 'edtExame':
            include "./pages/pages/edtExamesac.php";
            break;
        case 'listBancadaExames':
            include "./pages/pages/listarBancadaExames.php";
            break;
        case 'edtBancada':
            include "./pages/pages/edtBancada.php";
            break;

        #GESTÃO DE MATERIAIS
        case 'listarMateriais':
            include "./pages/pages/listarMareiais.php";
            break;
        case 'edtMaterial':
            include "./pages/pages/edtMaterial.php";
            break;

        #GESTÃO DE SOLICITANTES
        case 'listarTipoSolicitante':
            include "./pages/pages/listarTipoSolicitante.php";
            break;

        #GESTÃO DE CONVÊNIO
        case 'listarConvenios':
            include "./pages/pages/listarConvenios.php";
            break;

        #GESTÃO DE PACIENTE
        case 'listarPaciantes':
            include "./pages/pages/listarPaciantes.php";
            break;
        case 'verPaciente':
            include "./pages/pages/verPaciemte.php";
            break;
        case 'edtPaciente':
            include "./pages/pages/edtPaciemte.php";
            break;

        #CARTÃO
        case 'listarCartoes':
            include "./pages/pages/listaCartoes.php";
            break;
        case 'novoCartao':
            include "./pages/pages/novoCartao.php";
            break;

        #profile
        case 'profile':
            include "./pages/pages/profile.php";
            break;

        #Quando não encontrar pagina
        default:
            include "./pages/404.php";
            break;
    }
}
