<?php

require_once './../../../data/dbasys.php';
require_once './../../../data/outfunc.php';

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
    // echo '<pre>';
    // print_r($dados);
    // echo '</pre>';
    // echo '<pre>';
    // print_r($paciente);
    // echo '</pre>';
    // $lendo = ler("pessoa", '', "WHERE nmPessoa = '{$dados['nmPessoa']}' OR docPessoa = '{$dados['docPessoa']}' ");
    // $verifica = $lendo->rowCount();
    // if ($verifica >= 1) {
    //     echo "<script type='text/javascript'>
    //         alert('O Usuário {$dados['nmPessoa']} já possui cadastro !');
    //         window.location = '?page=novosuario';
    //         </script>";
    //echo "<div class=\"alert alert-danger text-uppercase\" role=\"alert\">O Usuário {$dados['nmPessoa']} já possui cadastro !</div>";
    // } else {
    $inserido = inseir('pessoa', $dados);

    if ($inserido == true) {
        $lendo = ler("pessoa", '', "WHERE nmPessoa = '{$dados['nmPessoa']}' AND docPessoa = '{$dados['docPessoa']}' ");
        $dadosPessoa = $lendo->fetchAll(PDO::FETCH_ASSOC);
        #dados para tebela usuário
        foreach ($dadosPessoa as $dado) {

            $paciente['idPessoa'] = $dado['idPessoa'];
            $paciente['sexoPaciente'] = strip_tags(strip_tags(trim($_POST['sexoPaciente'])));
            $paciente['strEstadoCivilPaciente'] = strip_tags(strip_tags(trim($_POST['strEstadoCivilPaciente'])));
            $paciente['strNaturalidadePaciente'] = strip_tags(strip_tags(trim($_POST['strNaturalidadePaciente'])));
            $paciente['srtNacionalidade'] = strip_tags(strip_tags(trim(strtoupper($_POST['srtNacionalidade']))));
            $paciente['nnRg'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnRg']))));
            $paciente['nnCNS'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnCNS']))));
            $paciente['nmMae'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmMae']))));
            $paciente['nmPai'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmPai']))));
            $paciente['strRaca'] = strip_tags(strip_tags(trim(strtoupper($_POST['strRaca']))));
            $paciente['nmResponsavel'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmResponsavel']))));

            inseir('paciente', $paciente);
        }
    }

    echo "<script type='text/javascript'>
          alert('O Paciente {$dados['nmPessoa']} foi Cadastrado com sucesso !');
          window.location = '../../../inicio.php?page=listarPaciantes';
        </script>";
    //echo "<div class=\"alert alert-success text-uppercase\" role=\"alert\">O paciente {$dados['nmPessoa']} foi Cadastrado com sucesso !</div>";
    // }
}
//}
