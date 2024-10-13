(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3252 0)
(declare-sort var2795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2795_getDatabaseName/407809897 (var2795) String)
(declare-const null-var3252 var3252)
(declare-const null-var2795 var2795)
(declare-const var2331 var3252) ; Statement: r3 := @this: org.hibernate.dialect.Database$18 
(assert (not (= var2331 null-var3252)))
(declare-const var1017 var2795) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var1017 null-var2795)))
(define-const var1009 String (var2795_getDatabaseName/407809897 var1017)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var1643 String "MySQL") ; Statement: $r2 = "MySQL" 
(assert true)
(define-const var381 Bool (= var1643 var1009)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var381 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2795_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var3252=org.hibernate.dialect.Database$18, var2331=r3, var2795=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var1017=r0, var1009=r1, var1643=$r2, var381=$z0}
; {org.hibernate.dialect.Database$18=var3252, r3=var2331, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var2795, r0=var1017, r1=var1009, $r2=var1643, $z0=var381}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$18;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "MySQL";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2