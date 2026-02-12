DECLARE
    l_body       CLOB;
    l_body_html  CLOB;
BEGIN
    l_body := 'Olá, este e-mail é um texto do APEX_MAIL';

    l_body_html :=
    '<!DOCTYPE html>
    <html>
    <body style="font-family: Arial, Helvetica, sans-serif; background-color:#f5f5f5; padding:20px;">

        <div style="
            max-width: 400px;
            margin: 0 auto;
            border: 1px solid #000;
            padding: 40px;
            text-align: center;
            background-color: #ffffff;
        ">

            <h1 style="color: rgb(90,90,90); font-size: 32px;">
                Olá, este é um e-mail teste!
            </h1>

            <img 
                src="https://img.icons8.com/?size=100&id=13809&format=png&color=000000"
                alt="Imagem e-mail"
                style="margin: 20px 0;"
            >

            <h3 style="color: rgb(90,90,90); font-weight: normal;">
                Se você está visualizando a imagem e o corpo do e-mail,<br>
                clique no botão abaixo:
            </h3>

            <a href="https://www.google.com/"
               style="
                   display: inline-block;
                   margin-top: 20px;
                   padding: 12px 20px;
                   border: 2px solid #000;
                   border-radius: 7px;
                   text-decoration: none;
                   color: #000;
                   font-size: 15px;
                   font-family: Arial, Helvetica, sans-serif;
               ">
                Confirmar e redirecionar
            </a>

        </div>

    </body>
    </html>';

    APEX_MAIL.SEND(
        p_to        => 'youremail@gmail.com',
        p_from      => 'youremail@gmail.com',
        p_body      => l_body,
        p_body_html => l_body_html,
        p_subj      => 'E-mail teste'
    );

    APEX_MAIL.PUSH_QUEUE;
END;
/

