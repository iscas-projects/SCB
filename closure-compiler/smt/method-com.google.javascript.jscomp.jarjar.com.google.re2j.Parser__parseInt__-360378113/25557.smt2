(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1687734756 (var3587) Int)
(declare-fun more/1350620398 (var3587) Bool)
(declare-fun from/-693705205 (var3587 Int) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3587 var3587)
(declare-const var3243 var3587) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var3243 null-var3587)))
(assert true)
(define-const var2493 Int (pos/-1687734756 var3243)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3584 Bool (more/1350620398 var3243)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: boolean more()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String 'from'(int)>(i0) 
(assert (= (ite var3584 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var572 String (from/-693705205 var3243 var2493)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String 'from'(int)>(i0) 
(assert true)
(define-const var1390 Bool (isEmpty/-1285796103 var572)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $i8 = (int) -1 
(assert (not (= (ite var1390 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3248 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1687734756=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), more/1350620398=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], boolean), from/-693705205=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, int], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), cast-from-Int-to-Int=([int], int)}
; {var3587=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var3243=r0, var2493=i0, var3584=$z0, var572=$r2, var1390=$z1, var3248=$i8}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var3587, r0=var3243, i0=var2493, $z0=var3584, $r2=var572, $z1=var1390, $i8=var3248}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos()>();	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: boolean more()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String 'from'(int)>(i0);	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String 'from'(int)>(i0);	$z1 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $i8 = (int) -1;	$i8 = (int) -1;	return $i8
;block_num 4