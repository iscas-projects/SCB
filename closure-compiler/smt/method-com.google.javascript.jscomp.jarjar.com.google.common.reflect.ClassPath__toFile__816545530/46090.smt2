(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var599 0)
(declare-sort var1279 0)
(declare-sort var1861 0)
(declare-sort var813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProtocol/70454678 (var599) String)
(declare-fun var1279_checkArgument/1735511034 (Bool) void)
(declare-fun var1861-init () var1861)
(declare-fun getPath/73646441 (var599) String)
(declare-fun <init>/-1681595970 (var1861 String) void)
(declare-const null-var599 var599)
(declare-const null-var813 var813)
(declare-const var776 var599) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var776 null-var599)))
(assert true)
(define-const var3887 String (getProtocol/70454678 var776)) ; Statement: $r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var2390 Bool (= var3887 "file")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("file") 
;(assert (var1279_checkArgument/1735511034 var2390)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var2390!1 Bool)
(define-const var967 var1861 var1861-init) ; Statement: $r2 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2174 var813) ; Statement: $r4 := @caughtexception 
(assert (not (= var2174 null-var813)))
(define-const var2545 var1861 var1861-init) ; Statement: $r5 = new java.io.File 
(assert true)
(define-const var1757 String (getPath/73646441 var776)) ; Statement: $r6 = virtualinvoke r0.<java.net.URL: java.lang.String getPath()>() 
(assert true)
;(assert (<init>/-1681595970 var2545 var1757)) ; Statement: specialinvoke $r5.<java.io.File: void <init>(java.lang.String)>($r6) 

(declare-const var2545!1 var1861)
(declare-const var1757!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getProtocol/70454678=([java.net.URL], java.lang.String), var1279_checkArgument/1735511034=([boolean], void), var1861-init=([], java.io.File), getPath/73646441=([java.net.URL], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void)}
; {var599=java.net.URL, var776=r0, var3887=$r1, var2390=$z0, var1279=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1861=java.io.File, var967=$r2, var813=java.net.URISyntaxException, var2174=$r4, var2545=$r5, var1757=$r6}
; {java.net.URL=var599, r0=var776, $r1=var3887, $z0=var2390, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1279, java.io.File=var1861, $r2=var967, java.net.URISyntaxException=var813, $r4=var2174, $r5=var2545, $r6=var1757}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("file");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$r2 = new java.io.File;	$r4 := @caughtexception;	$r5 = new java.io.File;	$r6 = virtualinvoke r0.<java.net.URL: java.lang.String getPath()>();	specialinvoke $r5.<java.io.File: void <init>(java.lang.String)>($r6);	return $r5
;block_num 2