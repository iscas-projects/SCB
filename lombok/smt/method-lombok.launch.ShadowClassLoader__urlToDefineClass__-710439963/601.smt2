(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var323 0)
(declare-sort var429 0)
(declare-sort var1078 0)
(declare-sort var614 0)
(declare-sort var352 0)
(declare-sort var1411 0)
(declare-sort var1512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var1078) var614)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1512-init () var1512)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var1512 String var352) void)
(declare-fun cast-from-var1411-to-var352 (var1411) var352)
(declare-const null-var323 var323)
(declare-const null-String String)
(declare-const null-var1078 var1078)
(declare-const null-Bool Bool)
(declare-const null-var352 var352)
(declare-const null-var1411 var1411)
(declare-const var1909 var323) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1909 null-var323)))
(declare-const var1252 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1252 null-String)))
(declare-const var2967 var1078) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var2967 null-var1078)))
(declare-const var3040 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3040 null-Bool)))
(define-const var2027 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1780 var614 (openStream/913863501 var2967)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var540 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Non Conditional
(define-const var2297 Int (getLength-Arr-Int-1 var540)) ; Statement: $i4 = lengthof r21 
(assert true) ; Non Conditional
(define-const var3013 Int (- var2297 var2027)) ; Statement: $i5 = $i4 - i3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1107 var352) ; Statement: $r19 := @caughtexception 
(assert (not (= var1107 null-var352)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1770 var1411) ; Statement: $r14 := @caughtexception 
(assert (not (= var1770 null-var1411)))
(define-const var3144 var1512 var1512-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var2915 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2915 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var2915!1 String)
(assert (= var2915!1 "I/O exception reading class "))
(assert true)
(define-const var1308 String (append/672562846 var2915!1 var1252)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2915!2 String)
(assert (= var2915!2 (str.++ var2915!1 var1252)))
(assert true)
(define-const var2128 String (toString/-2075883882 var1308)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var3144 var2128 (cast-from-var1411-to-var352 var1770))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var3144!1 var1512)
(declare-const var2128!1 String)
(declare-const var1770!1 var1411)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), var1512-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var1411-to-var352=([java.io.IOException], java.lang.Throwable)}
; {var323=lombok.launch.ShadowClassLoader, var1909=r1, var1252=r3, var429=null_type, var1078=java.net.URL, var2967=r0, var3040=z1, var2027=i3, var614=java.io.InputStream, var1780=r20, var540=r21, var2297=$i4, var3013=$i5, var352=java.lang.Throwable, var1107=$r19, var1411=java.io.IOException, var1770=$r14, var1512=java.lang.ClassNotFoundException, var3144=$r27, var2915=$r26, var1308=$r17, var2128=$r18}
; {lombok.launch.ShadowClassLoader=var323, r1=var1909, r3=var1252, null_type=var429, java.net.URL=var1078, r0=var2967, z1=var3040, i3=var2027, java.io.InputStream=var614, r20=var1780, r21=var540, $i4=var2297, $i5=var3013, java.lang.Throwable=var352, $r19=var1107, java.io.IOException=var1411, $r14=var1770, java.lang.ClassNotFoundException=var1512, $r27=var3144, $r26=var2915, $r17=var1308, $r18=var2128}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$i4 = lengthof r21;	$i5 = $i4 - i3;	$r19 := @caughtexception;	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 7