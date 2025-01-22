// app/javascript/packs/fullcalendar.js
import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import interactionPlugin from '@fullcalendar/interaction';
import '@fullcalendar/core/main.css';
import '@fullcalendar/daygrid/main.css';

document.addEventListener('DOMContentLoaded', () => {
  const calendarEl = document.getElementById('calendar'); // ID do elemento onde o calendário será renderizado.

  if (calendarEl) {
    const calendar = new Calendar(calendarEl, {
      plugins: [dayGridPlugin, interactionPlugin],
      initialView: 'dayGridMonth',
      events: '/schedules.json', // URL que retorna os eventos.
      selectable: true,
      editable: true,

      // Callbacks para eventos como clique ou arrasto
      dateClick: (info) => {
        alert(`Data clicada: ${info.dateStr}`);
      },
      eventClick: (info) => {
        alert(`Evento: ${info.event.title}`);
      },
    });

    calendar.render();
  }
});
