(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var420 0)
(declare-sort var3105 0)
(declare-sort var1638 0)
(declare-sort var1982 0)
(declare-sort var3766 0)
(declare-sort var2028 0)
(declare-sort var1658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var1638) var1982)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun close/-190175943 (var1982) void)
(declare-fun var1658-init () var1658)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var1658 String var3766) void)
(declare-fun cast-from-var2028-to-var3766 (var2028) var3766)
(declare-const null-var420 var420)
(declare-const null-String String)
(declare-const null-var1638 var1638)
(declare-const null-Bool Bool)
(declare-const null-var3766 var3766)
(declare-const null-var2028 var2028)
(declare-const var3176 var420) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3176 null-var420)))
(declare-const var1168 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1168 null-String)))
(declare-const var1120 var1638) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var1120 null-var1638)))
(declare-const var3764 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3764 null-Bool)))
(define-const var2395 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2360 var1982 (openStream/913863501 var1120)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var2168 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3505 var3766) ; Statement: $r19 := @caughtexception 
(assert (not (= var3505 null-var3766)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var2360)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var2360!1 var1982)
(assert true) ; Non Conditional
 ; Statement: throw $r19 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1814 var2028) ; Statement: $r14 := @caughtexception 
(assert (not (= var1814 null-var2028)))
(define-const var2755 var1658 var1658-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var3117 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3117 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var3117!1 String)
(assert (= var3117!1 "I/O exception reading class "))
(assert true)
(define-const var874 String (append/672562846 var3117!1 var1168)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3117!2 String)
(assert (= var3117!2 (str.++ var3117!1 var1168)))
(assert true)
(define-const var147 String (toString/-2075883882 var874)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var2755 var147 (cast-from-var2028-to-var3766 var1814))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var2755!1 var1658)
(declare-const var147!1 String)
(declare-const var1814!1 var2028)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), close/-190175943=([java.io.InputStream], void), var1658-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var2028-to-var3766=([java.io.IOException], java.lang.Throwable)}
; {var420=lombok.launch.ShadowClassLoader, var3176=r1, var1168=r3, var3105=null_type, var1638=java.net.URL, var1120=r0, var3764=z1, var2395=i3, var1982=java.io.InputStream, var2360=r20, var2168=r21, var3766=java.lang.Throwable, var3505=$r19, var2028=java.io.IOException, var1814=$r14, var1658=java.lang.ClassNotFoundException, var2755=$r27, var3117=$r26, var874=$r17, var147=$r18}
; {lombok.launch.ShadowClassLoader=var420, r1=var3176, r3=var1168, null_type=var3105, java.net.URL=var1638, r0=var1120, z1=var3764, i3=var2395, java.io.InputStream=var1982, r20=var2360, r21=var2168, java.lang.Throwable=var3766, $r19=var3505, java.io.IOException=var2028, $r14=var1814, java.lang.ClassNotFoundException=var1658, $r27=var2755, $r26=var3117, $r17=var874, $r18=var147}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	throw $r19;	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 7