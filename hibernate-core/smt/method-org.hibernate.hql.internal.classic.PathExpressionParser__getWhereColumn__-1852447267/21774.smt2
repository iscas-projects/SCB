(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columns/2096745176 (var3530) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3530 var3530)
(declare-const var1773 var3530) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var1773 null-var3530)))
(define-const var3757 (Array Int String) (columns/2096745176 var1773)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns> 
(define-const var560 Int (getLength-Arr-String-1 var3757)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if $i0 == 1 goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns> 
(assert (= var560 1)) ; Cond: $i0 == 1 
(define-const var3217 (Array Int String) (columns/2096745176 var1773)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns> 
(define-const var2528 String (select var3217 0)) ; Statement: $r3 = $r2[0] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {columns/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3530=org.hibernate.hql.internal.classic.PathExpressionParser, var1773=r0, var3757=$r1, var560=$i0, var3217=$r2, var2528=$r3}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var3530, r0=var1773, $r1=var3757, $i0=var560, $r2=var3217, $r3=var2528}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	$r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns>;	$i0 = lengthof $r1;	if $i0 == 1 goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns>;	$r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns>;	$r3 = $r2[0];	return $r3
;block_num 2