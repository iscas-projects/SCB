(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2291 0)
(declare-sort var3087 0)
(declare-sort var1619 0)
(declare-sort var2913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1619_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun toString/-522406933 (var2913) String)
(declare-fun cast-from-var3087-to-var2913 (var3087) var2913)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1619_objectId/1952731062 (var2913) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1619_logDiagnostic/1268238408 (String) void)
(declare-fun var3087_getSystemClassLoader/-483392723 () var3087)
(declare-const null-String String)
(declare-const null-var3087 var3087)
(declare-const var1437 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1437 null-String)))
(declare-const var619 var3087) ; Statement: r24 := @parameter1: java.lang.ClassLoader 
(assert (not (= var619 null-var3087)))
(define-const var3463 Bool var1619_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var3463 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert (not (= var619 null-var3087))) ; Negate: Cond: r24 == null  
(assert true)
(define-const var200 String (toString/-522406933 (cast-from-var3087-to-var2913 var619))) ; Statement: r25 = virtualinvoke r24.<java.lang.Object: java.lang.String toString()>() 
(define-const var3178 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3178)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3178!1 String)
(assert (= var3178!1 ""))
(assert true)
(define-const var2126 String (append/672562846 var3178!1 var1437)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3178!2 String)
(assert (= var3178!2 (str.++ var3178!1 var1437)))
(define-const var2275 String (var1619_objectId/1952731062 (cast-from-var3087-to-var2913 var619))) ; Statement: $r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r24) 
(assert true)
(define-const var193 String (append/672562846 var2126 var2275)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2126!1 String)
(assert (= var2126!1 (str.++ var2126 var2275)))
(assert true)
(define-const var90 String (append/672562846 var193 " == \u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" == \'") 
(declare-const var193!1 String)
(assert (= var193!1 (str.++ var193 " == \u0027")))
(assert true)
(define-const var2137 String (append/672562846 var90 var200)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var90!1 String)
(assert (= var90!1 (str.++ var90 var200)))
(assert true)
(define-const var2374 String (append/672562846 var2137 "\u0027")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2137!1 String)
(assert (= var2137!1 (str.++ var2137 "\u0027")))
(assert true)
(define-const var1405 String (toString/-2075883882 var2374)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1619_logDiagnostic/1268238408 var1405)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r16) 

(declare-const var1405!1 String)
(assert true) ; Non Conditional
(define-const var620 var3087 var3087_getSystemClassLoader/-483392723) ; Statement: $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r24 == null goto return 
(assert (= var619 null-var3087)) ; Cond: r24 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1619_isDiagnosticsEnabled/-1004161365=([], boolean), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3087-to-var2913=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1619_objectId/1952731062=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1619_logDiagnostic/1268238408=([java.lang.String], void), var3087_getSystemClassLoader/-483392723=([], java.lang.ClassLoader)}
; {var1437=r2, var2291=null_type, var3087=java.lang.ClassLoader, var619=r24, var1619=org.apache.commons.logging.LogFactory, var3463=$z0, var2913=java.lang.Object, var200=r25, var3178=$r9, var2126=$r11, var2275=$r10, var193=$r12, var90=$r13, var2137=$r14, var2374=$r15, var1405=$r16, var620=$r17}
; {r2=var1437, null_type=var2291, java.lang.ClassLoader=var3087, r24=var619, org.apache.commons.logging.LogFactory=var1619, $z0=var3463, java.lang.Object=var2913, r25=var200, $r9=var3178, $r11=var2126, $r10=var2275, $r12=var193, $r13=var90, $r14=var2137, $r15=var2374, $r16=var1405, $r17=var620}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r24 := @parameter1: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto (branch);	if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	r25 = virtualinvoke r24.<java.lang.Object: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" == \'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r16);	$r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	goto [?= (branch)];	if r24 == null goto return;	return
;block_num 7