// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const deleteBtns = document.querySelectorAll('.delete-group-button');

deleteBtns.forEach((button) => {
  button.addEventListener('click', (event) => {
    event.stopPropagation();
  })
})