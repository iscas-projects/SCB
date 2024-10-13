(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var760 0)
(declare-sort var2022 0)
(declare-sort var1253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hadInMemoryGeneration/-1793784655 (var760) Bool)
(declare-fun var2022-init () var2022)
(declare-fun <init>/1041412376 (var2022 String) void)
(declare-fun cast-from-var2022-to-var1253 (var2022) var1253)
(declare-const null-var760 var760)
(declare-const var718 var760) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder 
(assert (not (= var718 null-var760)))
(define-const var130 Bool (hadInMemoryGeneration/-1793784655 var718)) ; Statement: $z0 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration> 
(assert (= (ite var130 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2788 Bool (hadInMemoryGeneration/-1793784655 var718)) ; Statement: $z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration> 
 ; Statement: if $z1 == 0 goto $z2 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInDatabaseGeneration> 
(assert (not (= (ite var2788 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2943 var2022 var2022-init) ; Statement: $r49 = new org.hibernate.cfg.NotYetImplementedException 
(assert true)
;(assert (<init>/1041412376 var2943 "Still need to wire in composite in-memory value generation")) ; Statement: specialinvoke $r49.<org.hibernate.cfg.NotYetImplementedException: void <init>(java.lang.String)>("Still need to wire in composite in-memory value generation") 

(declare-const var2943!1 var2022)
(declare-const var1322 String)
(define-const var1184 var1253 (cast-from-var2022-to-var1253 var2943!1)) ; Statement: $r57 = (java.lang.Throwable) $r49 
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {hadInMemoryGeneration/-1793784655=([org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder], boolean), var2022-init=([], org.hibernate.cfg.NotYetImplementedException), <init>/1041412376=([org.hibernate.cfg.NotYetImplementedException, java.lang.String], void), cast-from-var2022-to-var1253=([org.hibernate.cfg.NotYetImplementedException], java.lang.Throwable)}
; {var760=org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder, var718=r0, var130=$z0, var2788=$z1, var2022=org.hibernate.cfg.NotYetImplementedException, var2943=$r49, var1322="Still need to wire in composite in-memory value generation", var1253=java.lang.Throwable, var1184=$r57}
; {org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder=var760, r0=var718, $z0=var130, $z1=var2788, org.hibernate.cfg.NotYetImplementedException=var2022, $r49=var2943, "Still need to wire in composite in-memory value generation"=var1322, java.lang.Throwable=var1253, $r57=var1184}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder;	$z0 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration>;	if $z0 == 0 goto $z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration>;	$z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration>;	if $z1 == 0 goto $z2 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInDatabaseGeneration>;	$r49 = new org.hibernate.cfg.NotYetImplementedException;	specialinvoke $r49.<org.hibernate.cfg.NotYetImplementedException: void <init>(java.lang.String)>("Still need to wire in composite in-memory value generation");	$r57 = (java.lang.Throwable) $r49;	throw $r57
;block_num 3