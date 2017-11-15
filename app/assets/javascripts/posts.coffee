$(document).on 'turbolinks:load', ->
	$('.destroy_post').on 'ajax:success', ->
		$(this).closest('.post_delete').remove()

$(document).on 'turbolinks:load', ->
	$('.destroy_comment').on 'ajax:success', ->
		$(this).closest('#comment_content').remove()