(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var403 0)
(declare-sort var699 0)
(declare-sort var775 0)
(declare-sort var1628 0)
(declare-sort var233 0)
(declare-sort var19 0)
(declare-sort var2322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var775-init () var775)
(declare-fun <init>/-201242697 (var775) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1628-init () var1628)
(declare-fun var233-init () var233)
(declare-fun <init>/1351648660 (var233 var699) void)
(declare-fun <init>/30097470 (var1628 var19) void)
(declare-fun cast-from-var233-to-var19 (var233) var19)
(declare-fun addSuppressed/-2013977960 (var2322 var2322) void)
(declare-const null-var403 var403)
(declare-const null-var699 var699)
(declare-const null-var2322 var2322)
(declare-const var2263 var403) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var2263 null-var403)))
(declare-const var3088 var699) ; Statement: r4 := @parameter0: java.io.File 
(assert (not (= var3088 null-var699)))
(define-const var2732 var775 var775-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2732)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var2732!1 var775)
(define-const var391 String "||:") ; Statement: $r1 = "||:" 
(assert true)
(define-const var3380 Int (length/-134980193 var391)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1382 var1628 var1628-init) ; Statement: $r2 = new java.io.BufferedReader 
(define-const var2211 var233 var233-init) ; Statement: $r3 = new java.io.FileReader 
(assert true)
;(assert (<init>/1351648660 var2211 var3088)) ; Statement: specialinvoke $r3.<java.io.FileReader: void <init>(java.io.File)>(r4) 

(declare-const var2211!1 var233)
(declare-const var3088!1 var699)
(assert true)
;(assert (<init>/30097470 var1382 (cast-from-var233-to-var19 var2211!1))) ; Statement: specialinvoke $r2.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3) 

(declare-const var1382!1 var1628)
(declare-const var2211!2 var233)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2455 var2322) ; Statement: $r9 := @caughtexception 
(assert (not (= var2455 null-var2322)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1277 var2322) ; Statement: $r8 := @caughtexception 
(assert (not (= var1277 null-var2322)))
(assert true)
;(assert (addSuppressed/-2013977960 var2455 var1277)) ; Statement: virtualinvoke $r9.<java.lang.Throwable: void addSuppressed(java.lang.Throwable)>($r8) 

(declare-const var2455!1 var2322)
(declare-const var1277!1 var2322)
(assert true) ; Non Conditional
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var775-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), var1628-init=([], java.io.BufferedReader), var233-init=([], java.io.FileReader), <init>/1351648660=([java.io.FileReader, java.io.File], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var233-to-var19=([java.io.FileReader], java.io.Reader), addSuppressed/-2013977960=([java.lang.Throwable, java.lang.Throwable], void)}
; {var403=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var2263=r10, var699=java.io.File, var3088=r4, var775=java.util.HashMap, var2732=$r0, var391=$r1, var3380=i0, var1628=java.io.BufferedReader, var1382=$r2, var233=java.io.FileReader, var2211=$r3, var19=java.io.Reader, var2322=java.lang.Throwable, var2455=$r9, var1277=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var403, r10=var2263, java.io.File=var699, r4=var3088, java.util.HashMap=var775, $r0=var2732, $r1=var391, i0=var3380, java.io.BufferedReader=var1628, $r2=var1382, java.io.FileReader=var233, $r3=var2211, java.io.Reader=var19, java.lang.Throwable=var2322, $r9=var2455, $r8=var1277}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r4 := @parameter0: java.io.File;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	$r1 = "||:";	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = new java.io.BufferedReader;	$r3 = new java.io.FileReader;	specialinvoke $r3.<java.io.FileReader: void <init>(java.io.File)>(r4);	specialinvoke $r2.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3);	$r9 := @caughtexception;	$r8 := @caughtexception;	virtualinvoke $r9.<java.lang.Throwable: void addSuppressed(java.lang.Throwable)>($r8);	throw $r9
;block_num 4