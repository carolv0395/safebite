import "bootstrap";
import { initImagePreview } from '../plugins/image-preview';
import { showSearchBar } from '../plugins/show-search-bar';

initImagePreview();

// Hide search bar
const searchBar = document.querySelector('.search');
searchBar.style.display = "none";

//show search bar
if (document.querySelector('#show-search-bar')) {
  showSearchBar();
};
