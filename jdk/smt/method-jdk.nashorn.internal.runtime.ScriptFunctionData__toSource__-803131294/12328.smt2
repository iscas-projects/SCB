(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var1626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-312303092 (var3638) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3638 var3638)
(declare-const null-String String)
(declare-const var3658 var3638) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData 
(assert (not (= var3658 null-var3638)))
(define-const var3623 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3623)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3623!1 String)
(assert (= var3623!1 ""))
(assert true)
(define-const var1193 String (append/672562846 var3623!1 "function ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ") 
(declare-const var3623!2 String)
(assert (= var3623!2 (str.++ var3623!1 "function ")))
(define-const var1085 String (name/-312303092 var3658)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
 ; Statement: if $r2 != null goto $r7 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert (not (= var1085 null-String))) ; Cond: $r2 != null 
(define-const var2480 String (name/-312303092 var3658)) ; Statement: $r7 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert true) ; Non Conditional
(assert true)
(define-const var3154 String (append/672562846 var1193 var2480)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1193!1 String)
(assert (= var1193!1 (str.++ var1193 var2480)))
(assert true)
(define-const var1722 String (append/672562846 var3154 "() { [native code] }")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() { [native code] }") 
(declare-const var3154!1 String)
(assert (= var3154!1 (str.++ var3154 "() { [native code] }")))
(assert true)
(define-const var386 String (toString/-2075883882 var1722)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3638=jdk.nashorn.internal.runtime.ScriptFunctionData, var3658=r1, var3623=$r0, var1193=$r3, var1085=$r2, var1626=null_type, var2480=$r7, var3154=$r4, var1722=$r5, var386=$r6}
; {jdk.nashorn.internal.runtime.ScriptFunctionData=var3638, r1=var3658, $r0=var3623, $r3=var1193, $r2=var1085, null_type=var1626, $r7=var2480, $r4=var3154, $r5=var1722, $r6=var386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ");	$r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	if $r2 != null goto $r7 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r7 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() { [native code] }");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3