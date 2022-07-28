<html>

<head>
    <meta content="text/html; charset=UTF-8" http-equiv="content-type">
    <style>
        body {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
    </style>
</head>

<body>
    <div style="text-align: center; background-color: white;">
        <h1 align="center" style="margin-top: 30px;">Verifikasi Berkas Permohonan {{$emailDataVerifikasi['nama_jenis_ijin']}}</h1>
        <hr>
        <h1>{{$emailDataVerifikasi['title']}}</h1>
        <p>Berkas syarat: {{$emailDataVerifikasi['berkas_syarat']}} <br>
            Keterangan : {{$emailDataVerifikasi['keterangan']}} <br><br><br>
            Oleh: {{$emailDataVerifikasi['operator']}}
        </p>
        <hr>
        <h5 align="center" class="card-title" style="margin-top: 30px;">Copyright I Made Yoga Arimbawa | 2022 </h5>
    </div>
</body>

</html>