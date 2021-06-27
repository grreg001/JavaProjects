$(document).ready(function() {

  loadItems();

  //Add Dollar
  $('#add-dollar').click(function (event) {
    var currentAmount = $('#money-input-field').val();
    var moneyInserted = Number(currentAmount) + 1.00;
    $('#money-input-field').val(moneyInserted.toFixed(2));

  });

  //Add Quarter
  $('#add-quarter').click(function (event) {
    var currentAmount = $('#money-input-field').val();
    var moneyInserted = Number(currentAmount) + .25;
    $('#money-input-field').val(moneyInserted.toFixed(2));

  });

  //Add Dime
  $('#add-dime').click(function (event) {
    var currentAmount = $('#money-input-field').val();
    var moneyInserted = Number(currentAmount) + .10;
    $('#money-input-field').val(moneyInserted.toFixed(2));

  });

  //Add Nickel
  $('#add-nickel').click(function (event) {
    var currentAmount = $('#money-input-field').val();
    var moneyInserted = Number(currentAmount) + .05;
    $('#money-input-field').val(moneyInserted.toFixed(2));

  });

  //Change Return
  $('#return-change').click(function (event) {
    var total = $('#money-input-field').val();

    var dollars = 0;
    var quarters = 0;
    var dimes = 0;
    var nickels = 0;
    var pennies = 0;

    if (total > 0){
      var totalInPennies = total*100;

      while(totalInPennies >= 25){
        quarters++;
        totalInPennies -= 25;
      }
      while(totalInPennies >= 10){
        dimes++;
        totalInPennies-= 10;
      }
      while(totalInPennies >=5){
        nickels++;
        totalInPennies -= 5;
      }
      while(totalInPennies >= 1){
        pennies++;
        totalInPennies -= 1;
      }

      $('#money-input-field').val('0.00');

    }
    changeMessage(quarters, dimes, nickels, pennies);
    clearFields();
  });

  //Make Purchase
    // --> ajax call, GET method
  $('#make-purchase').click(function (event) {
    var moneyInserted = $('#money-input-field').val();
    var id = $('#id').val();

    $.ajax({
      type: 'POST',
      url: 'https://tsg-vending.herokuapp.com/money/' + moneyInserted + '/item/' + id,
      headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
      'dataType': 'json',
      success: function(data){
        //get coins
        var quarters = data.quarters;
        var dimes = data.dimes;
        var nickels = data.nickels;
        var pennies = data.pennies;

        //return change
        changeMessage(quarters, dimes, nickels, pennies);
        vendSuccess();
        $('#money-input-field').val('0.00');
        loadItems();

      },
      error: function(xhr, status, error){
        console.log(xhr);
        console.log(status);
        console.log(error);
        var errorMessage = xhr.responseJSON.message;
        //var errorMessage = xhr.status + ': ' + xhr.statusText;
        //alert('Error -' + errorMessage);
        $('#messages-field').val(errorMessage);
      }

    });



});
});

function loadItems() {
  clearItems();
  var itemsInStock = $('#itemsInStock');

  $.ajax({
    type: 'GET',
    url: 'https://tsg-vending.herokuapp.com/items',
    success: function(itemArray) {
      var allItems = '';
      $.each(itemArray, function(index, item) {
        var id = item.id;
        var name = item.name;
        var price = item.price;
        var quantity = item.quantity;

        $("#itemsInStock").append(
          '<button type="button" class="col-sm-3 m-2 selected" onclick="chooseItem(' + id + ')"'+'</button>' +
          '<div class="col-item" id=' + id + '>' +
          '<div class="row">' + id + '</div>' +
          '<div class="row">' + name + '</div>' +
          '<div class="row">$' + price + '</div>' +
          '<div class="row">Quantity Left: ' + quantity + '</div>' +
          '</div>');

      });

    },
    error: function() {
      $('#errorMessages')
        .append($('<li>')
        .attr({class: 'list-group-item list-group-item-danger'})
        .text('Error calling web service. Please try again later.'));
    }
  });
}

function clearItems() {
  $('#itemsInStock').empty();
}

function chooseItem(id) {
  $('#add-item').val(id);
  var hiddenId = '<input type="hidden" id="' + id + '">';
    $('#change-field').val('');
    $('#id').val(id);
}

function clearMoneyField() {
  $('#money-input-field').val('0.00');
}
function clearFields() {
  $('#money-input-field').empty();
  $('#messages-field').empty();
  $('#add-item').val(' ');
}

function changeMessage(quarters, dimes, nickels, pennies){
  var message = '';

  if(quarters > 1){
    message +=  quarters + ' quarters ';
  }else if(quarters == 1){
    message += quarters + ' quarter ';
  }
  if(dimes > 1){
    message +=  dimes + ' dimes ';
  }else if(dimes == 1){
    message += dimes + ' dime ';
  }
  if(nickels > 1){
    message += nickels + ' nickels ';
  }else if(nickels == 1){
    message += nickels + ' nickel ';
  }
  if(pennies > 1){
    message += pennies + ' pennies ';
  }else if(pennies == 1){
    message += pennies + ' penny ';
  }
  $('#change-field').val(message);
}

function vendItem(id){
  var money = $('#money-input-field').val();
  $.ajax({
    type: 'GET',
    url: 'https://tsg-vending.herokuapp.com/money/' + money + '/item/' + id,
    success: function(data){
      clearItems();
      loadItems();
      var quarters = data.quarters;
      var dimes = data.dimes;
      var nickels = data.nickels;
      var pennies = data.pennies;


      changeMessage(quarters, dimes, nickels, pennies);
      vendSuccess();
      clearMoneyField();
    },
    error: function() {
      $('#errorMessages')
        .append($('<li>')
        .attr({class: 'list-group-item list-group-item-danger'})
        .text('Error calling web service. Please try again later.'));
    }

  });

}

function vendSuccess() {
  $('#messages-field').val('THANK YOU!')
}

function soldOut() {
  $('#messages-field').text('SOLD OUT');
}

function checkFunds(moneyInserted, price) {
  $('#errorMessages').empty();
  var errorMessages = [];

  if(moneyInserted < price){

      // $('#errorMessages')
      //   .append($('<li>')
      //   .attr({class: 'list-group-item list-group-item-danger'})
      //   .text('Error calling web service. Please try again later.'));


    //var errorField = $('label[for=' + this.id +']').text();
    //errorMessages.push(errorField + ' ' + this.validationMessage);
    return true;
  }
  else{
    return false;
  }
  // if(errorMessages.length > 0) {
  //   $.each(errorMessages, function(index,message){
  //     $('#errorMessages').append($('<li>').attr({class: 'list-group-item list-group-item-danger'}).text(message));
  //   });
  //   return true;
  // }else{
  //   return false;
  // }

}
