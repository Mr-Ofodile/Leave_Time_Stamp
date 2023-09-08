<?php

namespace App\Listeners;

use App\Events\ContentCreatedByUser;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class ProcessWebhooks
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
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        $eventName = $event->getEventName();
        $eventSource = $event->getEventSource();
        $eventContent = $event->getEventContent();

        \App\Elmapi\WebhookHelper::processWebhooks($eventContent, $eventName, $eventSource);
    }
}
