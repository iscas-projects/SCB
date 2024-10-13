(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1107 0)
(declare-sort var3070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3070-BOOLEAN_TYPE var3070)
(declare-const var2687 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2687 null-String)))
(declare-const var3417 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3417 null-Int)))
(declare-const var1970 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1970 null-Int)))
(assert (and true (and (> (str.len var2687) var3417) (<= 0 var3417))))
(define-const var1423 Int (charAt/698050440 var2687 var3417)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var2218 Int (cast-from-Int-to-Int var1423)) ; Statement: $i6 = (int) $c1 
 ; Statement: lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; } 
(assert (and (= var2218 90) (and (not (= var2218 86)) (and (not (= var2218 83)) (and (not (= var2218 76)) (and (not (= var2218 74)) (and (not (= var2218 73)) (and (not (= var2218 70)) (and (not (= var2218 68)) (and (not (= var2218 67)) (and (not (= var2218 66)) (and (not (= var2218 40)) true)))))))))))) ; Intersect: Cond: $i6 == 90  and Intersect: Negate: Cond: $i6 == 86   and Intersect: Negate: Cond: $i6 == 83   and Intersect: Negate: Cond: $i6 == 76   and Intersect: Negate: Cond: $i6 == 74   and Intersect: Negate: Cond: $i6 == 73   and Intersect: Negate: Cond: $i6 == 70   and Intersect: Negate: Cond: $i6 == 68   and Intersect: Negate: Cond: $i6 == 67   and Intersect: Negate: Cond: $i6 == 66   and Intersect: Negate: Cond: $i6 == 40   and Non Conditional           
(define-const var1200 var3070 var3070-BOOLEAN_TYPE) ; Statement: $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2687=r0, var1107=null_type, var3417=i0, var1970=i2, var1423=$c1, var2218=$i6, var3070=com.alibaba.fastjson2.internal.asm.Type, var1200=$r2}
; {r0=var2687, null_type=var1107, i0=var3417, i2=var1970, $c1=var1423, $i6=var2218, com.alibaba.fastjson2.internal.asm.Type=var3070, $r2=var1200}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i6 = (int) $c1;	lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; };	$r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;	return $r2
;block_num 2