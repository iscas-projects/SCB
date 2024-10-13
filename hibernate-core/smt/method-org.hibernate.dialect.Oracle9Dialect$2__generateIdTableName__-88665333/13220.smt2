(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort var328 0)
(declare-sort var1378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateIdTableName/735499089 (var1378 String) String)
(declare-fun cast-from-var1830-to-var1378 (var1830) var1378)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1830 var1830)
(declare-const null-String String)
(declare-const var2351 var1830) ; Statement: r0 := @this: org.hibernate.dialect.Oracle9Dialect$2 
(assert (not (= var2351 null-var1830)))
(declare-const var897 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var897 null-String)))
(assert true)
(define-const var2050 String (generateIdTableName/735499089 (cast-from-var1830-to-var1378 var2351) var897)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1) 
(assert true)
(define-const var2176 Int (length/-134980193 var2050)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 30 goto $r3 = r2 
(assert (<= var2176 30)) ; Cond: $i0 <= 30 
(define-const var1463 String var2050) ; Statement: $r3 = r2 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var1830-to-var1378=([org.hibernate.dialect.Oracle9Dialect$2], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), length/-134980193=([java.lang.String], int)}
; {var1830=org.hibernate.dialect.Oracle9Dialect$2, var2351=r0, var897=r1, var328=null_type, var1378=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var2050=r2, var2176=$i0, var1463=$r3}
; {org.hibernate.dialect.Oracle9Dialect$2=var1830, r0=var2351, r1=var897, null_type=var328, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var1378, r2=var2050, $i0=var2176, $r3=var1463}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.dialect.Oracle9Dialect$2;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 30 goto $r3 = r2;	$r3 = r2;	return $r3
;block_num 3