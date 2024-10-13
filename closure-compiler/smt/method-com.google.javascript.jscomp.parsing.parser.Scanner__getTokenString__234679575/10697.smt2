(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contents/-1834389046 (var964) String)
(declare-fun index/-1834389046 (var964) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var964 var964)
(declare-const null-Int Int)
(declare-const var2313 var964) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var2313 null-var964)))
(declare-const var513 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var513 null-Int)))
(define-const var1379 String (contents/-1834389046 var2313)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var2062 Int (index/-1834389046 var2313)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (and true (and (>= var513 0) (>= (str.len var1379) var2062) (>= var2062 var513))))
(define-const var2010 String (substring/-1240304868 var1379 var513 var2062)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var964=com.google.javascript.jscomp.parsing.parser.Scanner, var2313=r0, var513=i0, var1379=$r1, var2062=$i1, var2010=$r2}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var964, r0=var2313, i0=var513, $r1=var1379, $i1=var2062, $r2=var2010}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i1);	return $r2
;block_num 1