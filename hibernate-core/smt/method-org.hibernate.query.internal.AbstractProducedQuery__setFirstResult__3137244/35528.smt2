(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var252 0)
(declare-sort var2837 0)
(declare-sort var1610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProducer/-1443624759 (var252) var2837)
(declare-fun var2837_checkOpen/1243875042 (var2837) void)
(declare-fun queryOptions/-1278627747 (var252) var1610)
(declare-fun setFirstRow/1216423200 (var1610 Int) void)
(declare-const null-var252 var252)
(declare-const null-Int Int)
(declare-const var3682 var252) ; Statement: r0 := @this: org.hibernate.query.internal.AbstractProducedQuery 
(assert (not (= var3682 null-var252)))
(declare-const var1839 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1839 null-Int)))
(assert true)
(define-const var2916 var2837 (getProducer/-1443624759 var3682)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>() 
;(assert (var2837_checkOpen/1243875042 var2916)) ; Statement: interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen()>() 

(declare-const var2916!1 var2837)
 ; Statement: if i0 >= 0 goto $r2 = r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.RowSelection queryOptions> 
(assert (>= var1839 0)) ; Cond: i0 >= 0 
(define-const var3766 var1610 (queryOptions/-1278627747 var3682)) ; Statement: $r2 = r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.RowSelection queryOptions> 
(assert true)
;(assert (setFirstRow/1216423200 var3766 var1839)) ; Statement: virtualinvoke $r2.<org.hibernate.engine.spi.RowSelection: void setFirstRow(int)>(i0) 

(declare-const var3766!1 var1610)
(declare-const var1839!1 Int)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {getProducer/-1443624759=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.SharedSessionContractImplementor), var2837_checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), queryOptions/-1278627747=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.RowSelection), setFirstRow/1216423200=([org.hibernate.engine.spi.RowSelection, int], void)}
; {var252=org.hibernate.query.internal.AbstractProducedQuery, var3682=r0, var1839=i0, var2837=org.hibernate.engine.spi.SharedSessionContractImplementor, var2916=$r1, var1610=org.hibernate.engine.spi.RowSelection, var3766=$r2}
; {org.hibernate.query.internal.AbstractProducedQuery=var252, r0=var3682, i0=var1839, org.hibernate.engine.spi.SharedSessionContractImplementor=var2837, $r1=var2916, org.hibernate.engine.spi.RowSelection=var1610, $r2=var3766}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.AbstractProducedQuery;	i0 := @parameter0: int;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>();	interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen()>();	if i0 >= 0 goto $r2 = r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.RowSelection queryOptions>;	$r2 = r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.RowSelection queryOptions>;	virtualinvoke $r2.<org.hibernate.engine.spi.RowSelection: void setFirstRow(int)>(i0);	return r0
;block_num 2