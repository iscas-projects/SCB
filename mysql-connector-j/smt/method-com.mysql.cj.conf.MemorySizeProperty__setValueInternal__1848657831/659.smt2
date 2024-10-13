(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort var112 0)
(declare-sort var3536 0)
(declare-sort var2555 0)
(declare-sort var1640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setValueInternal/-1302443138 (var2555 var1640 String var3536) void)
(declare-fun cast-from-var1830-to-var2555 (var1830) var2555)
(declare-fun cast-from-Int-to-var1640 (Int) var1640)
(declare-fun valueAsString/1846699731 (var1830) String)
(declare-const null-var1830 var1830)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var3536 var3536)
(declare-const var2350 var1830) ; Statement: r0 := @this: com.mysql.cj.conf.MemorySizeProperty 
(assert (not (= var2350 null-var1830)))
(declare-const var121 Int) ; Statement: r1 := @parameter0: java.lang.Integer 
(assert (not (= var121 null-Int)))
(declare-const var2506 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2506 null-String)))
(declare-const var1250 var3536) ; Statement: r3 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var1250 null-var3536)))
(assert true)
;(assert (setValueInternal/-1302443138 (cast-from-var1830-to-var2555 var2350) (cast-from-Int-to-var1640 var121) var2506 var1250)) ; Statement: specialinvoke r0.<com.mysql.cj.conf.IntegerProperty: void setValueInternal(java.lang.Object,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r1, r2, r3) 

(declare-const var2350!1 var1830)
(declare-const var121!1 Int)
(declare-const var2506!1 String)
(declare-const var1250!1 var3536)
 ; Statement: if r2 != null goto $r4 = r2 
(assert (not (= var2506!1 null-String))) ; Cond: r2 != null 
(define-const var3899 String var2506!1) ; Statement: $r4 = r2 
(assert true) ; Non Conditional
(declare-const var2350!2 var1830)
(assert (not (= var2350!2 null-var1830)))
(assert (= (valueAsString/1846699731 var2350!2) var3899)) ; Statement: r0.<com.mysql.cj.conf.MemorySizeProperty: java.lang.String valueAsString> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {setValueInternal/-1302443138=([com.mysql.cj.conf.AbstractRuntimeProperty, java.lang.Object, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], void), cast-from-var1830-to-var2555=([com.mysql.cj.conf.MemorySizeProperty], com.mysql.cj.conf.AbstractRuntimeProperty), cast-from-Int-to-var1640=([java.lang.Integer], java.lang.Object), valueAsString/1846699731=([com.mysql.cj.conf.MemorySizeProperty], java.lang.String)}
; {var1830=com.mysql.cj.conf.MemorySizeProperty, var2350=r0, var121=r1, var2506=r2, var112=null_type, var3536=com.mysql.cj.exceptions.ExceptionInterceptor, var1250=r3, var2555=com.mysql.cj.conf.AbstractRuntimeProperty, var1640=java.lang.Object, var3899=$r4}
; {com.mysql.cj.conf.MemorySizeProperty=var1830, r0=var2350, r1=var121, r2=var2506, null_type=var112, com.mysql.cj.exceptions.ExceptionInterceptor=var3536, r3=var1250, com.mysql.cj.conf.AbstractRuntimeProperty=var2555, java.lang.Object=var1640, $r4=var3899}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.conf.MemorySizeProperty;	r1 := @parameter0: java.lang.Integer;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor;	specialinvoke r0.<com.mysql.cj.conf.IntegerProperty: void setValueInternal(java.lang.Object,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r1, r2, r3);	if r2 != null goto $r4 = r2;	$r4 = r2;	r0.<com.mysql.cj.conf.MemorySizeProperty: java.lang.String valueAsString> = $r4;	return
;block_num 3