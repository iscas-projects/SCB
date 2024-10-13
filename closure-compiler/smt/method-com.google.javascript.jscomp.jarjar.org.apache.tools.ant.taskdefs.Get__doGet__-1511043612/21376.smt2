(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var264 0)
(declare-sort var2400 0)
(declare-sort var3398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2400) Bool)
(declare-fun skipExisting/1631858810 (var1327) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var2400) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1813190167 (var1327 String Int) void)
(declare-const null-var1327 var1327)
(declare-const null-var264 var264)
(declare-const null-var2400 var2400)
(declare-const null-Int Int)
(declare-const null-var3398 var3398)
(declare-const var2143 var1327) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get 
(assert (not (= var2143 null-var1327)))
(declare-const var2984 var264) ; Statement: r3 := @parameter0: java.net.URL 
(assert (not (= var2984 null-var264)))
(declare-const var1012 var2400) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var1012 null-var2400)))
(declare-const var2087 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2087 null-Int)))
(declare-const var861 var3398) ; Statement: r30 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$DownloadProgress 
(assert (not (= var861 null-var3398)))
(assert true)
(define-const var2713 Bool (exists/1072868559 var1012)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2713 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1073 Bool (skipExisting/1631858810 var2143)) ; Statement: $z8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean skipExisting> 
 ; Statement: if $z8 == 0 goto (branch) 
(assert (not (= (ite var1073 1 0) 0))) ; Negate: Cond: $z8 == 0  
(define-const var477 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var477)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var477!1 String)
(assert (= var477!1 ""))
(assert true)
(define-const var2136 String (append/672562846 var477!1 "Destination already exists (skipping): ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Destination already exists (skipping): ") 
(declare-const var477!2 String)
(assert (= var477!2 (str.++ var477!1 "Destination already exists (skipping): ")))
(assert true)
(define-const var3106 String (getAbsolutePath/-802773300 var1012)) ; Statement: $r25 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3060 String (append/672562846 var2136 var3106)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2136!1 String)
(assert (= var2136!1 (str.++ var2136 var3106)))
(assert true)
(define-const var1555 String (toString/-2075883882 var3060)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1813190167 var2143 var1555 var2087)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: void log(java.lang.String,int)>($r28, i0) 

(declare-const var2143!1 var1327)
(declare-const var1555!1 String)
(declare-const var2087!1 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), skipExisting/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1813190167=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, java.lang.String, int], void)}
; {var1327=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, var2143=r1, var264=java.net.URL, var2984=r3, var2400=java.io.File, var1012=r0, var2087=i0, var3398=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$DownloadProgress, var861=r30, var2713=$z0, var1073=$z8, var477=$r24, var2136=$r26, var3106=$r25, var3060=$r27, var1555=$r28}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get=var1327, r1=var2143, java.net.URL=var264, r3=var2984, java.io.File=var2400, r0=var1012, i0=var2087, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$DownloadProgress=var3398, r30=var861, $z0=var2713, $z8=var1073, $r24=var477, $r26=var2136, $r25=var3106, $r27=var3060, $r28=var1555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get;	r3 := @parameter0: java.net.URL;	r0 := @parameter1: java.io.File;	i0 := @parameter2: int;	r30 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$DownloadProgress;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto (branch);	$z8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean skipExisting>;	if $z8 == 0 goto (branch);	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Destination already exists (skipping): ");	$r25 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: void log(java.lang.String,int)>($r28, i0);	return 1
;block_num 3