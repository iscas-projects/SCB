(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var211 0)
(declare-sort var3789 0)
(declare-sort var1788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var1788 String) String)
(declare-fun cast-from-var211-to-var1788 (var211) var1788)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var211 var211)
(declare-const null-String String)
(declare-const var3574 var211) ; Statement: r0 := @this: org.hibernate.dialect.Cache71Dialect$1 
(assert (not (= var3574 null-var211)))
(declare-const var1012 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1012 null-String)))
(assert true)
(define-const var2465 String (generateIdTableName/735499089 (cast-from-var211-to-var1788 var3574) var1012)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var1837 Int (length/-134980193 var2465)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 25 goto $r3 = r2 
(assert (<= var1837 25)) ; Cond: $i0 <= 25 
(define-const var926 String var2465) ; Statement: $r3 = r2 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var211-to-var1788=([org.hibernate.dialect.Cache71Dialect$1], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int)}
; {var211=org.hibernate.dialect.Cache71Dialect$1, var3574=r0, var1012=r1, var3789=null_type, var1788=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var2465=r2, var1837=$i0, var926=$r3}
; {org.hibernate.dialect.Cache71Dialect$1=var211, r0=var3574, r1=var1012, null_type=var3789, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var1788, r2=var2465, $i0=var1837, $r3=var926}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.dialect.Cache71Dialect$1;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 25 goto $r3 = r2;	$r3 = r2;	return $r3
;block_num 3