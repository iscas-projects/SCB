(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort var2875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2875_getMessage/90889441 (String (Array Int String)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2784 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2784 null-String)))
(declare-const var1531 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var1531 null-__Array__Int__String__)))
(define-const var1865 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1865)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1865!1 String)
(assert (= var1865!1 ""))
(assert true)
(define-const var1034 String (append/672562846 var1865!1 "parser.error.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parser.error.") 
(declare-const var1865!2 String)
(assert (= var1865!2 (str.++ var1865!1 "parser.error.")))
(assert true)
(define-const var361 String (append/672562846 var1034 var2784)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1034!1 String)
(assert (= var1034!1 (str.++ var1034 var2784)))
(assert true)
(define-const var40 String (toString/-2075883882 var361)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3749 String (var2875_getMessage/90889441 var40 var1531)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2875_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String)}
; {var2784=r1, var1290=null_type, var1531=r4, var1865=$r0, var1034=$r2, var361=$r3, var40=$r5, var2875=jdk.nashorn.internal.runtime.ECMAErrors, var3749=$r6}
; {r1=var2784, null_type=var1290, r4=var1531, $r0=var1865, $r2=var1034, $r3=var361, $r5=var40, jdk.nashorn.internal.runtime.ECMAErrors=var2875, $r6=var3749}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parser.error.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4);	return $r6
;block_num 1