(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var1649) Int)
(declare-fun isValidIndex/-345970968 (var1649 Int) Bool)
(declare-fun contents/-1834389046 (var1649) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var1649 var1649)
(declare-const null-Int Int)
(declare-const var1036 var1649) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var1036 null-var1649)))
(declare-const var723 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var723 null-Int)))
(define-const var921 Int (index/-1834389046 var1036)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var2424 Int (+ var921 var723)) ; Statement: $i2 = $i1 + i0 
(assert true)
(define-const var2229 Bool (isValidIndex/-345970968 var1036 var2424)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: boolean isValidIndex(int)>($i2) 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= (ite var2229 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3327 String (contents/-1834389046 var1036)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var2898 Int (index/-1834389046 var1036)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var939 Int (+ var2898 var723)) ; Statement: $i4 = $i3 + i0 
(assert (and true (and (> (str.len var3327) var939) (<= 0 var939))))
(define-const var1298 Int (charAt/698050440 var3327 var939)) ; Statement: $c5 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i4) 
(assert true) ; Non Conditional
 ; Statement: return $c5 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), isValidIndex/-345970968=([com.google.javascript.jscomp.parsing.parser.Scanner, int], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var1649=com.google.javascript.jscomp.parsing.parser.Scanner, var1036=r0, var723=i0, var921=$i1, var2424=$i2, var2229=$z0, var3327=$r1, var2898=$i3, var939=$i4, var1298=$c5}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var1649, r0=var1036, i0=var723, $i1=var921, $i2=var2424, $z0=var2229, $r1=var3327, $i3=var2898, $i4=var939, $c5=var1298}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i0 := @parameter0: int;	$i1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$i2 = $i1 + i0;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: boolean isValidIndex(int)>($i2);	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i3 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$i4 = $i3 + i0;	$c5 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i4);	return $c5
;block_num 3