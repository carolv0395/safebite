import "bootstrap";
<<<<<<< HEAD
import { initImagePreview } from '../plugins/image-preview'
import { sidebarCollapse } from '../plugins/sidebar'

initImagePreview();
sidebarCollapse();
=======
import { initImagePreview } from '../plugins/image-preview';
import { showSearchBar } from '../plugins/show-search-bar';

initImagePreview();

// Hide search bar
const searchBar = document.querySelector('.search');
searchBar.classList.add('hide-search-bar', 0);

//show search bar
if (document.querySelector('#show-search-bar')) {
  showSearchBar();
};
>>>>>>> 175bd95e4df9afa690e7e17fbd39527baeab92b7
