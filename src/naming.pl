% vim: ft=prolog:fdm=marker

%% n_carbon_prefix(Num, Prefix) {{{
n_carbon_prefix( 1, meth).
n_carbon_prefix( 2, eth).
n_carbon_prefix( 3, prop).
n_carbon_prefix( 4, but).
n_carbon_prefix( 5, pent).
n_carbon_prefix( 6, hex).
n_carbon_prefix( 7, hept).
n_carbon_prefix( 8, oct).
n_carbon_prefix( 9, non).
n_carbon_prefix(10, dec).
% }}}

%% Alkanes {{{
n_carbon_simple_alkane_name(Num, Name) :-
	n_carbon_prefix(Num, NamePre), atom_concat(NamePre, ane, Name).
% }}}
