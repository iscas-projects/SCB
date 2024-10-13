(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/789274456 (var3905) Int)
(declare-fun str/789274456 (var3905) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3905 var3905)
(declare-const var177 var3905) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var177 null-var3905)))
(define-const var1781 Int (pos/789274456 var177)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(define-const var2135 String (str/789274456 var177)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(assert true)
(define-const var3915 Int (length/-134980193 var2135)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $z0 = 0 
(assert (not (>= var1781 var3915))) ; Negate: Cond: $i0 >= $i1  
(define-const var1088 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3905=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var177=r0, var1781=$i0, var2135=$r1, var3915=$i1, var1088=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var3905, r0=var177, $i0=var1781, $r1=var2135, $i1=var3915, $z0=var1088}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3