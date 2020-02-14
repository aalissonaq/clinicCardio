<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark text-uppercase">Painel Incial</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard </li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
            <div class="col-12 col-sm-6 col-md-3">
                <a href="#">
                    <div class="info-box">
                        <span class="info-box-icon bg-info elevation-1">
                            <i class="fas fa-hospital-alt fa-fw fa-lg"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Parceiros Cadastrados</span>
                            <span class="info-box-number">
                              <?php
                              $userSystem = ler('paciente'  , '', "");
                              // echo $userSystem->rowCount();
                              ?>
                                <!-- <small>%</small> -->
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </a>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-12 col-sm-6 col-md-3">
                <a href="">
                    <div class="info-box mb-3">
                        <span class="info-box-icon bg-success elevation-1">
                            <i class="fas fa-user-injured fa-fw fa-lg"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Pacientes Cadastrados</span>
                            <span class="info-box-number">
                              <?php
                              $userSystem = ler('paciente'  , '', "");
                              echo $userSystem->rowCount();
                              ?>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </a>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix hidden-md-up"></div>

            <div class="col-12 col-sm-6 col-md-3">
                <a href="?page=listarExamesGest">
                    <div class="info-box mb-3">
                        <span class="info-box-icon bg-danger elevation-1">
                            <i class="fas fa-vial fa-fw fa-lg"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Exames Cadastrado </span>
                            <span class="info-box-number">
                              <?php
                              $userSystem = ler('exemesac', '', "");
                              echo $userSystem->rowCount();
                              ?>

                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                </a>
                <!-- /.info-box -->
            </div>

            <!-- /.col -->
            <div class="col-12 col-sm-6 col-md-3">
                <a href="?page=listarusuarios">
                    <div class="info-box mb-3">
                        <span class="info-box-icon bg-warning elevation-1">
                            <i class="fas fa-users fa-fw fa-lg"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">

                                Usuários Ativos

                            </span>
                            <span class="info-box-number">
                                <?php
                                $userSystem = ler('users', '', "WHERE flStatusUser = 1");
                                echo $userSystem->rowCount();
                                ?>
                            </span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
            </div>
            <!-- /.col -->
            </a>
        </div>
        <!-- /.row -->

        <!-- Main row -->
        <div class="row">
            <!-- Left col -->
            <div class="col-md-8">
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->



<script>
    document.getElementById('inicio').classList.add("active");
</script>
