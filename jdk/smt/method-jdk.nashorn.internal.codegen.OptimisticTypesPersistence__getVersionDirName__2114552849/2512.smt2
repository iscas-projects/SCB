(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var283 0)
(declare-sort var2671 0)
(declare-sort var3089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var283!class ClassObject)
(declare-fun getResource/413390302 (ClassObject String) var2671)
(declare-fun getProtocol/70454678 (var2671) String)
(declare-fun var3089-init () var3089)
(declare-fun <init>/-208190597 (var3089) void)
(define-const var667 ClassObject var283!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/codegen/OptimisticTypesPersistence;" 
(assert true)
(define-const var1043 var2671 (getResource/413390302 var667 "anchor.properties")) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.net.URL getResource(java.lang.String)>("anchor.properties") 
(assert true)
(define-const var2503 String (getProtocol/70454678 var1043)) ; Statement: r2 = virtualinvoke r1.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var815 Bool (= var2503 "jar")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("jar") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file") 
(assert (= (ite var815 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3731 Bool (= var2503 "file")) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file") 
 ; Statement: if $z1 == 0 goto $r36 = new java.lang.AssertionError 
(assert (= (ite var3731 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1784 var3089 var3089-init) ; Statement: $r36 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var1784)) ; Statement: specialinvoke $r36.<java.lang.AssertionError: void <init>()>() 

(declare-const var1784!1 var3089)
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), getProtocol/70454678=([java.net.URL], java.lang.String), var3089-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var283=jdk.nashorn.internal.codegen.OptimisticTypesPersistence, var667=$r0, var2671=java.net.URL, var1043=r1, var2503=r2, var815=$z0, var3731=$z1, var3089=java.lang.AssertionError, var1784=$r36}
; {jdk.nashorn.internal.codegen.OptimisticTypesPersistence=var283, $r0=var667, java.net.URL=var2671, r1=var1043, r2=var2503, $z0=var815, $z1=var3731, java.lang.AssertionError=var3089, $r36=var1784}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts $r0 = class "Ljdk/nashorn/internal/codegen/OptimisticTypesPersistence;";	r1 = virtualinvoke $r0.<java.lang.Class: java.net.URL getResource(java.lang.String)>("anchor.properties");	r2 = virtualinvoke r1.<java.net.URL: java.lang.String getProtocol()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("jar");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file");	$z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file");	if $z1 == 0 goto $r36 = new java.lang.AssertionError;	$r36 = new java.lang.AssertionError;	specialinvoke $r36.<java.lang.AssertionError: void <init>()>();	throw $r36
;block_num 3