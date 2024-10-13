(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/715258311 (var3129) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var3129 var3129)
(declare-const var2400 var3129) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector 
(assert (not (= var2400 null-var3129)))
(define-const var3273 String (result/715258311 var2400)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result> 
(assert true)
(define-const var439 Int (length/-171891354 var3273)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 == 0 goto $r3 = "" 
(assert (= var439 0)) ; Cond: $i0 == 0 
(define-const var1055 String "") ; Statement: $r3 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {result/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var3129=com.alibaba.fastjson2.internal.asm.MethodCollector, var2400=r0, var3273=$r1, var439=$i0, var1055=$r3}
; {com.alibaba.fastjson2.internal.asm.MethodCollector=var3129, r0=var2400, $r1=var3273, $i0=var439, $r3=var1055}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector;	$r1 = r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 == 0 goto $r3 = "";	$r3 = "";	return $r3
;block_num 3