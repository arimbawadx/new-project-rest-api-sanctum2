<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class sendEmailVerifikasi extends Mailable
{
    use Queueable, SerializesModels;

    public $emailDataVerifikasi;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($emailDataVerifikasi)
    {
        $this->emailDataVerifikasi = $emailDataVerifikasi;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Email Verifikasi')
            ->view('emails.sendEmailVerifikasi');
    }
}
