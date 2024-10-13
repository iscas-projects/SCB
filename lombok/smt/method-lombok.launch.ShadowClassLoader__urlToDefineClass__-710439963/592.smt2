(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3206 0)
(declare-sort var2360 0)
(declare-sort var1491 0)
(declare-sort var704 0)
(declare-sort var1449 0)
(declare-sort var1730 0)
(declare-sort var1291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var1491) var704)
(declare-fun var1730-init () var1730)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var1730 String var1291) void)
(declare-fun cast-from-var1449-to-var1291 (var1449) var1291)
(declare-const null-var3206 var3206)
(declare-const null-String String)
(declare-const null-var1491 var1491)
(declare-const null-Bool Bool)
(declare-const null-var1449 var1449)
(declare-const var1557 var3206) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1557 null-var3206)))
(declare-const var3465 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3465 null-String)))
(declare-const var3074 var1491) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var3074 null-var1491)))
(declare-const var888 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var888 null-Bool)))
(define-const var129 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2669 var704 (openStream/913863501 var3074)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2477 var1449) ; Statement: $r14 := @caughtexception 
(assert (not (= var2477 null-var1449)))
(define-const var1096 var1730 var1730-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var3343 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3343 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var3343!1 String)
(assert (= var3343!1 "I/O exception reading class "))
(assert true)
(define-const var3571 String (append/672562846 var3343!1 var3465)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3343!2 String)
(assert (= var3343!2 (str.++ var3343!1 var3465)))
(assert true)
(define-const var1345 String (toString/-2075883882 var3571)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var1096 var1345 (cast-from-var1449-to-var1291 var2477))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var1096!1 var1730)
(declare-const var1345!1 String)
(declare-const var2477!1 var1449)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), var1730-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var1449-to-var1291=([java.io.IOException], java.lang.Throwable)}
; {var3206=lombok.launch.ShadowClassLoader, var1557=r1, var3465=r3, var2360=null_type, var1491=java.net.URL, var3074=r0, var888=z1, var129=i3, var704=java.io.InputStream, var2669=r20, var1449=java.io.IOException, var2477=$r14, var1730=java.lang.ClassNotFoundException, var1096=$r27, var3343=$r26, var3571=$r17, var1345=$r18, var1291=java.lang.Throwable}
; {lombok.launch.ShadowClassLoader=var3206, r1=var1557, r3=var3465, null_type=var2360, java.net.URL=var1491, r0=var3074, z1=var888, i3=var129, java.io.InputStream=var704, r20=var2669, java.io.IOException=var1449, $r14=var2477, java.lang.ClassNotFoundException=var1730, $r27=var1096, $r26=var3343, $r17=var3571, $r18=var1345, java.lang.Throwable=var1291}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 3