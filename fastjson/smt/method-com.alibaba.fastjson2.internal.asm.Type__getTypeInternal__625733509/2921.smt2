(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort var1634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1634-init () var1634)
(declare-fun <init>/-1254973680 (var1634 Int String Int Int) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1537 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1537 null-String)))
(declare-const var2849 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2849 null-Int)))
(declare-const var1413 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1413 null-Int)))
(assert (and true (and (> (str.len var1537) var2849) (<= 0 var2849))))
(define-const var3250 Int (charAt/698050440 var1537 var2849)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var883 Int (cast-from-Int-to-Int var3250)) ; Statement: $i6 = (int) $c1 
 ; Statement: lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; } 
(assert (and (= var883 91) (and (not (= var883 90)) (and (not (= var883 86)) (and (not (= var883 83)) (and (not (= var883 76)) (and (not (= var883 74)) (and (not (= var883 73)) (and (not (= var883 70)) (and (not (= var883 68)) (and (not (= var883 67)) (and (not (= var883 66)) (and (not (= var883 40)) true))))))))))))) ; Intersect: Cond: $i6 == 91  and Intersect: Negate: Cond: $i6 == 90   and Intersect: Negate: Cond: $i6 == 86   and Intersect: Negate: Cond: $i6 == 83   and Intersect: Negate: Cond: $i6 == 76   and Intersect: Negate: Cond: $i6 == 74   and Intersect: Negate: Cond: $i6 == 73   and Intersect: Negate: Cond: $i6 == 70   and Intersect: Negate: Cond: $i6 == 68   and Intersect: Negate: Cond: $i6 == 67   and Intersect: Negate: Cond: $i6 == 66   and Intersect: Negate: Cond: $i6 == 40   and Non Conditional            
(define-const var3081 var1634 var1634-init) ; Statement: $r38 = new com.alibaba.fastjson2.internal.asm.Type 
(assert true)
;(assert (<init>/-1254973680 var3081 9 var1537 var2849 var1413)) ; Statement: specialinvoke $r38.<com.alibaba.fastjson2.internal.asm.Type: void <init>(int,java.lang.String,int,int)>(9, r0, i0, i2) 

(declare-const var3081!1 var1634)
(declare-const var676 Int)
(declare-const var1537!1 String)
(declare-const var2849!1 Int)
(declare-const var1413!1 Int)
 ; Statement: return $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1634-init=([], com.alibaba.fastjson2.internal.asm.Type), <init>/-1254973680=([com.alibaba.fastjson2.internal.asm.Type, int, java.lang.String, int, int], void)}
; {var1537=r0, var3469=null_type, var2849=i0, var1413=i2, var3250=$c1, var883=$i6, var1634=com.alibaba.fastjson2.internal.asm.Type, var3081=$r38, var676=9}
; {r0=var1537, null_type=var3469, i0=var2849, i2=var1413, $c1=var3250, $i6=var883, com.alibaba.fastjson2.internal.asm.Type=var1634, $r38=var3081, 9=var676}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i6 = (int) $c1;	lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; };	$r38 = new com.alibaba.fastjson2.internal.asm.Type;	specialinvoke $r38.<com.alibaba.fastjson2.internal.asm.Type: void <init>(int,java.lang.String,int,int)>(9, r0, i0, i2);	return $r38
;block_num 2