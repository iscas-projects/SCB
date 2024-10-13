(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3484 0)
(declare-sort var3700 0)
(declare-sort var878 0)
(declare-sort var1711 0)
(declare-sort var2961 0)
(declare-sort var2910 0)
(declare-sort var2863 0)
(declare-sort var355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var878-init () var878)
(declare-fun <init>/358169345 (var878) void)
(declare-fun var1711-init () var1711)
(declare-fun <init>/-1864438596 (var1711 var2961) void)
(declare-fun cast-from-var878-to-var2961 (var878) var2961)
(declare-fun printStackTrace/652371045 (var3700 var1711) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var355) String)
(declare-fun cast-from-var878-to-var355 (var878) var355)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/114590825 (var2910 String) void)
(declare-const null-var3484 var3484)
(declare-const null-var3700 var3700)
(declare-const var2863-LOGGER var2910)
(declare-const var2436 var3484) ; Statement: r8 := @parameter0: java.lang.Thread 
(assert (not (= var2436 null-var3484)))
(declare-const var1776 var3700) ; Statement: r1 := @parameter1: java.lang.Throwable 
(assert (not (= var1776 null-var3700)))
(define-const var1503 var878 var878-init) ; Statement: $r0 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var1503)) ; Statement: specialinvoke $r0.<java.io.StringWriter: void <init>()>() 

(declare-const var1503!1 var878)
(define-const var2764 var1711 var1711-init) ; Statement: $r2 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var2764 (cast-from-var878-to-var2961 var1503!1))) ; Statement: specialinvoke $r2.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0) 

(declare-const var2764!1 var1711)
(declare-const var1503!2 var878)
(assert true)
;(assert (printStackTrace/652371045 var1776 var2764!1)) ; Statement: virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintWriter)>($r2) 

(declare-const var1776!1 var3700)
(declare-const var2764!2 var1711)
(define-const var685 var2910 var2863-LOGGER) ; Statement: $r4 = <com.efficient.common.util.ThreadUtil: java.util.logging.Logger LOGGER> 
(define-const var3630 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3630)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3630!1 String)
(assert (= var3630!1 ""))
(assert true)
(define-const var97 String (append/672562846 var3630!1 "\u4efb\u52a1\u5904\u7406\u5f02\u5e38!")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4efb\u52a1\u5904\u7406\u5f02\u5e38!") 
(declare-const var3630!2 String)
(assert (= var3630!2 (str.++ var3630!1 "\u4efb\u52a1\u5904\u7406\u5f02\u5e38!")))
(assert true)
(define-const var1100 String (append/-1031950772 var97 (cast-from-var878-to-var355 var1503!2))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var97!1 String)
(assert (str.prefixof var97 var97!1))
(assert true)
(define-const var299 String (toString/-2075883882 var1100)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (info/114590825 var685 var299)) ; Statement: virtualinvoke $r4.<java.util.logging.Logger: void info(java.lang.String)>($r7) 

(declare-const var685!1 var2910)
(declare-const var299!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var878-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var1711-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var878-to-var2961=([java.io.StringWriter], java.io.Writer), printStackTrace/652371045=([java.lang.Throwable, java.io.PrintWriter], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var878-to-var355=([java.io.StringWriter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/114590825=([java.util.logging.Logger, java.lang.String], void)}
; {var3484=java.lang.Thread, var2436=r8, var3700=java.lang.Throwable, var1776=r1, var878=java.io.StringWriter, var1503=$r0, var1711=java.io.PrintWriter, var2764=$r2, var2961=java.io.Writer, var2910=java.util.logging.Logger, var2863=com.efficient.common.util.ThreadUtil, var685=$r4, var3630=$r3, var97=$r5, var355=java.lang.Object, var1100=$r6, var299=$r7}
; {java.lang.Thread=var3484, r8=var2436, java.lang.Throwable=var3700, r1=var1776, java.io.StringWriter=var878, $r0=var1503, java.io.PrintWriter=var1711, $r2=var2764, java.io.Writer=var2961, java.util.logging.Logger=var2910, com.efficient.common.util.ThreadUtil=var2863, $r4=var685, $r3=var3630, $r5=var97, java.lang.Object=var355, $r6=var1100, $r7=var299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.Thread;	r1 := @parameter1: java.lang.Throwable;	$r0 = new java.io.StringWriter;	specialinvoke $r0.<java.io.StringWriter: void <init>()>();	$r2 = new java.io.PrintWriter;	specialinvoke $r2.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0);	virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintWriter)>($r2);	$r4 = <com.efficient.common.util.ThreadUtil: java.util.logging.Logger LOGGER>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4efb\u52a1\u5904\u7406\u5f02\u5e38!");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<java.util.logging.Logger: void info(java.lang.String)>($r7);	return
;block_num 1