import { getLikes } from './api'
;(async () => {
  if (document.querySelector('.js-likes-list')) {
    const response = await getLikes()
    Array.from(document.querySelectorAll('.js-likes')).forEach(element => {
      if (response[element.id]) {
        element.innerText = response[element.id].count
        element.closest('.js-likes-wrapper').classList.remove('hidden')
      } else {
        element.closest('.js-likes-wrapper').classList.add('hidden')
      }
    })
  }
})()
