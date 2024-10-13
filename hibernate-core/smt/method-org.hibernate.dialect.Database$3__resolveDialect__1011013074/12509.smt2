(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var61 0)
(declare-sort var2227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2227_getDatabaseName/407809897 (var2227) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var61 var61)
(declare-const null-var2227 var2227)
(declare-const var3531 var61) ; Statement: r4 := @this: org.hibernate.dialect.Database$3 
(assert (not (= var3531 null-var61)))
(declare-const var2126 var2227) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var2126 null-var2227)))
(define-const var3934 String (var2227_getDatabaseName/407809897 var2126)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var2310 String "DB2 UDB for AS/400") ; Statement: $r2 = "DB2 UDB for AS/400" 
(assert true)
(define-const var1216 Bool (= var2310 var3934)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/") 
(assert (= (ite var1216 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var638 Bool (startsWith/-1785782452 var3934 "DB2/")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/") 
 ; Statement: if $z1 == 0 goto return null 
(assert (= (ite var638 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2227_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var61=org.hibernate.dialect.Database$3, var3531=r4, var2227=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var2126=r0, var3934=r1, var2310=$r2, var1216=$z0, var638=$z1}
; {org.hibernate.dialect.Database$3=var61, r4=var3531, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var2227, r0=var2126, r1=var3934, $r2=var2310, $z0=var1216, $z1=var638}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.dialect.Database$3;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "DB2 UDB for AS/400";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/");	$z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/");	if $z1 == 0 goto return null;	return null
;block_num 3