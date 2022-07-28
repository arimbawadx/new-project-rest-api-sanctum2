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
        <h1 align="center" style="margin-top: 30px;">Verifikasi Pendaftaran project_name</h1>
        <hr>
        <!-- <div>
            <img style="align-items: center;" src="https://www.seekpng.com/png/detail/30-300604_download-svg-download-png-white-email-vector-icon.png" width="50%">
        </div> -->
        <br>
        <h1>{{$emailDataVerifikasi['title']}}</h1>
        <p>Terimakasih telah mendaftar di project_name
            <br>Silahkan klik tombol verifikasi dibawah untuk melakukan verifikasi
        </p>
        <br>
        <a href="http://{{$emailDataVerifikasi['ip']}}:8000/verifikasi-pendaftaran/{{$emailDataVerifikasi['id']}}?e={{$emailDataVerifikasi['email']}}&p={{$emailDataVerifikasi['password']}}">
            <button type="button" style="color:#fff;background-color:#007bff;border-color:#007bff; padding: 10px; border-radius: 20px;">
                Verifikasi Pendaftaran
            </button>
        </a>
        <br><br>
        <hr>
        <h5 align="center" class="card-title" style="margin-top: 30px;">Copyright I Made Yoga Arimbawa | 2022 </h5>
    </div>
</body>

</html>