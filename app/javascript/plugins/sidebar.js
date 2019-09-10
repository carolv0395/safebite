const sidebarCollapse = function() {
  const icon = document.querySelector('.navbar-toggler-icon');
  const sidebar = document.querySelector('#sidebar')
  icon.addEventListener('click', () => {
    sidebar.classList.toggle('active')
  })
};

export { sidebarCollapse };
