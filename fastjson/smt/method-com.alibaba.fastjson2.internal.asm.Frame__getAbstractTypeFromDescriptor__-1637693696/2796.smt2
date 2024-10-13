(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1758 0)
(declare-sort var491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1758 var1758)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var211 var1758) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var211 null-var1758)))
(declare-const var135 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var135 null-String)))
(declare-const var3402 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3402 null-Int)))
(define-const var3485 String null-String) ; Statement: r4 = null 
(define-const var659 String null-String) ; Statement: r6 = null 
(define-const var3224 String null-String) ; Statement: r5 = null 
(assert (and true (and (> (str.len var135) var3402) (<= 0 var3402))))
(define-const var1412 Int (charAt/698050440 var135 var3402)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var3514 Int (cast-from-Int-to-Int var1412)) ; Statement: $i32 = (int) $c1 
 ; Statement: tableswitch($i32) {     case 66: goto return 4194305;     case 67: goto return 4194305;     case 68: goto return 4194307;     case 69: goto $r8 = new java.lang.IllegalArgumentException;     case 70: goto return 4194306;     case 71: goto $r8 = new java.lang.IllegalArgumentException;     case 72: goto $r8 = new java.lang.IllegalArgumentException;     case 73: goto return 4194305;     case 74: goto return 4194308;     case 75: goto $r8 = new java.lang.IllegalArgumentException;     case 76: goto if i0 != 0 goto (branch);     case 77: goto $r8 = new java.lang.IllegalArgumentException;     case 78: goto $r8 = new java.lang.IllegalArgumentException;     case 79: goto $r8 = new java.lang.IllegalArgumentException;     case 80: goto $r8 = new java.lang.IllegalArgumentException;     case 81: goto $r8 = new java.lang.IllegalArgumentException;     case 82: goto $r8 = new java.lang.IllegalArgumentException;     case 83: goto return 4194305;     case 84: goto $r8 = new java.lang.IllegalArgumentException;     case 85: goto $r8 = new java.lang.IllegalArgumentException;     case 86: goto return 0;     case 87: goto $r8 = new java.lang.IllegalArgumentException;     case 88: goto $r8 = new java.lang.IllegalArgumentException;     case 89: goto $r8 = new java.lang.IllegalArgumentException;     case 90: goto return 4194305;     case 91: goto i26 = i0 + 1;     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (= var3514 74) (and (not (= var3514 73)) (and (not (= var3514 72)) (and (not (= var3514 71)) (and (not (= var3514 70)) (and (not (= var3514 69)) (and (not (= var3514 68)) (and (not (= var3514 67)) (and (not (= var3514 66)) true)))))))))) ; Intersect: Cond: $i32 == 74  and Intersect: Negate: Cond: $i32 == 73   and Intersect: Negate: Cond: $i32 == 72   and Intersect: Negate: Cond: $i32 == 71   and Intersect: Negate: Cond: $i32 == 70   and Intersect: Negate: Cond: $i32 == 69   and Intersect: Negate: Cond: $i32 == 68   and Intersect: Negate: Cond: $i32 == 67   and Intersect: Negate: Cond: $i32 == 66   and Non Conditional         
 ; Statement: return 4194308 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1758=com.alibaba.fastjson2.internal.asm.SymbolTable, var211=r1, var135=r0, var491=null_type, var3402=i0, var3485=r4, var659=r6, var3224=r5, var1412=$c1, var3514=$i32}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var1758, r1=var211, r0=var135, null_type=var491, i0=var3402, r4=var3485, r6=var659, r5=var3224, $c1=var1412, $i32=var3514}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r4 = null;	r6 = null;	r5 = null;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i32 = (int) $c1;	tableswitch($i32) {     case 66: goto return 4194305;     case 67: goto return 4194305;     case 68: goto return 4194307;     case 69: goto $r8 = new java.lang.IllegalArgumentException;     case 70: goto return 4194306;     case 71: goto $r8 = new java.lang.IllegalArgumentException;     case 72: goto $r8 = new java.lang.IllegalArgumentException;     case 73: goto return 4194305;     case 74: goto return 4194308;     case 75: goto $r8 = new java.lang.IllegalArgumentException;     case 76: goto if i0 != 0 goto (branch);     case 77: goto $r8 = new java.lang.IllegalArgumentException;     case 78: goto $r8 = new java.lang.IllegalArgumentException;     case 79: goto $r8 = new java.lang.IllegalArgumentException;     case 80: goto $r8 = new java.lang.IllegalArgumentException;     case 81: goto $r8 = new java.lang.IllegalArgumentException;     case 82: goto $r8 = new java.lang.IllegalArgumentException;     case 83: goto return 4194305;     case 84: goto $r8 = new java.lang.IllegalArgumentException;     case 85: goto $r8 = new java.lang.IllegalArgumentException;     case 86: goto return 0;     case 87: goto $r8 = new java.lang.IllegalArgumentException;     case 88: goto $r8 = new java.lang.IllegalArgumentException;     case 89: goto $r8 = new java.lang.IllegalArgumentException;     case 90: goto return 4194305;     case 91: goto i26 = i0 + 1;     default: goto $r8 = new java.lang.IllegalArgumentException; };	return 4194308
;block_num 2