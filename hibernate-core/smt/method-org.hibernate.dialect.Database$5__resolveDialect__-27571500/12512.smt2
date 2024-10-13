(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var36 0)
(declare-sort var2673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2673_getDatabaseName/407809897 (var2673) String)
(declare-const null-var36 var36)
(declare-const null-var2673 var2673)
(declare-const var1889 var36) ; Statement: r3 := @this: org.hibernate.dialect.Database$5 
(assert (not (= var1889 null-var36)))
(declare-const var3685 var2673) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var3685 null-var2673)))
(define-const var786 String (var2673_getDatabaseName/407809897 var3685)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var718 String "EnterpriseDB") ; Statement: $r2 = "EnterpriseDB" 
(assert true)
(define-const var3145 Bool (= var718 var786)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3145 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2673_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var36=org.hibernate.dialect.Database$5, var1889=r3, var2673=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var3685=r0, var786=r1, var718=$r2, var3145=$z0}
; {org.hibernate.dialect.Database$5=var36, r3=var1889, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var2673, r0=var3685, r1=var786, $r2=var718, $z0=var3145}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$5;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "EnterpriseDB";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2