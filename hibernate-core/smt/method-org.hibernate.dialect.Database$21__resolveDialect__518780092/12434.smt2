(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2567 0)
(declare-sort var3765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3765_getDatabaseName/407809897 (var3765) String)
(declare-const null-var2567 var2567)
(declare-const null-var3765 var3765)
(declare-const var1662 var2567) ; Statement: r3 := @this: org.hibernate.dialect.Database$21 
(assert (not (= var1662 null-var2567)))
(declare-const var160 var3765) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var160 null-var3765)))
(define-const var2855 String (var3765_getDatabaseName/407809897 var160)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var3130 String "PostgreSQL") ; Statement: $r2 = "PostgreSQL" 
(assert true)
(define-const var2601 Bool (= var3130 var2855)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2601 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3765_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var2567=org.hibernate.dialect.Database$21, var1662=r3, var3765=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var160=r0, var2855=r1, var3130=$r2, var2601=$z0}
; {org.hibernate.dialect.Database$21=var2567, r3=var1662, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var3765, r0=var160, r1=var2855, $r2=var3130, $z0=var2601}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$21;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "PostgreSQL";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2