(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort var384 0)
(declare-sort var1660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getElement/-115210893 (var1660) var384)
(declare-fun cast-from-var3467-to-var1660 (var3467) var1660)
(declare-fun String_valueOf/-333372740 (var384) String)
(declare-fun getCount/-2116348054 (var1660) Int)
(declare-const null-var3467 var3467)
(declare-const var1684 var3467) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry 
(assert (not (= var1684 null-var3467)))
(assert true)
(define-const var1661 var384 (getElement/-115210893 (cast-from-var3467-to-var1660 var1684))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: java.lang.Object getElement()>() 
(define-const var801 String (String_valueOf/-333372740 var1661)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
(assert true)
(define-const var1247 Int (getCount/-2116348054 (cast-from-var3467-to-var1660 var1684))) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: int getCount()>() 
 ; Statement: if i0 != 1 goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= var1247 1)))) ; Negate: Cond: i0 != 1  
(define-const var2085 String var801) ; Statement: $r7 = r2 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getElement/-115210893=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry], java.lang.Object), cast-from-var3467-to-var1660=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry], com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry), String_valueOf/-333372740=([java.lang.Object], java.lang.String), getCount/-2116348054=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry], int)}
; {var3467=com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry, var1684=r0, var384=java.lang.Object, var1660=com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry, var1661=$r1, var801=r2, var1247=i0, var2085=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry=var3467, r0=var1684, java.lang.Object=var384, com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry=var1660, $r1=var1661, r2=var801, i0=var1247, $r7=var2085}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: java.lang.Object getElement()>();	r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: int getCount()>();	if i0 != 1 goto $r3 = new java.lang.StringBuilder;	$r7 = r2;	goto [?= return $r7];	return $r7
;block_num 3