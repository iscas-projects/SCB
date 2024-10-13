(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2747 0)
(declare-sort var1190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rest/2010859792 (var2747) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2747 var2747)
(declare-const null-String String)
(declare-const var2716 var2747) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var2716 null-var2747)))
(declare-const var3592 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3592 null-String)))
(assert true)
(define-const var3335 String (rest/2010859792 var2716)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String rest()>() 
(assert true)
(define-const var100 Bool (startsWith/-1785782452 var3335 var3592)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {rest/2010859792=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2747=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var2716=r0, var3592=r1, var1190=null_type, var3335=$r2, var100=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var2747, r0=var2716, r1=var3592, null_type=var1190, $r2=var3335, $z0=var100}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String rest()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	return $z0
;block_num 1