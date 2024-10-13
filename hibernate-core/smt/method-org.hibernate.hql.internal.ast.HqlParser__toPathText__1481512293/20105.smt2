(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2658 0)
(declare-sort var2645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2645_getText/-200495485 (var2645) String)
(declare-const null-var2658 var2658)
(declare-const null-var2645 var2645)
(declare-const var1288 var2658) ; Statement: r9 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var1288 null-var2658)))
(declare-const var2731 var2645) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var2731 null-var2645)))
(define-const var3957 String (var2645_getText/-200495485 var2731)) ; Statement: r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var1318 Bool (= var3957 ".")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(".") 
 ; Statement: if $z0 == 0 goto return r1 
(assert (= (ite var1318 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2645_getText/-200495485=([antlr.collections.AST], java.lang.String)}
; {var2658=org.hibernate.hql.internal.ast.HqlParser, var1288=r9, var2645=antlr.collections.AST, var2731=r0, var3957=r1, var1318=$z0}
; {org.hibernate.hql.internal.ast.HqlParser=var2658, r9=var1288, antlr.collections.AST=var2645, r0=var2731, r1=var3957, $z0=var1318}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r9 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(".");	if $z0 == 0 goto return r1;	return r1
;block_num 2