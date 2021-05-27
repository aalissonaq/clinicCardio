<?php

require_once './../../../data/dbasys.php';
require_once './../../../data/outfunc.php';


if (isset($_POST['gravar']) && $_POST['gravar'] == 'gravar') {

  $dados['descricaoDespesa'] = strip_tags(strip_tags(trim(strtoupper($_POST['descricaoDespesa']))));
  //$vlServ = tiraMascara($_POST['vlServico']);
  // $tmVl = strlen(tiraMascara($_POST['vlServico'])) - 2;
  $vl = substr(tiraMascara($_POST['vlDespesa']), 0, strlen(tiraMascara($_POST['vlDespesa'])) - 2) . '.' . substr(tiraMascara($_POST['vlDespesa']), -2);

  $dados['vlDespesa'] = strip_tags(strip_tags(trim(strtoupper($vl))));
  //$dados['vlServico'] = strip_tags(strip_tags(trim(strtoupper(str_replace(",", ".", $_POST['vlServico'])))));
  $dados['tipoDespesa'] = strip_tags(strip_tags(trim(strtoupper($_POST['tipoDespesa']))));
  $dados['statusDespesa'] = strip_tags(strip_tags(trim(strtoupper($_POST['statusDespesa']))));

  inseir('despesa', $dados);

  echo "<script type='text/javascript'> alert('A Despesa  {$dados['descricaoDespesa']} foi Cadastrado com sucesso !');
   window.location = '../../../inicio.php?page=listardispesas';
   </script>";
}
//}