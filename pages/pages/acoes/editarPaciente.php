<?php

require_once './../../../data/dbasys.php';
require_once './../../../data/outfunc.php';

// $idP = 0;
// $lendo = ler("paciente", '', "WHERE idPessoa = '{$_POST['idEdit']}' ");
// $dadosUser = $lendo->fetchAll(PDO::FETCH_ASSOC);
// #dados para tebela usuário
// foreach ($dadosUser as $dado) {
//     $idP = $dado['idPessoa'];
// };

if (isset($_POST['gravar']) && $_POST['gravar'] == 'gravar') {

    $dados['nmPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmPessoa']))));
    $dados['docPessoa'] = strip_tags(strip_tags(trim(strtoupper(tiraMascara($_POST['docPessoa'])))));
    $dados['dtNascPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['dtNascPessoa']))));
    $dados['stCepPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['stCepPessoa']))));
    $dados['stLogradouroPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['stLogradouroPessoa']))));
    $dados['nnCasaPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnCasaPessoa']))));
    $dados['stCompleEndPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['stCompleEndPessoa']))));
    $dados['stBairroPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['stBairroPessoa']))));
    $dados['stEstadoPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['stEstadoPessoa']))));
    $dados['nnTelefonePessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnTelefonePessoa']))));
    $dados['nnWhatsappPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnWhatsappPessoa']))));
    $dados['stEmailPessoa'] = strip_tags(strip_tags(trim($_POST['stEmailPessoa'])));
    // $dados['txtObsContatosPessoas'] = strip_tags(strip_tags(trim(strtoupper($_POST['txtObsContatosPessoas']))));

    $updatePessoa = atualizar('pessoa', $dados, "idPessoa = '{$_POST['idEdit']}'");

    // $paciente['idPessoa'] = $dado['idPessoa'];
    $paciente['sexoPaciente'] = strip_tags(strip_tags(trim($_POST['sexoPaciente'])));
    $paciente['strEstadoCivilPaciente'] = strip_tags(strip_tags(trim($_POST['strEstadoCivilPaciente'])));
    $paciente['strNaturalidadePaciente'] = strip_tags(strip_tags(trim($_POST['strNaturalidadePaciente'])));
    $paciente['nnRg'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnRg']))));
    $paciente['nmMae'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmMae']))));
    $paciente['nmPai'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmPai']))));
    $paciente['nmResponsavel'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmResponsavel']))));

    $updateU = atualizar('paciente', $paciente, "idPessoa = '{$_POST['idEdit']}'");

    echo "<script type='text/javascript'>
          alert('Os dados do Paciente {$dados['nmPessoa']} foram  atualizados com sucesso !');
          window.location = '../../../inicio.php?page=listarPaciantes';
        </script>";
}