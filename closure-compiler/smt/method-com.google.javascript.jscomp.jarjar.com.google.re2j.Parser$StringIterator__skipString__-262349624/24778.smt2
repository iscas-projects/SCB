(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3742 0)
(declare-sort var1291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/789274456 (var3742) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3742 var3742)
(declare-const null-String String)
(declare-const var2602 var3742) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var2602 null-var3742)))
(declare-const var807 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var807 null-String)))
(define-const var2282 Int (pos/789274456 var2602)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(assert true)
(define-const var1845 Int (length/-134980193 var807)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var825 Int (+ var2282 var1845)) ; Statement: $i2 = $i0 + $i1 
(declare-const var2602!1 var3742)
(assert (not (= var2602!1 null-var3742)))
(assert (= (pos/789274456 var2602!1) var825)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), length/-134980193=([java.lang.String], int)}
; {var3742=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var2602=r0, var807=r1, var1291=null_type, var2282=$i0, var1845=$i1, var825=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var3742, r0=var2602, r1=var807, null_type=var1291, $i0=var2282, $i1=var1845, $i2=var825}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	r1 := @parameter0: java.lang.String;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> = $i2;	return
;block_num 1