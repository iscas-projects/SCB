(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3057 0)
(declare-sort var1282 0)
(declare-sort var3008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3057 var3057)
(declare-const null-var1282 var1282)
(declare-const null-String String)
(declare-const var1942 var3057) ; Statement: r4 := @this: freemarker.core.PropertySetting$1 
(assert (not (= var1942 null-var3057)))
(declare-const var1361 var1282) ; Statement: r17 := @parameter0: freemarker.core.Environment 
(assert (not (= var1361 null-var1282)))
(declare-const var2508 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2508 null-String)))
(assert true)
(define-const var2130 Bool (startsWith/-1785782452 var2508 "@")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2130 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3057=freemarker.core.PropertySetting$1, var1942=r4, var1282=freemarker.core.Environment, var1361=r17, var2508=r0, var3008=null_type, var2130=$z0}
; {freemarker.core.PropertySetting$1=var3057, r4=var1942, freemarker.core.Environment=var1282, r17=var1361, r0=var2508, null_type=var3008, $z0=var2130}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r4 := @this: freemarker.core.PropertySetting$1;	r17 := @parameter0: freemarker.core.Environment;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@");	if $z0 != 0 goto return;	return
;block_num 2