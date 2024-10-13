(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var322 0)
(declare-sort var2874 0)
(declare-sort var3066 0)
(declare-sort var2730 0)
(declare-sort var3275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2730-init () var2730)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var2730 String var3275) void)
(declare-fun cast-from-var3066-to-var3275 (var3066) var3275)
(declare-const null-var322 var322)
(declare-const null-String String)
(declare-const null-var3066 var3066)
(declare-const var1904 var322) ; Statement: r0 := @this: org.apache.ibatis.javassist.Loader 
(assert (not (= var1904 null-var322)))
(declare-const var2437 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2437 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2248 var3066) ; Statement: $r18 := @caughtexception 
(assert (not (= var2248 null-var3066)))
(define-const var1701 var2730 var2730-init) ; Statement: $r32 = new java.lang.ClassNotFoundException 
(define-const var59 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var59)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var59!1 String)
(assert (= var59!1 ""))
(assert true)
(define-const var1651 String (append/672562846 var59!1 "caught an exception while obtaining a class file for ")) ; Statement: $r21 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("caught an exception while obtaining a class file for ") 
(declare-const var59!2 String)
(assert (= var59!2 (str.++ var59!1 "caught an exception while obtaining a class file for ")))
(assert true)
(define-const var3745 String (append/672562846 var1651 var2437)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1651!1 String)
(assert (= var1651!1 (str.++ var1651 var2437)))
(assert true)
(define-const var2728 String (toString/-2075883882 var3745)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var1701 var2728 (cast-from-var3066-to-var3275 var2248))) ; Statement: specialinvoke $r32.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r18) 

(declare-const var1701!1 var2730)
(declare-const var2728!1 String)
(declare-const var2248!1 var3066)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var2730-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var3066-to-var3275=([java.lang.Exception], java.lang.Throwable)}
; {var322=org.apache.ibatis.javassist.Loader, var1904=r0, var2437=r3, var2874=null_type, var3066=java.lang.Exception, var2248=$r18, var2730=java.lang.ClassNotFoundException, var1701=$r32, var59=$r31, var1651=$r21, var3745=$r22, var2728=$r23, var3275=java.lang.Throwable}
; {org.apache.ibatis.javassist.Loader=var322, r0=var1904, r3=var2437, null_type=var2874, java.lang.Exception=var3066, $r18=var2248, java.lang.ClassNotFoundException=var2730, $r32=var1701, $r31=var59, $r21=var1651, $r22=var3745, $r23=var2728, java.lang.Throwable=var3275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.Loader;	r3 := @parameter0: java.lang.String;	$r18 := @caughtexception;	$r32 = new java.lang.ClassNotFoundException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("caught an exception while obtaining a class file for ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r18);	throw $r32
;block_num 2