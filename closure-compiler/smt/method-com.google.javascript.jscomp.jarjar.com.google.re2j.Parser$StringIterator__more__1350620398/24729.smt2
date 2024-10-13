(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/789274456 (var1989) Int)
(declare-fun str/789274456 (var1989) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1989 var1989)
(declare-const var2847 var1989) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var2847 null-var1989)))
(define-const var2531 Int (pos/789274456 var2847)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(define-const var121 String (str/789274456 var2847)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(assert true)
(define-const var2051 Int (length/-134980193 var121)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $z0 = 0 
(assert (>= var2531 var2051)) ; Cond: $i0 >= $i1 
(define-const var112 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1989=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var2847=r0, var2531=$i0, var121=$r1, var2051=$i1, var112=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var1989, r0=var2847, $i0=var2531, $r1=var121, $i1=var2051, $z0=var112}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3