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
  $dados['stCidadePessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['stCidadePessoa']))));
  $dados['stEstadoPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['stEstadoPessoa']))));
  $dados['nnTelefonePessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnTelefonePessoa']))));
  $dados['nnWhatsappPessoa'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnWhatsappPessoa']))));
  $dados['stEmailPessoa'] = strip_tags(strip_tags(trim($_POST['stEmailPessoa'])));
  // $dados['txtObsContatosPessoas'] = strip_tags(strip_tags(trim(strtoupper($_POST['txtObsContatosPessoas']))));

  //Verifica de já Existe

  $isRegisteredPerson = ler('pessoa', '', "WHERE docPessoa = '{$dados['docPessoa']}'")->rowCount();

  if ($isRegisteredPerson != 0) {
    echo "<script type='text/javascript'> alert('O Paciente {$dados['nmPessoa']} já possui cadastro!'); </script>";
  } else {
    $inserido = inseir('pessoa', $dados);
    $idRegisteredPerson = null;
    if ($inserido) {
      $dadosPessoas = ler('pessoa', '', "WHERE docPessoa = '{$dados['docPessoa']}'")->fetchAll(PDO::FETCH_ASSOC);
      foreach ($dadosPessoas as $dataPessoa) {
        $idRegisteredPerson = $dataPessoa['idPessoa'];
      }
      $paciente['idPessoa'] = $idRegisteredPerson;
      $paciente['sexoPaciente'] = strip_tags(strip_tags(trim($_POST['sexoPaciente'])));
      $paciente['strEstadoCivilPaciente'] = strip_tags(strip_tags(trim($_POST['strEstadoCivilPaciente'])));
      $paciente['strNaturalidadePaciente'] = strip_tags(strip_tags(trim($_POST['strNaturalidadePaciente'])));
      $paciente['nnRg'] = strip_tags(strip_tags(trim(strtoupper($_POST['nnRg']))));
      $paciente['nmMae'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmMae']))));
      $paciente['nmPai'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmPai']))));
      $paciente['nmResponsavel'] = strip_tags(strip_tags(trim(strtoupper($_POST['nmResponsavel']))));

      $isRegisteredPatient = ler('paciente', '', "WHERE idPessoa = '{$idRegisteredPerson}'")->rowCount();

      if ($isRegisteredPatient != 0) {
      } else {
        inseir('paciente', $paciente);
      }
    }
  }
  echo "<script type='text/javascript'> alert('O Paciente {$dados['nmPessoa']} foi Cadastrado com sucesso !');
    window.location = '../../../inicio.php?page=listarPaciantes';
    </script>";





  // echo "<script type='text/javascript'>
  // alert('O Paciente {$dados['nmPessoa']} foi Cadastrado com sucesso !');
  //      window.location = '../../../inicio.php?page=listarPaciantes';
  //     </script>";
  //echo "<div class=\"alert alert-success text-uppercase\" role=\"alert\">O paciente {$dados['nmPessoa']} foi Cadastrado com sucesso !</div>";
  // }
}
//}