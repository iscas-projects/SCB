(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1896 var1896)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2900 var1896) ; Statement: r5 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory 
(assert (not (= var2900 null-var1896)))
(declare-const var3838 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var3838 null-__Array__Int__String__)))
(define-const var559 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var559)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var559!1 String)
(assert (= var559!1 ""))
(define-const var250 Int (getLength-Arr-String-1 var3838)) ; Statement: i0 = lengthof r1 
(define-const var763 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var763 var250)) ; Cond: i1 >= i0 
(assert true)
(define-const var2221 String (toString/-2075883882 var559!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1896=jdk.nashorn.api.scripting.NashornScriptEngineFactory, var2900=r5, var3838=r1, var559=$r0, var250=i0, var763=i1, var2221=$r2}
; {jdk.nashorn.api.scripting.NashornScriptEngineFactory=var1896, r5=var2900, r1=var3838, $r0=var559, i0=var250, i1=var763, $r2=var2221}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory;	r1 := @parameter0: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3