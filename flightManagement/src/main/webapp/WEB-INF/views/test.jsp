<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Travelers Select Option</title>
<style>
  .box {
    margin-bottom: 10px;
  }

  label {
    display: inline-block;
    width: 100px;
  }

  .button {
    display: inline-block;
    cursor: pointer;
    padding: 5px 10px;
    border: none;
    background-color: #007bff;
    color: #fff;
    font-size: 16px;
    border-radius: 5px;
  }

  .button:hover {
    background-color: #0056b3;
  }
  
  /* Hide the dropdown menus initially */
  .quantity-dropdown {
    display: none;
  }
</style>
</head>
<body>
  
<div class="box">
  <label for="travelers">Travelers:</label>
  <input type="text" id="total" value="0" disabled>
</div>

<div class="box">
  <label for="adult">Adult:</label>
  <div class="dec button">-</div>
  <select name="adultQty" class="quantity-dropdown">
    <!-- Options will be added dynamically -->
  </select>
  <div class="inc button">+</div>
</div>

<div class="box">
  <label for="child">Child:</label>
  <div class="dec button">-</div>
  <select name="childQty" class="quantity-dropdown" onchange="selectOption()" id="childSelect">
    <!-- Options will be added dynamically -->
  </select>
  <div class="inc button">+</div>
</div>

<div class="box">
  <label for="senior">Senior:</label>
  <div class="dec button">-</div>
  <select name="seniorQty" class="quantity-dropdown" onchange="selectOption()" id="seniorSelect">
    <!-- Options will be added dynamically -->
  </select>
  <div class="inc button">+</div>
</div>

<div class="box">
  <label for="challenged">Challenged:</label>
  <div class="dec button">-</div>
  <select name="challengedQty" class="quantity-dropdown" onchange="selectOption()" id="challengedSelect">
    <!-- Options will be added dynamically -->
  </select>
  <div class="inc button">+</div>
</div>

<script>
  var incrementButtons = document.querySelectorAll('.inc');
  var decrementButtons = document.querySelectorAll('.dec');
  var dropdowns = document.querySelectorAll('.quantity-dropdown');

  incrementButtons.forEach(function(button) {
    button.addEventListener('click', function(event) {
      var select = event.target.parentElement.querySelector('.quantity-dropdown');
      var selectedIndex = select.selectedIndex;
      if (selectedIndex < select.options.length - 1) {
        select.selectedIndex = selectedIndex + 1;
        getTotal();
      }
    });
  });

  decrementButtons.forEach(function(button) {
    button.addEventListener('click', function(event) {
      var select = event.target.parentElement.querySelector('.quantity-dropdown');
      var selectedIndex = select.selectedIndex;
      if (selectedIndex > 0) {
        select.selectedIndex = selectedIndex - 1;
        getTotal();
      }
    });
  });

  // Populate options for quantity dropdowns
  var maxQuantity = 10; // Maximum quantity option
  dropdowns.forEach(function(select) {
    for (var i = 0; i <= maxQuantity; i++) {
      var option = document.createElement('option');
      option.value = i;
      option.textContent = i;
      select.appendChild(option);
    }
  });

  // Calculate and display total number of travelers
  function getTotal() {
    var total = 0;
    dropdowns.forEach(function(select) {
      total += parseInt(select.value);
    });
    document.getElementById('total').value = total;
  }

//Show dropdown menus when "Travelers" input field is focused
  document.getElementById('total').addEventListener('focus', function() {
    dropdowns.forEach(function(select) {
      select.style.display = 'block';
    });
  });

  // Hide dropdown menus when focus is lost from "Travelers" input field
  document.getElementById('total').addEventListener('blur', function() {
    dropdowns.forEach(function(select) {
      select.style.display = 'none';
    });
  });



</script>

</body>
</html>
