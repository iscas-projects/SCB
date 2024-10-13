(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1046 0)
(declare-sort var458 0)
(declare-sort var3304 0)
(declare-sort var464 0)
(declare-sort var1314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isDanglingSymbolicLink/-1038589607 (var1046 var458) Bool)
(declare-fun delete/2092983584 (var458) Bool)
(declare-fun var464-init () var464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1314) String)
(declare-fun cast-from-var458-to-var1314 (var458) var1314)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var464 String) void)
(declare-const null-var1046 var1046)
(declare-const null-var458 var458)
(declare-const null-var3304 var3304)
(declare-const var1591 var1046) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils 
(assert (not (= var1591 null-var1046)))
(declare-const var1322 var458) ; Statement: r70 := @parameter0: java.io.File 
(assert (not (= var1322 null-var458)))
(declare-const var1900 var3304) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var1900 null-var3304)))
(assert true)
(define-const var1527 Bool (isDanglingSymbolicLink/-1038589607 var1591 var1322)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isDanglingSymbolicLink(java.io.File)>(r70) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70) 
(assert (not (= (ite var1527 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1229 Bool (delete/2092983584 var1322)) ; Statement: $z6 = virtualinvoke r70.<java.io.File: boolean delete()>() 
 ; Statement: if $z6 != 0 goto return 
(assert (not (not (= (ite var1229 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var160 var464 var464-init) ; Statement: $r26 = new java.io.IOException 
(define-const var1583 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1583)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1583!1 String)
(assert (= var1583!1 ""))
(assert true)
(define-const var1204 String (append/672562846 var1583!1 "failed to remove dangling symbolic link ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to remove dangling symbolic link ") 
(declare-const var1583!2 String)
(assert (= var1583!2 (str.++ var1583!1 "failed to remove dangling symbolic link ")))
(assert true)
(define-const var335 String (append/-1031950772 var1204 (cast-from-var458-to-var1314 var1322))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r70) 
(declare-const var1204!1 String)
(assert (str.prefixof var1204 var1204!1))
(assert true)
(define-const var3724 String (toString/-2075883882 var335)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var160 var3724)) ; Statement: specialinvoke $r26.<java.io.IOException: void <init>(java.lang.String)>($r30) 

(declare-const var160!1 var464)
(declare-const var3724!1 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {isDanglingSymbolicLink/-1038589607=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, java.io.File], boolean), delete/2092983584=([java.io.File], boolean), var464-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var458-to-var1314=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1046=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, var1591=r0, var458=java.io.File, var1322=r70, var3304=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1900=r2, var1527=$z0, var1229=$z6, var464=java.io.IOException, var160=$r26, var1583=$r27, var1204=$r28, var1314=java.lang.Object, var335=$r29, var3724=$r30}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils=var1046, r0=var1591, java.io.File=var458, r70=var1322, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3304, r2=var1900, $z0=var1527, $z6=var1229, java.io.IOException=var464, $r26=var160, $r27=var1583, $r28=var1204, java.lang.Object=var1314, $r29=var335, $r30=var3724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils;	r70 := @parameter0: java.io.File;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isDanglingSymbolicLink(java.io.File)>(r70);	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70);	$z6 = virtualinvoke r70.<java.io.File: boolean delete()>();	if $z6 != 0 goto return;	$r26 = new java.io.IOException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to remove dangling symbolic link ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r70);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<java.io.IOException: void <init>(java.lang.String)>($r30);	throw $r26
;block_num 3