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
          let productOrderId = e.target.querySelector(".add-product-card").id;
          let orderId = document.querySelector("ul").attributes["order"].value;
          let url = "/orders/" + orderId + "/product_orders/" + productOrderId;
          let currentPrice = parseFloat(document.querySelector(".grand_total").innerText);
          let productPrice = parseFloat(e.target.querySelector(".product-image-price p").innerText);
          let productQuantity = parseFloat(e.target.querySelector(".quantity").innerText);
          document.querySelector(".grand_total").innerText = currentPrice - productPrice * productQuantity;
          // delete
          fetch(url, {
              method: 'DELETE',
              headers: {
                'Content-Type': 'application/json',
                'Accept': ', application/javascript, application/ecmascript, application/x-ecmascript, */*; q=0.01',
                'X-Requested-With': 'XMLHttpRequest',
                'X-CSRF-Token': document.querySelector('[name="csrf-token"]').content
              },
              body: JSON.stringify({ pId: productOrderId, oId: orderId }),
              credentials: 'same-origin'
            })
            .then(response => {
            });

      } else {
          e.preventDefault(); // will animate back to original position
      }
  });

}

export { swipeToDelete }
