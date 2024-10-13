(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2509 0)
(declare-sort var1495 0)
(declare-sort var1661 0)
(declare-sort var293 0)
(declare-sort var965 0)
(declare-sort var2790 0)
(declare-sort var2485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var1661) var293)
(declare-fun close/-190175943 (var293) void)
(declare-fun var2485-init () var2485)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var2485 String var965) void)
(declare-fun cast-from-var2790-to-var965 (var2790) var965)
(declare-const null-var2509 var2509)
(declare-const null-String String)
(declare-const null-var1661 var1661)
(declare-const null-Bool Bool)
(declare-const null-var965 var965)
(declare-const null-var2790 var2790)
(declare-const var3698 var2509) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3698 null-var2509)))
(declare-const var2845 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2845 null-String)))
(declare-const var3775 var1661) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var3775 null-var1661)))
(declare-const var227 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var227 null-Bool)))
(define-const var2152 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3102 var293 (openStream/913863501 var3775)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1287 var965) ; Statement: $r19 := @caughtexception 
(assert (not (= var1287 null-var965)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var3102)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var3102!1 var293)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var450 var2790) ; Statement: $r14 := @caughtexception 
(assert (not (= var450 null-var2790)))
(define-const var2784 var2485 var2485-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var3926 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3926 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var3926!1 String)
(assert (= var3926!1 "I/O exception reading class "))
(assert true)
(define-const var1144 String (append/672562846 var3926!1 var2845)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3926!2 String)
(assert (= var3926!2 (str.++ var3926!1 var2845)))
(assert true)
(define-const var3374 String (toString/-2075883882 var1144)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var2784 var3374 (cast-from-var2790-to-var965 var450))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var2784!1 var2485)
(declare-const var3374!1 String)
(declare-const var450!1 var2790)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), close/-190175943=([java.io.InputStream], void), var2485-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var2790-to-var965=([java.io.IOException], java.lang.Throwable)}
; {var2509=lombok.launch.ShadowClassLoader, var3698=r1, var2845=r3, var1495=null_type, var1661=java.net.URL, var3775=r0, var227=z1, var2152=i3, var293=java.io.InputStream, var3102=r20, var965=java.lang.Throwable, var1287=$r19, var2790=java.io.IOException, var450=$r14, var2485=java.lang.ClassNotFoundException, var2784=$r27, var3926=$r26, var1144=$r17, var3374=$r18}
; {lombok.launch.ShadowClassLoader=var2509, r1=var3698, r3=var2845, null_type=var1495, java.net.URL=var1661, r0=var3775, z1=var227, i3=var2152, java.io.InputStream=var293, r20=var3102, java.lang.Throwable=var965, $r19=var1287, java.io.IOException=var2790, $r14=var450, java.lang.ClassNotFoundException=var2485, $r27=var2784, $r26=var3926, $r17=var1144, $r18=var3374}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 5