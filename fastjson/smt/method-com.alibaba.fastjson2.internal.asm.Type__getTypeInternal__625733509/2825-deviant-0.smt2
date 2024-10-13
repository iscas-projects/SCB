(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1795 0)
(declare-sort var2747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2747-CHAR_TYPE var2747)
(declare-const var3756 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3756 null-String)))
(declare-const var3996 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3996 null-Int)))
(declare-const var2846 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2846 null-Int)))
(assert (not (and true (and (> (str.len var3756) var3996) (<= 0 var3996)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3756=r0, var1795=null_type, var3996=i0, var2846=i2, var1857=$c1, var3878=$i6, var2747=com.alibaba.fastjson2.internal.asm.Type, var2916=$r33}
; {r0=var3756, null_type=var1795, i0=var3996, i2=var2846, $c1=var1857, $i6=var3878, com.alibaba.fastjson2.internal.asm.Type=var2747, $r33=var2916}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i6 = (int) $c1;	lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; };	$r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;	return $r33
;block_num 2