(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2372 0)
(declare-sort var1862 0)
(declare-sort var1977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1862_getDatabaseName/407809897 (var1862) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1977-init () var1977)
(declare-fun <init>/2033675201 (var1977) void)
(declare-const null-var2372 var2372)
(declare-const null-var1862 var1862)
(declare-const var233 var2372) ; Statement: r4 := @this: org.hibernate.dialect.Database$3 
(assert (not (= var233 null-var2372)))
(declare-const var372 var1862) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var372 null-var1862)))
(define-const var3435 String (var1862_getDatabaseName/407809897 var372)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var3716 String "DB2 UDB for AS/400") ; Statement: $r2 = "DB2 UDB for AS/400" 
(assert true)
(define-const var213 Bool (= var3716 var3435)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/") 
(assert (= (ite var213 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1288 Bool (startsWith/-1785782452 var3435 "DB2/")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/") 
 ; Statement: if $z1 == 0 goto return null 
(assert (not (= (ite var1288 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3050 var1977 var1977-init) ; Statement: $r3 = new org.hibernate.dialect.DB2Dialect 
(assert true)
;(assert (<init>/2033675201 var3050)) ; Statement: specialinvoke $r3.<org.hibernate.dialect.DB2Dialect: void <init>()>() 

(declare-const var3050!1 var1977)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1862_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1977-init=([], org.hibernate.dialect.DB2Dialect), <init>/2033675201=([org.hibernate.dialect.DB2Dialect], void)}
; {var2372=org.hibernate.dialect.Database$3, var233=r4, var1862=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var372=r0, var3435=r1, var3716=$r2, var213=$z0, var1288=$z1, var1977=org.hibernate.dialect.DB2Dialect, var3050=$r3}
; {org.hibernate.dialect.Database$3=var2372, r4=var233, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var1862, r0=var372, r1=var3435, $r2=var3716, $z0=var213, $z1=var1288, org.hibernate.dialect.DB2Dialect=var1977, $r3=var3050}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.dialect.Database$3;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "DB2 UDB for AS/400";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/");	$z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/");	if $z1 == 0 goto return null;	$r3 = new org.hibernate.dialect.DB2Dialect;	specialinvoke $r3.<org.hibernate.dialect.DB2Dialect: void <init>()>();	return $r3
;block_num 3