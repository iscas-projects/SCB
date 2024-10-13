(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2252 0)
(declare-sort var562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentProperty/2096745176 (var2252) String)
(declare-fun componentPath/2096745176 (var2252) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var2252 var2252)
(declare-const null-String String)
(declare-const var1072 var2252) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var1072 null-var2252)))
(define-const var1416 String (currentProperty/2096745176 var1072)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert (not (= var1416 null-String))) ; Cond: $r1 != null 
(define-const var1028 String (componentPath/2096745176 var1072)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert true)
(define-const var1840 Int (length/-171891354 var1028)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> 
(assert (<= var1840 0)) ; Cond: $i0 <= 0 
(define-const var2716 String (currentProperty/2096745176 var1072)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {currentProperty/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), componentPath/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var2252=org.hibernate.hql.internal.classic.PathExpressionParser, var1072=r0, var1416=$r1, var562=null_type, var1028=$r2, var1840=$i0, var2716=$r3}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var2252, r0=var1072, $r1=var1416, null_type=var562, $r2=var1028, $i0=var1840, $r3=var2716}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	$r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty>;	if $r1 != null goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$i0 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty>;	$r3 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty>;	return $r3
;block_num 3