(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var646 0)
(declare-sort var1957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1957-init () var1957)
(declare-fun <init>/-1254973680 (var1957 Int String Int Int) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3395 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3395 null-String)))
(declare-const var3128 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3128 null-Int)))
(declare-const var2784 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2784 null-Int)))
(assert (not (and true (and (> (str.len var3395) var3128) (<= 0 var3128)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1957-init=([], com.alibaba.fastjson2.internal.asm.Type), <init>/-1254973680=([com.alibaba.fastjson2.internal.asm.Type, int, java.lang.String, int, int], void)}
; {var3395=r0, var646=null_type, var3128=i0, var2784=i2, var1588=$c1, var2232=$i6, var1957=com.alibaba.fastjson2.internal.asm.Type, var416=$r40, var499=11}
; {r0=var3395, null_type=var646, i0=var3128, i2=var2784, $c1=var1588, $i6=var2232, com.alibaba.fastjson2.internal.asm.Type=var1957, $r40=var416, 11=var499}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i6 = (int) $c1;	lookupswitch($i6) {     case 40: goto $r40 = new com.alibaba.fastjson2.internal.asm.Type;     case 66: goto $r34 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BYTE_TYPE>;     case 67: goto $r33 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type CHAR_TYPE>;     case 68: goto $r32 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type DOUBLE_TYPE>;     case 70: goto $r31 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type FLOAT_TYPE>;     case 73: goto $r30 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type INT_TYPE>;     case 74: goto $r29 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type LONG_TYPE>;     case 76: goto i3 = i2 - i0;     case 83: goto $r4 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type SHORT_TYPE>;     case 86: goto $r3 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type VOID_TYPE>;     case 90: goto $r2 = <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type BOOLEAN_TYPE>;     case 91: goto $r38 = new com.alibaba.fastjson2.internal.asm.Type;     default: goto $r41 = new java.lang.IllegalArgumentException; };	$r40 = new com.alibaba.fastjson2.internal.asm.Type;	specialinvoke $r40.<com.alibaba.fastjson2.internal.asm.Type: void <init>(int,java.lang.String,int,int)>(11, r0, i0, i2);	return $r40
;block_num 2