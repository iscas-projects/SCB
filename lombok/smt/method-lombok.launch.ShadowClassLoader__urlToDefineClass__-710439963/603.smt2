(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1040 0)
(declare-sort var2617 0)
(declare-sort var312 0)
(declare-sort var834 0)
(declare-sort var307 0)
(declare-sort var902 0)
(declare-sort var1130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var312) var834)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun close/-190175943 (var834) void)
(declare-fun var1130-init () var1130)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var1130 String var307) void)
(declare-fun cast-from-var902-to-var307 (var902) var307)
(declare-const null-var1040 var1040)
(declare-const null-String String)
(declare-const null-var312 var312)
(declare-const null-Bool Bool)
(declare-const null-var307 var307)
(declare-const null-var902 var902)
(declare-const var1872 var1040) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1872 null-var1040)))
(declare-const var2846 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2846 null-String)))
(declare-const var3753 var312) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var3753 null-var312)))
(declare-const var1222 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1222 null-Bool)))
(define-const var2349 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3780 var834 (openStream/913863501 var3753)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var1431 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Non Conditional
(define-const var1435 Int (getLength-Arr-Int-1 var1431)) ; Statement: $i4 = lengthof r21 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1168 var307) ; Statement: $r19 := @caughtexception 
(assert (not (= var1168 null-var307)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var3780)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var3780!1 var834)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var925 var902) ; Statement: $r14 := @caughtexception 
(assert (not (= var925 null-var902)))
(define-const var2871 var1130 var1130-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var2644 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2644 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var2644!1 String)
(assert (= var2644!1 "I/O exception reading class "))
(assert true)
(define-const var302 String (append/672562846 var2644!1 var2846)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2644!2 String)
(assert (= var2644!2 (str.++ var2644!1 var2846)))
(assert true)
(define-const var768 String (toString/-2075883882 var302)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var2871 var768 (cast-from-var902-to-var307 var925))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var2871!1 var1130)
(declare-const var768!1 String)
(declare-const var925!1 var902)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), close/-190175943=([java.io.InputStream], void), var1130-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var902-to-var307=([java.io.IOException], java.lang.Throwable)}
; {var1040=lombok.launch.ShadowClassLoader, var1872=r1, var2846=r3, var2617=null_type, var312=java.net.URL, var3753=r0, var1222=z1, var2349=i3, var834=java.io.InputStream, var3780=r20, var1431=r21, var1435=$i4, var307=java.lang.Throwable, var1168=$r19, var902=java.io.IOException, var925=$r14, var1130=java.lang.ClassNotFoundException, var2871=$r27, var2644=$r26, var302=$r17, var768=$r18}
; {lombok.launch.ShadowClassLoader=var1040, r1=var1872, r3=var2846, null_type=var2617, java.net.URL=var312, r0=var3753, z1=var1222, i3=var2349, java.io.InputStream=var834, r20=var3780, r21=var1431, $i4=var1435, java.lang.Throwable=var307, $r19=var1168, java.io.IOException=var902, $r14=var925, java.lang.ClassNotFoundException=var1130, $r27=var2871, $r26=var2644, $r17=var302, $r18=var768}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$i4 = lengthof r21;	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 7