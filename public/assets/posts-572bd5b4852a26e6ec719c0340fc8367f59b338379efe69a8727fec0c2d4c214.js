(function(){$(document).on("turbolinks:load",function(){return $(".destroy_post").on("ajax:success",function(){return $(this).closest(".post_delete").remove()})}),$(document).on("turbolinks:load",function(){return $(".destroy_comment").on("ajax:success",function(){return $(this).closest("#comment_content").remove()})})}).call(this);