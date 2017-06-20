// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require social-share-button
//= require social-share-button/wechat
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require_tree .


// Products#show - 变更显示图片
$(document).on('mouseover', '.list-image', function () {
  var src_other = $(this).attr('src') //抓取小图图片路径
  var src_main = src_other.toString().replace("other", "main") //更改图片路径
  $('.main-image').attr('src', src_main) //变更大图图片路径
  $('.list-image').removeClass('list-image-active') //其它图片移除锁定状态
  $(this).addClass('list-image-active') //当前图片新增锁定状态
})

// Products#show - 变更购买数量
$(document).on('turbolinks:load', function() {
  // 增加购买数量
  $("#quantity-up").click(function(e) {
    var num = parseInt($("#quantity").val());
    var numMax = $("#quantity").attr("max");
    if (num < numMax) {
      $("#quantity").val(num += 1);
    }
    e.preventDefault();
  });

  // 减少购买数量
  $("#quantity-down").click(function(e) {
    var num = parseInt($("#quantity").val());
    if (num > 1) {
      $("#quantity").val(num -= 1);
    }
    e.preventDefault();
  });

  // 确认购买数量，不能超过库存
  $("#quantity").blur(function(e) {
    var num = parseInt($(this).val());
    var numMax = $(this).attr("max");
    if (num > numMax) {
      num = numMax;
    } else if (num < 0) {
      num = 1
    }
    $(this).val(num);
    e.preventDefault();
  });

  // 确认购买数量，不能超过库存
  $(".cart-quantity-input").blur(function(e) {
    var num = parseInt($(this).val());
    var numMax = $(this).attr("max");
    if (num > numMax) {
      num = numMax;
    } else if (num < 0) {
      num = 1
    }
    $(this).val(num);
    e.preventDefault();

    var id = $(this).attr("id");
    $.ajax({
      type: "PATCH",
      url: "/cart_items/"+id,
        dataType:'json',
        data:{
          quantity: num
        },
    });

    window.location.reload();
  });
});
