(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var70 0)
(declare-sort var2333 0)
(declare-sort var2529 0)
(declare-sort var1892 0)
(declare-sort var536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setValueInternal/-1302443138 (var1892 var536 String var2529) void)
(declare-fun cast-from-var70-to-var1892 (var70) var1892)
(declare-fun cast-from-Int-to-var536 (Int) var536)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun valueAsString/1846699731 (var70) String)
(declare-const null-var70 var70)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2529 var2529)
(declare-const var1933 var70) ; Statement: r0 := @this: com.mysql.cj.conf.MemorySizeProperty 
(assert (not (= var1933 null-var70)))
(declare-const var2239 Int) ; Statement: r1 := @parameter0: java.lang.Integer 
(assert (not (= var2239 null-Int)))
(declare-const var816 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var816 null-String)))
(declare-const var939 var2529) ; Statement: r3 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var939 null-var2529)))
(assert true)
;(assert (setValueInternal/-1302443138 (cast-from-var70-to-var1892 var1933) (cast-from-Int-to-var536 var2239) var816 var939)) ; Statement: specialinvoke r0.<com.mysql.cj.conf.IntegerProperty: void setValueInternal(java.lang.Object,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r1, r2, r3) 

(declare-const var1933!1 var70)
(declare-const var2239!1 Int)
(declare-const var816!1 String)
(declare-const var939!1 var2529)
 ; Statement: if r2 != null goto $r4 = r2 
(assert (not (not (= var816!1 null-String)))) ; Negate: Cond: r2 != null  
(assert true)
(define-const var2572 Int (intValue/-1815674922 var2239!1)) ; Statement: $i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>() 
(define-const var393 String (String_valueOf/1240665136 var2572)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: goto [?= r0.<com.mysql.cj.conf.MemorySizeProperty: java.lang.String valueAsString> = $r4] 
(assert true) ; Non Conditional
(declare-const var1933!2 var70)
(assert (not (= var1933!2 null-var70)))
(assert (= (valueAsString/1846699731 var1933!2) var393)) ; Statement: r0.<com.mysql.cj.conf.MemorySizeProperty: java.lang.String valueAsString> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {setValueInternal/-1302443138=([com.mysql.cj.conf.AbstractRuntimeProperty, java.lang.Object, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], void), cast-from-var70-to-var1892=([com.mysql.cj.conf.MemorySizeProperty], com.mysql.cj.conf.AbstractRuntimeProperty), cast-from-Int-to-var536=([java.lang.Integer], java.lang.Object), intValue/-1815674922=([java.lang.Integer], int), String_valueOf/1240665136=([int], java.lang.String), valueAsString/1846699731=([com.mysql.cj.conf.MemorySizeProperty], java.lang.String)}
; {var70=com.mysql.cj.conf.MemorySizeProperty, var1933=r0, var2239=r1, var816=r2, var2333=null_type, var2529=com.mysql.cj.exceptions.ExceptionInterceptor, var939=r3, var1892=com.mysql.cj.conf.AbstractRuntimeProperty, var536=java.lang.Object, var2572=$i0, var393=$r4}
; {com.mysql.cj.conf.MemorySizeProperty=var70, r0=var1933, r1=var2239, r2=var816, null_type=var2333, com.mysql.cj.exceptions.ExceptionInterceptor=var2529, r3=var939, com.mysql.cj.conf.AbstractRuntimeProperty=var1892, java.lang.Object=var536, $i0=var2572, $r4=var393}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.mysql.cj.conf.MemorySizeProperty;	r1 := @parameter0: java.lang.Integer;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor;	specialinvoke r0.<com.mysql.cj.conf.IntegerProperty: void setValueInternal(java.lang.Object,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r1, r2, r3);	if r2 != null goto $r4 = r2;	$i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	goto [?= r0.<com.mysql.cj.conf.MemorySizeProperty: java.lang.String valueAsString> = $r4];	r0.<com.mysql.cj.conf.MemorySizeProperty: java.lang.String valueAsString> = $r4;	return
;block_num 3