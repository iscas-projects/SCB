(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1283 0)
(declare-sort var2741 0)
(declare-sort var454 0)
(declare-sort var3767 0)
(declare-sort var1686 0)
(declare-sort var3622 0)
(declare-sort var3865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var454) var3767)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun close/-190175943 (var3767) void)
(declare-fun var3865-init () var3865)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var3865 String var1686) void)
(declare-fun cast-from-var3622-to-var1686 (var3622) var1686)
(declare-const null-var1283 var1283)
(declare-const null-String String)
(declare-const null-var454 var454)
(declare-const null-Bool Bool)
(declare-const null-var1686 var1686)
(declare-const null-var3622 var3622)
(declare-const var1773 var1283) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1773 null-var1283)))
(declare-const var3626 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3626 null-String)))
(declare-const var893 var454) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var893 null-var454)))
(declare-const var941 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var941 null-Bool)))
(define-const var3706 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2556 var3767 (openStream/913863501 var893)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var1186 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var614 var1686) ; Statement: $r19 := @caughtexception 
(assert (not (= var614 null-var1686)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var2556)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var2556!1 var3767)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var410 var3622) ; Statement: $r14 := @caughtexception 
(assert (not (= var410 null-var3622)))
(define-const var766 var3865 var3865-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var1254 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1254 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var1254!1 String)
(assert (= var1254!1 "I/O exception reading class "))
(assert true)
(define-const var322 String (append/672562846 var1254!1 var3626)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1254!2 String)
(assert (= var1254!2 (str.++ var1254!1 var3626)))
(assert true)
(define-const var2692 String (toString/-2075883882 var322)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var766 var2692 (cast-from-var3622-to-var1686 var410))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var766!1 var3865)
(declare-const var2692!1 String)
(declare-const var410!1 var3622)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), close/-190175943=([java.io.InputStream], void), var3865-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var3622-to-var1686=([java.io.IOException], java.lang.Throwable)}
; {var1283=lombok.launch.ShadowClassLoader, var1773=r1, var3626=r3, var2741=null_type, var454=java.net.URL, var893=r0, var941=z1, var3706=i3, var3767=java.io.InputStream, var2556=r20, var1186=r21, var1686=java.lang.Throwable, var614=$r19, var3622=java.io.IOException, var410=$r14, var3865=java.lang.ClassNotFoundException, var766=$r27, var1254=$r26, var322=$r17, var2692=$r18}
; {lombok.launch.ShadowClassLoader=var1283, r1=var1773, r3=var3626, null_type=var2741, java.net.URL=var454, r0=var893, z1=var941, i3=var3706, java.io.InputStream=var3767, r20=var2556, r21=var1186, java.lang.Throwable=var1686, $r19=var614, java.io.IOException=var3622, $r14=var410, java.lang.ClassNotFoundException=var3865, $r27=var766, $r26=var1254, $r17=var322, $r18=var2692}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 6