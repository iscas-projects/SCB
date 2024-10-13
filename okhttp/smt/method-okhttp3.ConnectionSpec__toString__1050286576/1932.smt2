(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1623 0)
(declare-sort var2655 0)
(declare-sort var3294 0)
(declare-sort var2549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isTls/1690428248 (var1623) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cipherSuites/2038066351 (var1623) var2655)
(declare-fun var3294_toString/-749122252 (var2549 String) String)
(declare-fun cast-from-var2655-to-var2549 (var2655) var2549)
(declare-fun tlsVersions/1137325679 (var1623) var2655)
(declare-fun supportsTlsExtensions/1690428248 (var1623) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1623 var1623)
(declare-const var1428 var1623) ; Statement: r0 := @this: okhttp3.ConnectionSpec 
(assert (not (= var1428 null-var1623)))
(define-const var2903 Bool (isTls/1690428248 var1428)) ; Statement: $z0 = r0.<okhttp3.ConnectionSpec: boolean isTls> 
 ; Statement: if $z0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var2903 1 0) 0))) ; Cond: $z0 != 0 
(define-const var316 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var316)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var316!1 String)
(assert (= var316!1 ""))
(assert true)
(define-const var2348 String (append/672562846 var316!1 "ConnectionSpec(cipherSuites=")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ConnectionSpec(cipherSuites=") 
(declare-const var316!2 String)
(assert (= var316!2 (str.++ var316!1 "ConnectionSpec(cipherSuites=")))
(assert true)
(define-const var1427 var2655 (cipherSuites/2038066351 var1428)) ; Statement: $r2 = virtualinvoke r0.<okhttp3.ConnectionSpec: java.util.List cipherSuites()>() 
(define-const var2794 String (var3294_toString/-749122252 (cast-from-var2655-to-var2549 var1427) "[all enabled]")) ; Statement: $r3 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r2, "[all enabled]") 
(assert true)
(define-const var1558 String (append/672562846 var2348 var2794)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2348!1 String)
(assert (= var2348!1 (str.++ var2348 var2794)))
(assert true)
(define-const var2850 String (append/672562846 var1558 ", tlsVersions=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", tlsVersions=") 
(declare-const var1558!1 String)
(assert (= var1558!1 (str.++ var1558 ", tlsVersions=")))
(assert true)
(define-const var2797 var2655 (tlsVersions/1137325679 var1428)) ; Statement: $r6 = virtualinvoke r0.<okhttp3.ConnectionSpec: java.util.List tlsVersions()>() 
(define-const var349 String (var3294_toString/-749122252 (cast-from-var2655-to-var2549 var2797) "[all enabled]")) ; Statement: $r7 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r6, "[all enabled]") 
(assert true)
(define-const var926 String (append/672562846 var2850 var349)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2850!1 String)
(assert (= var2850!1 (str.++ var2850 var349)))
(assert true)
(define-const var1641 String (append/672562846 var926 ", supportsTlsExtensions=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", supportsTlsExtensions=") 
(declare-const var926!1 String)
(assert (= var926!1 (str.++ var926 ", supportsTlsExtensions=")))
(define-const var922 Bool (supportsTlsExtensions/1690428248 var1428)) ; Statement: $z1 = r0.<okhttp3.ConnectionSpec: boolean supportsTlsExtensions> 
(assert true)
(define-const var2477 String (append/-388390247 var1641 var922)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1) 
(declare-const var1641!1 String)
(assert (str.prefixof var1641 var1641!1))
(assert true)
(define-const var1647 String (append/-1166366385 var2477 41)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2477!1 String)
(assert (str.prefixof var2477 var2477!1))
(assert true)
(define-const var2328 String (toString/-2075883882 var1647)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {isTls/1690428248=([okhttp3.ConnectionSpec], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cipherSuites/2038066351=([okhttp3.ConnectionSpec], java.util.List), var3294_toString/-749122252=([java.lang.Object, java.lang.String], java.lang.String), cast-from-var2655-to-var2549=([java.util.List], java.lang.Object), tlsVersions/1137325679=([okhttp3.ConnectionSpec], java.util.List), supportsTlsExtensions/1690428248=([okhttp3.ConnectionSpec], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1623=okhttp3.ConnectionSpec, var1428=r0, var2903=$z0, var316=$r1, var2348=$r4, var2655=java.util.List, var1427=$r2, var3294=java.util.Objects, var2549=java.lang.Object, var2794=$r3, var1558=$r5, var2850=$r8, var2797=$r6, var349=$r7, var926=$r9, var1641=$r10, var922=$z1, var2477=$r11, var1647=$r12, var2328=$r13}
; {okhttp3.ConnectionSpec=var1623, r0=var1428, $z0=var2903, $r1=var316, $r4=var2348, java.util.List=var2655, $r2=var1427, java.util.Objects=var3294, java.lang.Object=var2549, $r3=var2794, $r5=var1558, $r8=var2850, $r6=var2797, $r7=var349, $r9=var926, $r10=var1641, $z1=var922, $r11=var2477, $r12=var1647, $r13=var2328}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.ConnectionSpec;	$z0 = r0.<okhttp3.ConnectionSpec: boolean isTls>;	if $z0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ConnectionSpec(cipherSuites=");	$r2 = virtualinvoke r0.<okhttp3.ConnectionSpec: java.util.List cipherSuites()>();	$r3 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r2, "[all enabled]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", tlsVersions=");	$r6 = virtualinvoke r0.<okhttp3.ConnectionSpec: java.util.List tlsVersions()>();	$r7 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r6, "[all enabled]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", supportsTlsExtensions=");	$z1 = r0.<okhttp3.ConnectionSpec: boolean supportsTlsExtensions>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2