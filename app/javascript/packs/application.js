import "bootstrap";
import { initImagePreview } from '../plugins/image-preview'
import { sidebarCollapse } from '../plugins/sidebar'
import { initImagePreview } from '../plugins/image-preview';
import { sidebarCollapse } from '../plugins/sidebar';
import { showSearchBar } from '../plugins/show-search-bar';
import { flashDismiss } from '../plugins/flash-dismiss';
import { removeFlash } from '../plugins/flash-dismiss';
import { stripeFunction } from '../plugins/stripe';


import { swipeToDelete } from '../plugins/swipe-to-delete';


swipeToDelete();
initImagePreview();
sidebarCollapse();
flashDismiss();
removeFlash();


const stripecheckoutpage = document.querySelector(".orders.shopping_cart");
if (stripecheckoutpage){
 stripeFunction();
}

// Hide search bar
const searchBar = document.querySelector('.search');
if(searchBar) {
  searchBar.classList.add('hide-search-bar', 0);
}


//show search bar
if (document.querySelector('#show-search-bar')) {
  showSearchBar();
};

