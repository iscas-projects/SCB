(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1877 0)
(declare-sort var792 0)
(declare-sort var2560 0)
(declare-sort var315 0)
(declare-sort var1804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2560-init () var2560)
(declare-fun var1804-init () var1804)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1208695669 (var1804 String) void)
(declare-const null-var1877 var1877)
(declare-const null-String String)
(declare-const null-var315 var315)
(declare-const var3582 var1877) ; Statement: r2 := @this: org.javacc.jjtree.IO 
(assert (not (= var3582 null-var1877)))
(declare-const var2031 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2031 null-String)))
(define-const var3276 var2560 var2560-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var940 var315) ; Statement: $r35 := @caughtexception 
(assert (not (= var940 null-var315)))
(define-const var2441 var1804 var1804-init) ; Statement: $r36 = new org.javacc.jjtree.JJTreeIOException 
(define-const var3818 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3818)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3818!1 String)
(assert (= var3818!1 ""))
(assert true)
(define-const var3833 String (append/672562846 var3818!1 "Security violation while trying to open ")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security violation while trying to open ") 
(declare-const var3818!2 String)
(assert (= var3818!2 (str.++ var3818!1 "Security violation while trying to open ")))
(assert true)
(define-const var2845 String (append/672562846 var3833 var2031)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3833!1 String)
(assert (= var3833!1 (str.++ var3833 var2031)))
(assert true)
(define-const var2725 String (toString/-2075883882 var2845)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1208695669 var2441 var2725)) ; Statement: specialinvoke $r36.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r40) 

(declare-const var2441!1 var1804)
(declare-const var2725!1 String)
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {var2560-init=([], java.io.File), var1804-init=([], org.javacc.jjtree.JJTreeIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1208695669=([org.javacc.jjtree.JJTreeIOException, java.lang.String], void)}
; {var1877=org.javacc.jjtree.IO, var3582=r2, var2031=r1, var792=null_type, var2560=java.io.File, var3276=$r0, var315=java.lang.SecurityException, var940=$r35, var1804=org.javacc.jjtree.JJTreeIOException, var2441=$r36, var3818=$r37, var3833=$r38, var2845=$r39, var2725=$r40}
; {org.javacc.jjtree.IO=var1877, r2=var3582, r1=var2031, null_type=var792, java.io.File=var2560, $r0=var3276, java.lang.SecurityException=var315, $r35=var940, org.javacc.jjtree.JJTreeIOException=var1804, $r36=var2441, $r37=var3818, $r38=var3833, $r39=var2845, $r40=var2725}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.javacc.jjtree.IO;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r35 := @caughtexception;	$r36 = new org.javacc.jjtree.JJTreeIOException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security violation while trying to open ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r40);	throw $r36
;block_num 2