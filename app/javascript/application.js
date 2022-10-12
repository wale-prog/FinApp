// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const signupBtn = document.querySelector('.btn-logout');
const loginBtn = document.querySelector('.btn-login');

signupBtn.addEventListener('mouseover', () => {
  loginBtn.classList.add('btn-hover');
});

signupBtn.addEventListener('mouseout', () => {
  loginBtn.classList.remove('btn-hover');
});

// loginBtn.addEventListener('mouseover', () => {
//   signupBtn.classList.add('navibar');
// });

// loginBtn.addEventListener('mouseout', () => {
//   signupBtn.classList.remove('navibar');
// });
