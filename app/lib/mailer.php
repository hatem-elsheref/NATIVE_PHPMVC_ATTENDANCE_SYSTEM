<?php


namespace App\Lib;

use App\Lib\Src\PHPMailer;
use App\Lib\Src\Exception;
use App\Lib\Src\SMTP;

class Mailer
{
    public static function SendMail($path,$email,$name){

        $mail = new PHPMailer(true);

        try {
            //Server settings
            $mail->SMTPDebug = SMTP::DEBUG_OFF;                      // Enable verbose debug output
            $mail->isSMTP();                                            // Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = 'hackerhackerh7@gmail.com';                     // SMTP username
            $mail->Password   = 'hacker2017';                               // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
            $mail->Port       = 587;                                                // TCP port to connect to
            $mail->setFrom('hackerhackerh7@gmail.com', 'MUFIX');
            $mail->addAddress($email, 'Hatem Mohamed');
            $mail->addAttachment($path, 'YourQR.png');
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'Hi '.$name;
            $mail->Body    = 'This is Your <b>QR CODE!</b> Don\'t Forget To Get It With You';
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients Hatem Elsheref';

            $mail->send();
            echo 'Message has been sent';
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }


    }
}