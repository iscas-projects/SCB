(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3087 0)
(declare-sort var2841 0)
(declare-sort var3563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3563_getArgumentsAndReturnSizes/-942562819 (String) Int)
(declare-fun pop/1151368555 (var3087 Int) void)
(declare-const null-var3087 var3087)
(declare-const null-String String)
(declare-const var3143 var3087) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.Frame 
(assert (not (= var3143 null-var3087)))
(declare-const var388 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var388 null-String)))
(assert (not (and true (and (> (str.len var388) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3563_getArgumentsAndReturnSizes/-942562819=([java.lang.String], int), pop/1151368555=([com.alibaba.fastjson2.internal.asm.Frame, int], void)}
; {var3087=com.alibaba.fastjson2.internal.asm.Frame, var3143=r1, var388=r0, var2841=null_type, var2229=c0, var1312=$i4, var3563=com.alibaba.fastjson2.internal.asm.Type, var3575=$i1, var2981=$i2, var3336=$i3}
; {com.alibaba.fastjson2.internal.asm.Frame=var3087, r1=var3143, r0=var388, null_type=var2841, c0=var2229, $i4=var1312, com.alibaba.fastjson2.internal.asm.Type=var3563, $i1=var3575, $i2=var2981, $i3=var3336}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.Frame;	r0 := @parameter0: java.lang.String;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i4 = (int) c0;	if $i4 != 40 goto $i5 = (int) c0;	$i1 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: int getArgumentsAndReturnSizes(java.lang.String)>(r0);	$i2 = $i1 >> 2;	$i3 = $i2 - 1;	specialinvoke r1.<com.alibaba.fastjson2.internal.asm.Frame: void pop(int)>($i3);	goto [?= return];	return
;block_num 3