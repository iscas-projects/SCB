(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var464 0)
(declare-sort var911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var911-init () var911)
(declare-fun <init>/750527633 (var911) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2518 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2518 null-String)))
(declare-const var3533 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3533 null-Int)))
(declare-const var3467 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3467 null-Int)))
(assert (and true (and (> (str.len var2518) var3533) (<= 0 var3533))))
(define-const var3681 Int (charAt/698050440 var2518 var3533)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var1504 Int (cast-from-Int-to-Int var3681)) ; Statement: $i6 = (int) $c1 
 ; Statement: lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1504 91)) (and (not (= var1504 90)) (and (not (= var1504 86)) (and (not (= var1504 83)) (and (not (= var1504 76)) (and (not (= var1504 74)) (and (not (= var1504 73)) (and (not (= var1504 70)) (and (not (= var1504 68)) (and (not (= var1504 67)) (and (not (= var1504 66)) (and (not (= var1504 40)) true))))))))))))) ; Intersect: Negate: Cond: $i6 == 91   and Intersect: Negate: Cond: $i6 == 90   and Intersect: Negate: Cond: $i6 == 86   and Intersect: Negate: Cond: $i6 == 83   and Intersect: Negate: Cond: $i6 == 76   and Intersect: Negate: Cond: $i6 == 74   and Intersect: Negate: Cond: $i6 == 73   and Intersect: Negate: Cond: $i6 == 70   and Intersect: Negate: Cond: $i6 == 68   and Intersect: Negate: Cond: $i6 == 67   and Intersect: Negate: Cond: $i6 == 66   and Intersect: Negate: Cond: $i6 == 40   and Non Conditional            
(define-const var2589 var911 var911-init) ; Statement: $r41 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/750527633 var2589)) ; Statement: specialinvoke $r41.<java.lang.IllegalArgumentException: void <init>()>() 

(declare-const var2589!1 var911)
 ; Statement: throw $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var911-init=([], java.lang.IllegalArgumentException), <init>/750527633=([java.lang.IllegalArgumentException], void)}
; {var2518=r0, var464=null_type, var3533=i0, var3467=i2, var3681=$c1, var1504=$i6, var911=java.lang.IllegalArgumentException, var2589=$r41}
; {r0=var2518, null_type=var464, i0=var3533, i2=var3467, $c1=var3681, $i6=var1504, java.lang.IllegalArgumentException=var911, $r41=var2589}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i6 = (int) $c1;	lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; };	$r41 = new java.lang.IllegalArgumentException;	specialinvoke $r41.<java.lang.IllegalArgumentException: void <init>()>();	throw $r41
;block_num 2