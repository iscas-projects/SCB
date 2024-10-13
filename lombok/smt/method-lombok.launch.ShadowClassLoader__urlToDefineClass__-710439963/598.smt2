(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var1016 0)
(declare-sort var2175 0)
(declare-sort var1078 0)
(declare-sort var3637 0)
(declare-sort var1079 0)
(declare-sort var2871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var2175) var1078)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2871-init () var2871)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var2871 String var3637) void)
(declare-fun cast-from-var1079-to-var3637 (var1079) var3637)
(declare-const null-var150 var150)
(declare-const null-String String)
(declare-const null-var2175 var2175)
(declare-const null-Bool Bool)
(declare-const null-var3637 var3637)
(declare-const null-var1079 var1079)
(declare-const var3558 var150) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3558 null-var150)))
(declare-const var2375 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2375 null-String)))
(declare-const var3360 var2175) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var3360 null-var2175)))
(declare-const var3682 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3682 null-Bool)))
(define-const var2911 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2902 var1078 (openStream/913863501 var3360)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var3697 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Non Conditional
(define-const var52 Int (getLength-Arr-Int-1 var3697)) ; Statement: $i4 = lengthof r21 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3910 var3637) ; Statement: $r19 := @caughtexception 
(assert (not (= var3910 null-var3637)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2316 var1079) ; Statement: $r14 := @caughtexception 
(assert (not (= var2316 null-var1079)))
(define-const var3452 var2871 var2871-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var2955 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2955 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var2955!1 String)
(assert (= var2955!1 "I/O exception reading class "))
(assert true)
(define-const var2166 String (append/672562846 var2955!1 var2375)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2955!2 String)
(assert (= var2955!2 (str.++ var2955!1 var2375)))
(assert true)
(define-const var1138 String (toString/-2075883882 var2166)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var3452 var1138 (cast-from-var1079-to-var3637 var2316))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var3452!1 var2871)
(declare-const var1138!1 String)
(declare-const var2316!1 var1079)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), var2871-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var1079-to-var3637=([java.io.IOException], java.lang.Throwable)}
; {var150=lombok.launch.ShadowClassLoader, var3558=r1, var2375=r3, var1016=null_type, var2175=java.net.URL, var3360=r0, var3682=z1, var2911=i3, var1078=java.io.InputStream, var2902=r20, var3697=r21, var52=$i4, var3637=java.lang.Throwable, var3910=$r19, var1079=java.io.IOException, var2316=$r14, var2871=java.lang.ClassNotFoundException, var3452=$r27, var2955=$r26, var2166=$r17, var1138=$r18}
; {lombok.launch.ShadowClassLoader=var150, r1=var3558, r3=var2375, null_type=var1016, java.net.URL=var2175, r0=var3360, z1=var3682, i3=var2911, java.io.InputStream=var1078, r20=var2902, r21=var3697, $i4=var52, java.lang.Throwable=var3637, $r19=var3910, java.io.IOException=var1079, $r14=var2316, java.lang.ClassNotFoundException=var2871, $r27=var3452, $r26=var2955, $r17=var2166, $r18=var1138}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$i4 = lengthof r21;	$r19 := @caughtexception;	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 6