//import Slip from "slip.js";

function swipeToDelete() {
  var list = document.querySelector('ul');
  new Slip(list);

  // list.addEventListener('slip:beforeswipe', function(e) {
  //     if (shouldNotSwipe(e.target)) {
  //         e.preventDefault(); // won't move sideways if prevented
  //     }
  // });

  list.addEventListener('slip:swipe', function(e) {
      // e.target list item swiped
      //thatWasSwipeToRemove
      if (e) {
          // list will collapse over that element
          e.target.parentNode.removeChild(e.target);
          let productOrderId = document.querySelector(".add-product-card").id;
          let orderId = document.querySelector("ul").attributes["order"].value;
          let url = "/orders/${orderId}/product_orders/${productOrderId}"
          console.log(url);
          // delete
          fetch(url, {
              method: 'DELETE',
              body: { pId: productOrderId, oId: orderId }
            })
            .then(response => response.json())
            .then((data) => {
              console.log(data);
            });

      } else {
          e.preventDefault(); // will animate back to original position
      }
  });

  // list.addEventListener('slip:beforereorder', function(e) {
  //     if (shouldNotReorder(e.target)) {
  //         // if prevented element won't move vertically
  //         e.preventDefault();
  //     }
  // });

  // list.addEventListener('slip:beforewait', function(e) {
  //     if (isScrollingKnob(e.target)) {
  //         // if prevented element will be dragged (instead of page scrolling)
  //         e.preventDefault();
  //     }
  // });

  // list.addEventListener('slip:reorder', function(e) {
  //     // e.target list item reordered.
  //     if (reorderedOK) {
  //         e.target.parentNode.insertBefore(e.target, e.detail.insertBefore);
  //     } else {
  //         // element will fly back to original position
  //         e.preventDefault();
  //     }
  // });

}

export { swipeToDelete }
