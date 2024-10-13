(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun indexIn/839898511 (var1235 String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1235 var1235)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2844 var1235) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2844 null-var1235)))
(declare-const var76 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var76 null-String)))
(declare-const var1009 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var1009 null-Int)))
(define-const var1483 String (String_toString/-1426662429 var76)) ; Statement: r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var1268 Int (indexIn/839898511 var2844 (cast-from-String-to-String var1483))) ; Statement: i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence)>(r1) 
(define-const var1269 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i0 != $i6 goto r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert (not (not (= var1268 var1269)))) ; Negate: Cond: i0 != $i6  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), indexIn/839898511=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-Int-to-Int=([int], int)}
; {var1235=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2844=r2, var76=r0, var1009=c1, var1483=r1, var1268=i0, var1269=$i6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1235, r2=var2844, r0=var76, c1=var1009, r1=var1483, i0=var1268, $i6=var1269}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	c1 := @parameter1: char;	r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence)>(r1);	$i6 = (int) -1;	if i0 != $i6 goto r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	return r1
;block_num 2