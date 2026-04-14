% Base de conhecimento
cor(azul).
cor(vermelho).
cor(verde).

% Predicado principal
executar :-
    cor(X),
    write('Tenta uma solução: '), write(X), nl,
    falha_ou_sucesso(X).

% Simula tentativa que pode falhar
falha_ou_sucesso(azul) :-
    write('Falhou → backtracking'), nl,
    fail.  % força o Prolog a voltar atrás

falha_ou_sucesso(vermelho) :-
    write('Falhou → backtracking'), nl,
    fail.

falha_ou_sucesso(verde) :-
    write('Sucesso!'), nl.
