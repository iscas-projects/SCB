(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3960 0)
(declare-sort var2214 0)
(declare-sort var2631 0)
(declare-sort var3332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3332) String)
(declare-fun expectingIndex/258954410 (var3960) Int)
(declare-fun expectingPathContinuation/258954410 (var3960) Bool)
(declare-const null-var3960 var3960)
(declare-const null-String String)
(declare-const null-var2631 var2631)
(declare-const var3332-ROOT var3332)
(declare-const var1485 var3960) ; Statement: r3 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var1485 null-var3960)))
(declare-const var3140 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3140 null-String)))
(declare-const var724 var2631) ; Statement: r4 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var724 null-var2631)))
(define-const var100 var3332 var3332-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2089 String (toLowerCase/1946809429 var3140 var100)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var2189 Bool (= var3140 "[")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("[") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("]") 
(assert (= (ite var2189 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var224 Bool (= var3140 "]")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("]") 
 ; Statement: if $z1 == 0 goto $z2 = r3.<org.hibernate.hql.internal.classic.WhereParser: boolean expectingPathContinuation> 
(assert (not (= (ite var224 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3323 Int (expectingIndex/258954410 var1485)) ; Statement: $i5 = r3.<org.hibernate.hql.internal.classic.WhereParser: int expectingIndex> 
(define-const var3008 Int (- var3323 1)) ; Statement: $i6 = $i5 - 1 
(declare-const var1485!1 var3960)
(assert (not (= var1485!1 null-var3960)))
(assert (= (expectingIndex/258954410 var1485!1) var3008)) ; Statement: r3.<org.hibernate.hql.internal.classic.WhereParser: int expectingIndex> = $i6 
(declare-const var1485!2 var3960)
(assert (not (= var1485!2 null-var3960)))
(assert (= (expectingPathContinuation/258954410 var1485!2) (ite (= 1 1) true false))) ; Statement: r3.<org.hibernate.hql.internal.classic.WhereParser: boolean expectingPathContinuation> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), expectingIndex/258954410=([org.hibernate.hql.internal.classic.WhereParser], int), expectingPathContinuation/258954410=([org.hibernate.hql.internal.classic.WhereParser], boolean)}
; {var3960=org.hibernate.hql.internal.classic.WhereParser, var1485=r3, var3140=r0, var2214=null_type, var2631=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var724=r4, var3332=java.util.Locale, var100=$r1, var2089=r2, var2189=$z0, var224=$z1, var3323=$i5, var3008=$i6}
; {org.hibernate.hql.internal.classic.WhereParser=var3960, r3=var1485, r0=var3140, null_type=var2214, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var2631, r4=var724, java.util.Locale=var3332, $r1=var100, r2=var2089, $z0=var2189, $z1=var224, $i5=var3323, $i6=var3008}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r3 := @this: org.hibernate.hql.internal.classic.WhereParser;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("[");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("]");	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("]");	if $z1 == 0 goto $z2 = r3.<org.hibernate.hql.internal.classic.WhereParser: boolean expectingPathContinuation>;	$i5 = r3.<org.hibernate.hql.internal.classic.WhereParser: int expectingIndex>;	$i6 = $i5 - 1;	r3.<org.hibernate.hql.internal.classic.WhereParser: int expectingIndex> = $i6;	r3.<org.hibernate.hql.internal.classic.WhereParser: boolean expectingPathContinuation> = 1;	return
;block_num 3