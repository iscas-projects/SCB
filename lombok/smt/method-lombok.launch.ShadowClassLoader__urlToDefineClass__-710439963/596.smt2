(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var256 0)
(declare-sort var250 0)
(declare-sort var2436 0)
(declare-sort var3413 0)
(declare-sort var3218 0)
(declare-sort var1860 0)
(declare-sort var3114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var2436) var3413)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3114-init () var3114)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var3114 String var3218) void)
(declare-fun cast-from-var1860-to-var3218 (var1860) var3218)
(declare-const null-var256 var256)
(declare-const null-String String)
(declare-const null-var2436 var2436)
(declare-const null-Bool Bool)
(declare-const null-var3218 var3218)
(declare-const null-var1860 var1860)
(declare-const var3729 var256) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3729 null-var256)))
(declare-const var265 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var265 null-String)))
(declare-const var2147 var2436) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var2147 null-var2436)))
(declare-const var1835 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1835 null-Bool)))
(define-const var153 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var308 var3413 (openStream/913863501 var2147)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var1383 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1367 var3218) ; Statement: $r19 := @caughtexception 
(assert (not (= var1367 null-var3218)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3879 var1860) ; Statement: $r14 := @caughtexception 
(assert (not (= var3879 null-var1860)))
(define-const var2659 var3114 var3114-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var3695 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3695 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var3695!1 String)
(assert (= var3695!1 "I/O exception reading class "))
(assert true)
(define-const var3752 String (append/672562846 var3695!1 var265)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3695!2 String)
(assert (= var3695!2 (str.++ var3695!1 var265)))
(assert true)
(define-const var659 String (toString/-2075883882 var3752)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var2659 var659 (cast-from-var1860-to-var3218 var3879))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var2659!1 var3114)
(declare-const var659!1 String)
(declare-const var3879!1 var1860)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), var3114-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var1860-to-var3218=([java.io.IOException], java.lang.Throwable)}
; {var256=lombok.launch.ShadowClassLoader, var3729=r1, var265=r3, var250=null_type, var2436=java.net.URL, var2147=r0, var1835=z1, var153=i3, var3413=java.io.InputStream, var308=r20, var1383=r21, var3218=java.lang.Throwable, var1367=$r19, var1860=java.io.IOException, var3879=$r14, var3114=java.lang.ClassNotFoundException, var2659=$r27, var3695=$r26, var3752=$r17, var659=$r18}
; {lombok.launch.ShadowClassLoader=var256, r1=var3729, r3=var265, null_type=var250, java.net.URL=var2436, r0=var2147, z1=var1835, i3=var153, java.io.InputStream=var3413, r20=var308, r21=var1383, java.lang.Throwable=var3218, $r19=var1367, java.io.IOException=var1860, $r14=var3879, java.lang.ClassNotFoundException=var3114, $r27=var2659, $r26=var3695, $r17=var3752, $r18=var659}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$r19 := @caughtexception;	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 5