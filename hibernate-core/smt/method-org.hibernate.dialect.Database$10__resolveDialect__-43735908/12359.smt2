(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort var490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var490_getDatabaseName/407809897 (var490) String)
(declare-const null-var2686 var2686)
(declare-const null-var490 var490)
(declare-const var2968 var2686) ; Statement: r3 := @this: org.hibernate.dialect.Database$10 
(assert (not (= var2968 null-var2686)))
(declare-const var2352 var490) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var2352 null-var490)))
(define-const var101 String (var490_getDatabaseName/407809897 var2352)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var3536 String "HSQL Database Engine") ; Statement: $r2 = "HSQL Database Engine" 
(assert true)
(define-const var1766 Bool (= var3536 var101)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1766 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var490_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var2686=org.hibernate.dialect.Database$10, var2968=r3, var490=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var2352=r0, var101=r1, var3536=$r2, var1766=$z0}
; {org.hibernate.dialect.Database$10=var2686, r3=var2968, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var490, r0=var2352, r1=var101, $r2=var3536, $z0=var1766}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$10;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "HSQL Database Engine";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2