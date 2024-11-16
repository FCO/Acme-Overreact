use ASTQuery;
use experimental :rakuast;

sub overreact($CU = $*CU) {
	for $CU.&ast-query(Q|RakuAST::Call::Name#say|).list {
		.args.push: RakuAST::StrLiteral.new: "!!!"
	}
}

sub EXPORT(--> Map()) {
	'&overreact' => &overreact,
	'&fogo-no'   => &overreact,
}

=begin pod

=head1 NAME

Acme::Overreact - Make your code overreact

=head1 SYNOPSIS

=begin code :lang<raku>

use Acme::Overreact;

CHECK overreact;

say 42; # prints '42!!!'

=end code

=head1 DESCRIPTION

Acme::Overreact is just a joke, please do not use that in production code

=head1 AUTHOR

Fernando Corrêa de Oliveira <fernando.correa@humanstate.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2024 Fernando Corrêa de Oliveira

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
