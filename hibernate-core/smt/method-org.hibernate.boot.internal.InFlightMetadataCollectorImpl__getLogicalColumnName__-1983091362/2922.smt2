(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2421 0)
(declare-sort var2362 0)
(declare-sort var1772 0)
(declare-sort var505 0)
(declare-sort var2808 0)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDatabase/273418701 (var2421) var505)
(declare-fun getJdbcEnvironment/-2057911686 (var505) var2808)
(declare-fun var2808_getDialect/-1607750029 (var2808) var2061)
(declare-fun render/-1870218016 (var1772 var2061) String)
(declare-fun render/-241411902 (var1772) String)
(declare-const null-var2421 var2421)
(declare-const null-var2362 var2362)
(declare-const null-var1772 var1772)
(declare-const var2361 var2421) ; Statement: r1 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var2361 null-var2421)))
(declare-const var2344 var2362) ; Statement: r6 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var2344 null-var2362)))
(declare-const var1995 var1772) ; Statement: r0 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1995 null-var1772)))
(assert true)
(define-const var2580 var505 (getDatabase/273418701 var2361)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: org.hibernate.boot.model.relational.Database getDatabase()>() 
(assert true)
(define-const var3159 var2808 (getJdbcEnvironment/-2057911686 var2580)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>() 
(define-const var1886 var2061 (var2808_getDialect/-1607750029 var3159)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var416 String (render/-1870218016 var1995 var1886)) ; Statement: r5 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String render(org.hibernate.dialect.Dialect)>($r4) 
(define-const var124 var1772 null-var1772) ; Statement: r23 = null 
(define-const var3618 var2362 var2344) ; Statement: r24 = r6 
(assert true) ; Non Conditional
 ; Statement: if r24 == null goto (branch) 
(assert (= var3618 null-var2362)) ; Cond: r24 == null 
 ; Statement: if r23 != null goto $r7 = virtualinvoke r23.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert (not (= var124 null-var1772))) ; Cond: r23 != null 
(assert true)
(define-const var550 String (render/-241411902 var124)) ; Statement: $r7 = virtualinvoke r23.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDatabase/273418701=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], org.hibernate.boot.model.relational.Database), getJdbcEnvironment/-2057911686=([org.hibernate.boot.model.relational.Database], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), var2808_getDialect/-1607750029=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.dialect.Dialect), render/-1870218016=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String)}
; {var2421=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var2361=r1, var2362=org.hibernate.mapping.Table, var2344=r6, var1772=org.hibernate.boot.model.naming.Identifier, var1995=r0, var505=org.hibernate.boot.model.relational.Database, var2580=$r2, var2808=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var3159=$r3, var2061=org.hibernate.dialect.Dialect, var1886=$r4, var416=r5, var124=r23, var3618=r24, var550=$r7}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2421, r1=var2361, org.hibernate.mapping.Table=var2362, r6=var2344, org.hibernate.boot.model.naming.Identifier=var1772, r0=var1995, org.hibernate.boot.model.relational.Database=var505, $r2=var2580, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2808, $r3=var3159, org.hibernate.dialect.Dialect=var2061, $r4=var1886, r5=var416, r23=var124, r24=var3618, $r7=var550}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r6 := @parameter0: org.hibernate.mapping.Table;	r0 := @parameter1: org.hibernate.boot.model.naming.Identifier;	$r2 = virtualinvoke r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: org.hibernate.boot.model.relational.Database getDatabase()>();	$r3 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>();	r5 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String render(org.hibernate.dialect.Dialect)>($r4);	r23 = null;	r24 = r6;	if r24 == null goto (branch);	if r23 != null goto $r7 = virtualinvoke r23.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	$r7 = virtualinvoke r23.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	return $r7
;block_num 4