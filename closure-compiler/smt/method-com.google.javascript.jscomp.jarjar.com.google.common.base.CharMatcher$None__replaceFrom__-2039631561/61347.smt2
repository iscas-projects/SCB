(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3040 0)
(declare-sort var3931 0)
(declare-sort var609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3931_checkNotNull/1446102589 (var609) var609)
(declare-fun cast-from-String-to-var609 (String) var609)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var3040 var3040)
(declare-const null-String String)
(declare-const var1433 var3040) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var1433 null-var3040)))
(declare-const var376 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var376 null-String)))
(declare-const var3371 String) ; Statement: r0 := @parameter1: java.lang.CharSequence 
(assert (not (= var3371 null-String)))
;(assert (var3931_checkNotNull/1446102589 (cast-from-String-to-var609 var3371))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3371!1 String)
(define-const var1610 String (String_toString/-1426662429 var376)) ; Statement: $r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3931_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var609=([java.lang.CharSequence], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3040=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var1433=r3, var376=r1, var3371=r0, var3931=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var609=java.lang.Object, var1610=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var3040, r3=var1433, r1=var376, r0=var3371, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3931, java.lang.Object=var609, $r2=var1610}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 1