(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3917 0)
(declare-sort var2155 0)
(declare-sort var716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var2155) String)
(declare-fun cast-from-var3917-to-var2155 (var3917) var2155)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fileName/-1636295041 (var3917) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3917 var3917)
(declare-const null-String String)
(declare-const var345 var3917) ; Statement: r1 := @this: cn.hutool.script.ScriptRuntimeException 
(assert (not (= var345 null-var3917)))
(define-const var3508 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3508)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3508!1 String)
(assert (= var3508!1 ""))
(assert true)
(define-const var1015 String (getMessage/849299655 (cast-from-var3917-to-var2155 var345))) ; Statement: $r2 = specialinvoke r1.<java.lang.RuntimeException: java.lang.String getMessage()>() 
(assert true)
(define-const var2627 String (append/672562846 var3508!1 var1015)) ; Statement: r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3508!2 String)
(assert (= var3508!2 (str.++ var3508!1 var1015)))
(define-const var924 String (fileName/-1636295041 var345)) ; Statement: $r4 = r1.<cn.hutool.script.ScriptRuntimeException: java.lang.String fileName> 
 ; Statement: if $r4 == null goto $r9 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var924 null-String)) ; Cond: $r4 == null 
(assert true)
(define-const var2800 String (toString/-2075883882 var2627)) ; Statement: $r9 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3917-to-var2155=([cn.hutool.script.ScriptRuntimeException], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fileName/-1636295041=([cn.hutool.script.ScriptRuntimeException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3917=cn.hutool.script.ScriptRuntimeException, var345=r1, var3508=$r10, var2155=java.lang.Throwable, var1015=$r2, var2627=r3, var924=$r4, var716=null_type, var2800=$r9}
; {cn.hutool.script.ScriptRuntimeException=var3917, r1=var345, $r10=var3508, java.lang.Throwable=var2155, $r2=var1015, r3=var2627, $r4=var924, null_type=var716, $r9=var2800}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.script.ScriptRuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.RuntimeException: java.lang.String getMessage()>();	r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = r1.<cn.hutool.script.ScriptRuntimeException: java.lang.String fileName>;	if $r4 == null goto $r9 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2