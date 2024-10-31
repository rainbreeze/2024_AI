% 가족 관계 정의
parent(john, mary).   % 존은 메리의 부모
parent(john, mike).   % 존은 마이크의 부모
parent(mary, ann).    % 메리는 앤의 부모
parent(mary, tom).    % 메리는 톰의 부모
parent(mike, jake).   % 마이크는 제이크의 부모
parent(mike, emma).   % 마이크는 엠마의 부모

% 조부모 관계 정의
grandparent(X, Y) :- parent(X, Z), parent(Z, Y). % X는 Y의 조부모

% 형제자매 관계 정의
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y. % X와 Y는 형제자매

% 이모/삼촌 관계 정의
aunt_uncle(X, Y) :- sibling(X, Z), parent(Z, Y). % X는 Y의 이모 또는 삼촌

% 쿼리 예시
% ?- grandparent(john, ann).
% ?- sibling(ann, tom).
% ?- aunt_uncle(mike, jake).
