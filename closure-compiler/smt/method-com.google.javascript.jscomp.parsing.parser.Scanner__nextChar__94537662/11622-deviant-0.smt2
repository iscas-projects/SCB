(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAtEnd/-882235477 (var480) Bool)
(declare-fun contents/-1834389046 (var480) String)
(declare-fun index/-1834389046 (var480) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var480 var480)
(declare-const var66 var480) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var66 null-var480)))
(assert true)
(define-const var1513 Bool (isAtEnd/-882235477 var66)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: boolean isAtEnd()>() 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (= (ite var1513 1 0) 0)) ; Cond: $z0 == 0 
(define-const var981 String (contents/-1834389046 var66)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var3178 Int (index/-1834389046 var66)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var687 Int (+ var3178 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var66!1 var480)
(assert (not (= var66!1 null-var480)))
(assert (= (index/-1834389046 var66!1) var687)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> = $i1 
(assert (not (and true (and (> (str.len var981) var3178) (<= 0 var3178)))))
(check-sat)
(get-model)
(get-unsat-core)
; {isAtEnd/-882235477=([com.google.javascript.jscomp.parsing.parser.Scanner], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), charAt/698050440=([java.lang.String, int], char)}
; {var480=com.google.javascript.jscomp.parsing.parser.Scanner, var66=r0, var1513=$z0, var981=$r1, var3178=$i0, var687=$i1, var3937=$c2}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var480, r0=var66, $z0=var1513, $r1=var981, $i0=var3178, $i1=var687, $c2=var3937}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: boolean isAtEnd()>();	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> = $i1;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	return $c2
;block_num 2