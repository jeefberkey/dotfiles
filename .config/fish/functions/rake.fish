# Defined in - @ line 0
function rake --description 'alias rake=bundle exec rake'
	bundle exec rake $argv;
end
