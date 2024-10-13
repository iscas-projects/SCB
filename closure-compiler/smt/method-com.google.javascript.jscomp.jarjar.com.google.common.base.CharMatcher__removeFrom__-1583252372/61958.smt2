(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun indexIn/839898511 (var2842 String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2842 var2842)
(declare-const null-String String)
(declare-const var2663 var2842) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2663 null-var2842)))
(declare-const var473 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var473 null-String)))
(define-const var3873 String (String_toString/-1426662429 var473)) ; Statement: r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var1498 Int (indexIn/839898511 var2663 (cast-from-String-to-String var3873))) ; Statement: i4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence)>(r1) 
(define-const var2095 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i4 != $i8 goto r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert (not (not (= var1498 var2095)))) ; Negate: Cond: i4 != $i8  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), indexIn/839898511=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-Int-to-Int=([int], int)}
; {var2842=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2663=r2, var473=r0, var3873=r1, var1498=i4, var2095=$i8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2842, r2=var2663, r0=var473, r1=var3873, i4=var1498, $i8=var2095}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	i4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence)>(r1);	$i8 = (int) -1;	if i4 != $i8 goto r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	return r1
;block_num 2