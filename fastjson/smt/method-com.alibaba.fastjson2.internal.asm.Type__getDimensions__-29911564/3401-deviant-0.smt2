(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueBuffer/-537476865 (var3124) String)
(declare-fun valueBegin/-537476865 (var3124) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3124 var3124)
(declare-const var3648 var3124) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.Type 
(assert (not (= var3648 null-var3124)))
(define-const var3123 Int 1) ; Statement: i3 = 1 
(assert true) ; Non Conditional
(define-const var2684 String (valueBuffer/-537476865 var3648)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(define-const var2023 Int (valueBegin/-537476865 var3648)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin> 
(define-const var92 Int (+ var2023 var3123)) ; Statement: $i1 = $i0 + i3 
(assert (not (and true (and (> (str.len var2684) var92) (<= 0 var92)))))
(check-sat)
(get-model)
(get-unsat-core)
; {valueBuffer/-537476865=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), valueBegin/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3124=com.alibaba.fastjson2.internal.asm.Type, var3648=r0, var3123=i3, var2684=$r1, var2023=$i0, var92=$i1, var1061=$c2, var1381=$i4}
; {com.alibaba.fastjson2.internal.asm.Type=var3124, r0=var3648, i3=var3123, $r1=var2684, $i0=var2023, $i1=var92, $c2=var1061, $i4=var1381}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.Type;	i3 = 1;	$r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin>;	$i1 = $i0 + i3;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 != 91 goto return i3;	return i3
;block_num 3