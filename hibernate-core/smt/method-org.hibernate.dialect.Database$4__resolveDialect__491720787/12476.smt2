(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3261 0)
(declare-sort var3126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3126_getDatabaseName/407809897 (var3126) String)
(declare-const null-var3261 var3261)
(declare-const null-var3126 var3126)
(declare-const var3121 var3261) ; Statement: r3 := @this: org.hibernate.dialect.Database$4 
(assert (not (= var3121 null-var3261)))
(declare-const var3263 var3126) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var3263 null-var3126)))
(define-const var3216 String (var3126_getDatabaseName/407809897 var3263)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var925 String "Apache Derby") ; Statement: $r2 = "Apache Derby" 
(assert true)
(define-const var1013 Bool (= var925 var3216)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1013 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3126_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var3261=org.hibernate.dialect.Database$4, var3121=r3, var3126=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var3263=r0, var3216=r1, var925=$r2, var1013=$z0}
; {org.hibernate.dialect.Database$4=var3261, r3=var3121, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var3126, r0=var3263, r1=var3216, $r2=var925, $z0=var1013}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$4;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "Apache Derby";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2