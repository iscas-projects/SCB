(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3723 0)
(declare-sort var3568 0)
(declare-sort var2135 0)
(declare-sort var2824 0)
(declare-sort var3883 0)
(declare-sort var309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3883-init () var3883)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var3883 String var309) void)
(declare-fun cast-from-var2824-to-var309 (var2824) var309)
(declare-const null-var3723 var3723)
(declare-const null-String String)
(declare-const null-var2135 var2135)
(declare-const null-Bool Bool)
(declare-const null-var2824 var2824)
(declare-const var2036 var3723) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2036 null-var3723)))
(declare-const var1645 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1645 null-String)))
(declare-const var2042 var2135) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var2042 null-var2135)))
(declare-const var3674 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3674 null-Bool)))
(define-const var3810 Int 0) ; Statement: i3 = 0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var767 var2824) ; Statement: $r14 := @caughtexception 
(assert (not (= var767 null-var2824)))
(define-const var2694 var3883 var3883-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var1122 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1122 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var1122!1 String)
(assert (= var1122!1 "I/O exception reading class "))
(assert true)
(define-const var688 String (append/672562846 var1122!1 var1645)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1122!2 String)
(assert (= var1122!2 (str.++ var1122!1 var1645)))
(assert true)
(define-const var50 String (toString/-2075883882 var688)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var2694 var50 (cast-from-var2824-to-var309 var767))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var2694!1 var3883)
(declare-const var50!1 String)
(declare-const var767!1 var2824)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var3883-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var2824-to-var309=([java.io.IOException], java.lang.Throwable)}
; {var3723=lombok.launch.ShadowClassLoader, var2036=r1, var1645=r3, var3568=null_type, var2135=java.net.URL, var2042=r0, var3674=z1, var3810=i3, var2824=java.io.IOException, var767=$r14, var3883=java.lang.ClassNotFoundException, var2694=$r27, var1122=$r26, var688=$r17, var50=$r18, var309=java.lang.Throwable}
; {lombok.launch.ShadowClassLoader=var3723, r1=var2036, r3=var1645, null_type=var3568, java.net.URL=var2135, r0=var2042, z1=var3674, i3=var3810, java.io.IOException=var2824, $r14=var767, java.lang.ClassNotFoundException=var3883, $r27=var2694, $r26=var1122, $r17=var688, $r18=var50, java.lang.Throwable=var309}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 2