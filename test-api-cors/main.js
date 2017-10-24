console.log ("main.js working");

$("#test").click(function(){
    $.ajax({url: "http://localhost:3000/orders", success: function(result){
        console.log ("RESULTS HERE", result);
    }});
});