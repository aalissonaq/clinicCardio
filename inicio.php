<?php
session_start();
require_once './data/dbasys.php';
require_once './data/outfunc.php';

if (!isset($_SESSION['USUARIO'])) {
  header("Location: index.php");
} else if (isset($_GET['acao']) && $_GET['acao'] === 'sair') {
  LogRegister('LogOut', "Usuário {$_SESSION['USUARIO']} Saiu do Sistema ", $_SESSION['ID']);
  session_destroy();
  header("Location: index.php");
} else if (isset($_GET['acao']) && $_GET['acao'] === 'bloc') {
  // $blocId = $_GET['blocID'];
  $dados['flStatusUser'] = '0';
  $bloc = atualizar('users', $dados, "id = {$_GET['blocID']}");
  if ($bloc) {
    header("Location: ?page=listarusuarios");
  }
} else if (isset($_GET['acao']) && $_GET['acao'] === 'unbloc') {
  // $blocId = $_GET['blocID'];
  $dados['flStatusUser'] = '1';
  $bloc = atualizar('users', $dados, "id = {$_GET['blocID']}");
  if ($bloc) {
    header("Location: ?page=listarusuarios");
  }
} else if (isset($_GET['acao']) && $_GET['acao'] === 'blocService') {
  // $blocId = $_GET['blocID'];
  $dados['statusServico'] = '0';
  $blocService = atualizar('servicos', $dados, "idServicos = {$_GET['id']}");
  if ($blocService) {
    header("Location: ?page=listarServicos");
  }
} else if (isset($_GET['acao']) && $_GET['acao'] === 'unblocService') {
  // $blocId = $_GET['blocID'];
  $dados['statusServico'] = '1';
  $blocService = atualizar('servicos', $dados, "idServicos = {$_GET['id']}");
  if ($blocService) {
    header("Location: ?page=listarServicos");
  }
}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />

  <title>ClinicCardio | Sistema</title>
  <link rel="shortcut icon" href="./image/iconeBbranco.png" type="image/x-icon" />

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css" />
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" />
  <!-- dataTables -->
  <!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4-4.1.1/jq-3.3.1/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/r-2.2.3/datatables.min.css"/> -->
  <link rel="stylesheet" type="text/css"
    href="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/r-2.2.3/datatables.min.css" />
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css" />

  <link rel="stylesheet" href="//cdn.materialdesignicons.com/5.4.55/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="node_modules/@mdi/font/css/materialdesignicons.min.css">
  <!-- <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.5.95/css/materialdesignicons.min.css"> -->

  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">


</head>

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
  <div class="wrapper">
    <!-- Navbar -->
    <?php
    require_once './_includes/_navbarRoot.php';
    ?>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-danger elevation-4">
      <!-- Brand Logo -->
      <a href="inicio.php" class="brand-link navbar-danger">
        <img src="./image/iconeBbranco.png" alt="ClinicCardio" title="ClinicCardio" class="brand-image ml-2"
          style="opacity: 1" />
        <span class="brand-text font-weight-light">
          <b>ClincCardio</b>| Sistema </span>
      </a>

      <!-- Sidebar -->
      <?php require_once './_includes/_sidebarRoot.php'; ?>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <?php
      require_once './conteudo.php';
      ?>
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <footer class="main-footer">
      <strong>Copyright &copy; 2019 - <?= date('Y', time()); ?> |
        <a href="https://caririinovacao.com.br" target="_new">Desenvolvido por Cariri Inovação </a> | </strong> <i>Todos
        os
        direitos reservados.</i>
      <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> 2.0
      </div>
    </footer>
  </div>
  <!-- ./wrapper -->

  <!-- REQUIRED SCRIPTS -->
  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.js"></script>

  <!-- OPTIONAL SCRIPTS -->
  <script src="dist/js/demo.js"></script>

  <!-- PAGE PLUGINS -->
  <!-- jQuery Mapael -->
  <script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
  <script src="plugins/raphael/raphael.min.js"></script>
  <script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
  <script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
  <!-- ChartJS -->
  <script src="plugins/chart.js/Chart.min.js"></script>
  <!-- DataTables -->
  <script src="plugins/datatables/jquery.dataTables.js"></script>
  <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
  <!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
      <script type="text/javascript" src="https://cdn.datatables.net/v/bs4-4.1.1/jq-3.3.1/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/r-2.2.3/datatables.min.js"></script> -->
  <!-- PAGE SCRIPTS -->
  <script src="dist/js/pages/dashboard2.js"></script>

  <!-- jquery.mask -->
  <script src="./dist/js/jquery.mask.min.js" type="text/javascript"></script>
  <!-- JS DO APP-->
  <script src="./dist/js/app.js" type="text/javascript"></script>
  <!-- Summernote -->
  <script src="./plugins/summernote/summernote-bs4.min.js"></script>
  <!-- include summernote-pt-BR -->
  <script src="./plugins/summernote/lang/summernote-pt-BR.min.js"></script>
  <!-- Select2 -->
  <script src="./plugins/select2/js/select2.full.min.js"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="./plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <!-- Bootstrap Switch -->
  <script src="./plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>



</body>

</html>