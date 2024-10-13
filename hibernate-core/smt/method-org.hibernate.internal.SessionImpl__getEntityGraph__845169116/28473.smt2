(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort var2186 0)
(declare-sort var3870 0)
(declare-sort var3045 0)
(declare-sort var1592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1243875042 (var3870) void)
(declare-fun cast-from-var3767-to-var3870 (var3767) var3870)
(declare-fun getEntityManagerFactory/2119227344 (var3767) var3045)
(declare-fun var3045_findEntityGraphByName/1550525312 (var3045 String) var1592)
(declare-const null-var3767 var3767)
(declare-const null-String String)
(declare-const null-var1592 var1592)
(declare-const var1471 var3767) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl 
(assert (not (= var1471 null-var3767)))
(declare-const var3190 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3190 null-String)))
(assert true)
;(assert (checkOpen/1243875042 (cast-from-var3767-to-var3870 var1471))) ; Statement: virtualinvoke r0.<org.hibernate.internal.SessionImpl: void checkOpen()>() 

(declare-const var1471!1 var3767)
(assert true)
(define-const var869 var3045 (getEntityManagerFactory/2119227344 var1471!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getEntityManagerFactory()>() 
(define-const var508 var1592 (var3045_findEntityGraphByName/1550525312 var869 var3190)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.graph.spi.RootGraphImplementor findEntityGraphByName(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var508 null-var1592))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var3767-to-var3870=([org.hibernate.internal.SessionImpl], org.hibernate.engine.spi.SharedSessionContractImplementor), getEntityManagerFactory/2119227344=([org.hibernate.internal.SessionImpl], org.hibernate.engine.spi.SessionFactoryImplementor), var3045_findEntityGraphByName/1550525312=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.graph.spi.RootGraphImplementor)}
; {var3767=org.hibernate.internal.SessionImpl, var1471=r0, var3190=r1, var2186=null_type, var3870=org.hibernate.engine.spi.SharedSessionContractImplementor, var3045=org.hibernate.engine.spi.SessionFactoryImplementor, var869=$r2, var1592=org.hibernate.graph.spi.RootGraphImplementor, var508=r3}
; {org.hibernate.internal.SessionImpl=var3767, r0=var1471, r1=var3190, null_type=var2186, org.hibernate.engine.spi.SharedSessionContractImplementor=var3870, org.hibernate.engine.spi.SessionFactoryImplementor=var3045, $r2=var869, org.hibernate.graph.spi.RootGraphImplementor=var1592, r3=var508}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.SessionImpl;	r1 := @parameter0: java.lang.String;	virtualinvoke r0.<org.hibernate.internal.SessionImpl: void checkOpen()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getEntityManagerFactory()>();	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.graph.spi.RootGraphImplementor findEntityGraphByName(java.lang.String)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2