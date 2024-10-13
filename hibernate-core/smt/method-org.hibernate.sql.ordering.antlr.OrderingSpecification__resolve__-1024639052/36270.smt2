(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3334 0)
(declare-sort var1862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1862_access$000/-1020391058 (var1862) String)
(declare-const null-String String)
(declare-const var1862-ASCENDING var1862)
(declare-const var3158 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3158 null-String)))
(define-const var2765 var1862 var1862-ASCENDING) ; Statement: $r0 = <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering ASCENDING> 
(define-const var328 String (var1862_access$000/-1020391058 var2765)) ; Statement: $r2 = staticinvoke <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: java.lang.String access$000(org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering)>($r0) 
(assert true)
(define-const var1239 Bool (= var328 var3158)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering DESCENDING> 
(assert (not (= (ite var1239 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1224 var1862 var1862-ASCENDING) ; Statement: $r12 = <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering ASCENDING> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1862_access$000/-1020391058=([org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering], java.lang.String)}
; {var3158=r1, var3334=null_type, var1862=org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering, var2765=$r0, var328=$r2, var1239=$z0, var1224=$r12}
; {r1=var3158, null_type=var3334, org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering=var1862, $r0=var2765, $r2=var328, $z0=var1239, $r12=var1224}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering ASCENDING>;	$r2 = staticinvoke <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: java.lang.String access$000(org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering)>($r0);	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering DESCENDING>;	$r12 = <org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering: org.hibernate.sql.ordering.antlr.OrderingSpecification$Ordering ASCENDING>;	return $r12
;block_num 2