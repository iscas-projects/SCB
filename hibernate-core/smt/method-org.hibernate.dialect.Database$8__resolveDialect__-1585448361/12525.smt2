(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2690 0)
(declare-sort var568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var568_getDatabaseName/407809897 (var568) String)
(declare-const null-var2690 var2690)
(declare-const null-var568 var568)
(declare-const var307 var2690) ; Statement: r3 := @this: org.hibernate.dialect.Database$8 
(assert (not (= var307 null-var2690)))
(declare-const var3364 var568) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var3364 null-var568)))
(define-const var519 String (var568_getDatabaseName/407809897 var3364)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var94 String "H2") ; Statement: $r2 = "H2" 
(assert true)
(define-const var1675 Bool (= var94 var519)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1675 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var568_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var2690=org.hibernate.dialect.Database$8, var307=r3, var568=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var3364=r0, var519=r1, var94=$r2, var1675=$z0}
; {org.hibernate.dialect.Database$8=var2690, r3=var307, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var568, r0=var3364, r1=var519, $r2=var94, $z0=var1675}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$8;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "H2";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2