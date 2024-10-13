(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1390 0)
(declare-sort var978 0)
(declare-sort var1962 0)
(declare-sort var1722 0)
(declare-sort var1789 0)
(declare-sort var394 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var1962) var1722)
(declare-fun close/-190175943 (var1722) void)
(declare-fun var3560-init () var3560)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var3560 String var1789) void)
(declare-fun cast-from-var394-to-var1789 (var394) var1789)
(declare-const null-var1390 var1390)
(declare-const null-String String)
(declare-const null-var1962 var1962)
(declare-const null-Bool Bool)
(declare-const null-var1789 var1789)
(declare-const null-var394 var394)
(declare-const var2306 var1390) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2306 null-var1390)))
(declare-const var2562 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2562 null-String)))
(declare-const var79 var1962) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var79 null-var1962)))
(declare-const var2846 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2846 null-Bool)))
(define-const var2730 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3035 var1722 (openStream/913863501 var79)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1175 var1789) ; Statement: $r19 := @caughtexception 
(assert (not (= var1175 null-var1789)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var3035)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var3035!1 var1722)
(assert true) ; Non Conditional
 ; Statement: throw $r19 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1840 var394) ; Statement: $r14 := @caughtexception 
(assert (not (= var1840 null-var394)))
(define-const var3227 var3560 var3560-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var842 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var842 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var842!1 String)
(assert (= var842!1 "I/O exception reading class "))
(assert true)
(define-const var1325 String (append/672562846 var842!1 var2562)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var842!2 String)
(assert (= var842!2 (str.++ var842!1 var2562)))
(assert true)
(define-const var2526 String (toString/-2075883882 var1325)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var3227 var2526 (cast-from-var394-to-var1789 var1840))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var3227!1 var3560)
(declare-const var2526!1 String)
(declare-const var1840!1 var394)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), close/-190175943=([java.io.InputStream], void), var3560-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var394-to-var1789=([java.io.IOException], java.lang.Throwable)}
; {var1390=lombok.launch.ShadowClassLoader, var2306=r1, var2562=r3, var978=null_type, var1962=java.net.URL, var79=r0, var2846=z1, var2730=i3, var1722=java.io.InputStream, var3035=r20, var1789=java.lang.Throwable, var1175=$r19, var394=java.io.IOException, var1840=$r14, var3560=java.lang.ClassNotFoundException, var3227=$r27, var842=$r26, var1325=$r17, var2526=$r18}
; {lombok.launch.ShadowClassLoader=var1390, r1=var2306, r3=var2562, null_type=var978, java.net.URL=var1962, r0=var79, z1=var2846, i3=var2730, java.io.InputStream=var1722, r20=var3035, java.lang.Throwable=var1789, $r19=var1175, java.io.IOException=var394, $r14=var1840, java.lang.ClassNotFoundException=var3560, $r27=var3227, $r26=var842, $r17=var1325, $r18=var2526}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	throw $r19;	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 6