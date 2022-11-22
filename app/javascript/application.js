// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const alert = document.querySelector('.alert');
const notice = document.querySelector('.notice');

if (alert.innerText) {
  alert.classList.remove('d-none');
  alert.classList.add('alert-style');
  setTimeout(() => {
    alert.classList.add('d-none');
    alert.classList.remove('alert-style');
  }, 5000);
}

if (notice.innerText) {
  notice.classList.remove('d-none');
  notice.classList.add('alert-style');
  setTimeout(() => {
    notice.classList.add('d-none');
    notice.classList.remove('alert-style');
  }, 5000);
}
