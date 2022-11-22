// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const alert = document.querySelector('.alert');
const notice = document.querySelector('.notice');

const timeOut = (element) => {
  element.classList.remove('d-none');
  element.classList.add('alert-style');
  setTimeout(() => {
    element.classList.add('d-none');
    element.classList.remove('alert-style');
  }, 5000);
}

if (alert.innerText) {
  timeOut(alert);
}

if (notice.innerText) {
  timeOut(notice);
}

