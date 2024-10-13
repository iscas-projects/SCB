(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1010 0)
(declare-sort var3516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3516_getMessage/90889441 (String (Array Int String)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3799 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3799 null-String)))
(declare-const var2555 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var2555 null-__Array__Int__String__)))
(define-const var348 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var348)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var348!1 String)
(assert (= var348!1 ""))
(assert true)
(define-const var2737 String (append/672562846 var348!1 "lexer.error.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lexer.error.") 
(declare-const var348!2 String)
(assert (= var348!2 (str.++ var348!1 "lexer.error.")))
(assert true)
(define-const var3168 String (append/672562846 var2737 var3799)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2737!1 String)
(assert (= var2737!1 (str.++ var2737 var3799)))
(assert true)
(define-const var1424 String (toString/-2075883882 var3168)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2647 String (var3516_getMessage/90889441 var1424 var2555)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3516_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String)}
; {var3799=r1, var1010=null_type, var2555=r4, var348=$r0, var2737=$r2, var3168=$r3, var1424=$r5, var3516=jdk.nashorn.internal.runtime.ECMAErrors, var2647=$r6}
; {r1=var3799, null_type=var1010, r4=var2555, $r0=var348, $r2=var2737, $r3=var3168, $r5=var1424, jdk.nashorn.internal.runtime.ECMAErrors=var3516, $r6=var2647}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lexer.error.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4);	return $r6
;block_num 1