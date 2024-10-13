(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1564 0)
(declare-sort var2788 0)
(declare-sort var1176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var1176 String) String)
(declare-fun cast-from-var1564-to-var1176 (var1564) var1176)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1564 var1564)
(declare-const null-String String)
(declare-const var1584 var1564) ; Statement: r0 := @this: org.hibernate.dialect.Oracle8iDialect$4 
(assert (not (= var1584 null-var1564)))
(declare-const var1614 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1614 null-String)))
(assert true)
(define-const var1483 String (generateIdTableName/735499089 (cast-from-var1564-to-var1176 var1584) var1614)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var1957 Int (length/-134980193 var1483)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 30 goto $r3 = r2 
(assert (<= var1957 30)) ; Cond: $i0 <= 30 
(define-const var3433 String var1483) ; Statement: $r3 = r2 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var1564-to-var1176=([org.hibernate.dialect.Oracle8iDialect$4], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int)}
; {var1564=org.hibernate.dialect.Oracle8iDialect$4, var1584=r0, var1614=r1, var2788=null_type, var1176=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var1483=r2, var1957=$i0, var3433=$r3}
; {org.hibernate.dialect.Oracle8iDialect$4=var1564, r0=var1584, r1=var1614, null_type=var2788, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var1176, r2=var1483, $i0=var1957, $r3=var3433}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.dialect.Oracle8iDialect$4;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 30 goto $r3 = r2;	$r3 = r2;	return $r3
;block_num 3