//import Slip from "slip.js";

function swipeToDelete() {
  var list = document.querySelector('ul');
  new Slip(list);

  list.addEventListener('slip:swipe', function(e) {
      // e.target list item swiped
      //thatWasSwipeToRemove
      if (e) {
          // list will collapse over that element
          e.target.parentNode.removeChild(e.target);
          let productOrderId = document.querySelector(".add-product-card").id;
          let orderId = document.querySelector("ul").attributes["order"].value;
          let url = "/orders/${orderId}/product_orders/${productOrderId}"
          let token = document.querySelector('[name="csrf-token"]').content
          console.log(token);
          console.log("Benfica!")
          // delete
          fetch(url, {
              method: 'DELETE',
              headers: {
                'Content-Type': 'application/json',
                'Accept': ', application/javascript, application/ecmascript, application/x-ecmascript, */*; q=0.01',
                'X-Requested-With': 'XMLHttpRequest',
                'X-CSRF-Token': document.querySelector('[name="csrf-token"]').content
              },
              body: { pId: productOrderId, oId: orderId },
              credentials: 'same-origin'
            })
            .then(response => response.json())
            .then((data) => {
              console.log(data);
            });

      } else {
          e.preventDefault(); // will animate back to original position
      }
  });

}

export { swipeToDelete }
