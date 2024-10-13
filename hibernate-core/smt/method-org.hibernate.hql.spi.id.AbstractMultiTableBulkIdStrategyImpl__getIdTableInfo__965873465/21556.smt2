(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var108 0)
(declare-sort var3412 0)
(declare-sort var3275 0)
(declare-sort var81 0)
(declare-sort var2997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun idTableInfoMap/-1094019945 (var108) var3275)
(declare-fun var3275_get/1088891777 (var3275 var81) var81)
(declare-fun cast-from-String-to-var81 (String) var81)
(declare-fun cast-from-var81-to-var2997 (var81) var2997)
(declare-const null-var108 var108)
(declare-const null-String String)
(declare-const null-var2997 var2997)
(declare-const var1122 var108) ; Statement: r0 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl 
(assert (not (= var1122 null-var108)))
(declare-const var913 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var913 null-String)))
(define-const var709 var3275 (idTableInfoMap/-1094019945 var1122)) ; Statement: $r2 = r0.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.util.Map idTableInfoMap> 
(define-const var1449 var81 (var3275_get/1088891777 var709 (cast-from-String-to-var81 var913))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2553 var2997 (cast-from-var81-to-var2997 var1449)) ; Statement: r4 = (org.hibernate.hql.spi.id.IdTableInfo) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2553 null-var2997))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {idTableInfoMap/-1094019945=([org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl], java.util.Map), var3275_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var81=([java.lang.String], java.lang.Object), cast-from-var81-to-var2997=([java.lang.Object], org.hibernate.hql.spi.id.IdTableInfo)}
; {var108=org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl, var1122=r0, var913=r1, var3412=null_type, var3275=java.util.Map, var709=$r2, var81=java.lang.Object, var1449=$r3, var2997=org.hibernate.hql.spi.id.IdTableInfo, var2553=r4}
; {org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl=var108, r0=var1122, r1=var913, null_type=var3412, java.util.Map=var3275, $r2=var709, java.lang.Object=var81, $r3=var1449, org.hibernate.hql.spi.id.IdTableInfo=var2997, r4=var2553}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.util.Map idTableInfoMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.hql.spi.id.IdTableInfo) $r3;	if r4 != null goto return r4;	return r4
;block_num 2