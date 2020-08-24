<?php

namespace App\Listeners;

use App\Events\Registeration;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SaveCrudBoosterSession
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Registeration  $event
     * @return void
     */
    public function handle(Registeration $event)
    {
        //
    }
}
