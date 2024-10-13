(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var457 0)
(declare-sort var3636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3636-SHORT_TYPE var3636)
(declare-const var2281 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2281 null-String)))
(declare-const var145 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var145 null-Int)))
(declare-const var1010 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1010 null-Int)))
(assert (not (and true (and (> (str.len var2281) var145) (<= 0 var145)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2281=r0, var457=null_type, var145=i0, var1010=i2, var1574=$c1, var1468=$i6, var3636=com.alibaba.fastjson2.internal.asm.Type, var1330=$r4}
; {r0=var2281, null_type=var457, i0=var145, i2=var1010, $c1=var1574, $i6=var1468, com.alibaba.fastjson2.internal.asm.Type=var3636, $r4=var1330}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i6 = (int) $c1;	lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; };	$r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;	return $r4
;block_num 2