import "bootstrap";

import { initImagePreview } from '../plugins/image-preview'
import { sidebarCollapse } from '../plugins/sidebar'
import { showSearchBar } from '../plugins/show-search-bar';


initImagePreview();
sidebarCollapse();

// Hide search bar
const searchBar = document.querySelector('.search');
searchBar.classList.add('hide-search-bar', 0);

//show search bar
if (document.querySelector('#show-search-bar')) {
  showSearchBar();
};
