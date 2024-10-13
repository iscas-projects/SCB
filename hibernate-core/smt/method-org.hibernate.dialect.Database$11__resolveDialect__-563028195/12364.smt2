(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1829 0)
(declare-sort var749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var749_getDatabaseName/407809897 (var749) String)
(declare-const null-var1829 var1829)
(declare-const null-var749 var749)
(declare-const var1286 var1829) ; Statement: r3 := @this: org.hibernate.dialect.Database$11 
(assert (not (= var1286 null-var1829)))
(declare-const var359 var749) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var359 null-var749)))
(define-const var1359 String (var749_getDatabaseName/407809897 var359)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var601 String "Informix Dynamic Server") ; Statement: $r2 = "Informix Dynamic Server" 
(assert true)
(define-const var2078 Bool (= var601 var1359)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2078 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var749_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var1829=org.hibernate.dialect.Database$11, var1286=r3, var749=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var359=r0, var1359=r1, var601=$r2, var2078=$z0}
; {org.hibernate.dialect.Database$11=var1829, r3=var1286, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var749, r0=var359, r1=var1359, $r2=var601, $z0=var2078}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$11;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "Informix Dynamic Server";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2