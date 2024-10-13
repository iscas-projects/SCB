(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1105 0)
(declare-sort var2575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1105 var1105)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1935 var1105) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var1935 null-var1105)))
(declare-const var2353 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2353 null-String)))
(declare-const var1770 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1770 null-Int)))
(define-const var333 String null-String) ; Statement: r4 = null 
(define-const var2160 String null-String) ; Statement: r6 = null 
(define-const var2324 String null-String) ; Statement: r5 = null 
(assert (and true (and (> (str.len var2353) var1770) (<= 0 var1770))))
(define-const var922 Int (charAt/698050440 var2353 var1770)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var3934 Int (cast-from-Int-to-Int var922)) ; Statement: $i32 = (int) $c1 
 ; Statement: tableswitch($i32) {     case 66: goto return 4194305;     case 67: goto return 4194305;     case 68: goto return 4194307;     case 69: goto $r8 = new java.lang.IllegalArgumentException;     case 70: goto return 4194306;     case 71: goto $r8 = new java.lang.IllegalArgumentException;     case 72: goto $r8 = new java.lang.IllegalArgumentException;     case 73: goto return 4194305;     case 74: goto return 4194308;     case 75: goto $r8 = new java.lang.IllegalArgumentException;     case 76: goto if i0 != 0 goto (branch);     case 77: goto $r8 = new java.lang.IllegalArgumentException;     case 78: goto $r8 = new java.lang.IllegalArgumentException;     case 79: goto $r8 = new java.lang.IllegalArgumentException;     case 80: goto $r8 = new java.lang.IllegalArgumentException;     case 81: goto $r8 = new java.lang.IllegalArgumentException;     case 82: goto $r8 = new java.lang.IllegalArgumentException;     case 83: goto return 4194305;     case 84: goto $r8 = new java.lang.IllegalArgumentException;     case 85: goto $r8 = new java.lang.IllegalArgumentException;     case 86: goto return 0;     case 87: goto $r8 = new java.lang.IllegalArgumentException;     case 88: goto $r8 = new java.lang.IllegalArgumentException;     case 89: goto $r8 = new java.lang.IllegalArgumentException;     case 90: goto return 4194305;     case 91: goto i26 = i0 + 1;     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (= var3934 70) (and (not (= var3934 69)) (and (not (= var3934 68)) (and (not (= var3934 67)) (and (not (= var3934 66)) true)))))) ; Intersect: Cond: $i32 == 70  and Intersect: Negate: Cond: $i32 == 69   and Intersect: Negate: Cond: $i32 == 68   and Intersect: Negate: Cond: $i32 == 67   and Intersect: Negate: Cond: $i32 == 66   and Non Conditional     
 ; Statement: return 4194306 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1105=com.alibaba.fastjson2.internal.asm.SymbolTable, var1935=r1, var2353=r0, var2575=null_type, var1770=i0, var333=r4, var2160=r6, var2324=r5, var922=$c1, var3934=$i32}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var1105, r1=var1935, r0=var2353, null_type=var2575, i0=var1770, r4=var333, r6=var2160, r5=var2324, $c1=var922, $i32=var3934}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r4 = null;	r6 = null;	r5 = null;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i32 = (int) $c1;	tableswitch($i32) {     case 66: goto return 4194305;     case 67: goto return 4194305;     case 68: goto return 4194307;     case 69: goto $r8 = new java.lang.IllegalArgumentException;     case 70: goto return 4194306;     case 71: goto $r8 = new java.lang.IllegalArgumentException;     case 72: goto $r8 = new java.lang.IllegalArgumentException;     case 73: goto return 4194305;     case 74: goto return 4194308;     case 75: goto $r8 = new java.lang.IllegalArgumentException;     case 76: goto if i0 != 0 goto (branch);     case 77: goto $r8 = new java.lang.IllegalArgumentException;     case 78: goto $r8 = new java.lang.IllegalArgumentException;     case 79: goto $r8 = new java.lang.IllegalArgumentException;     case 80: goto $r8 = new java.lang.IllegalArgumentException;     case 81: goto $r8 = new java.lang.IllegalArgumentException;     case 82: goto $r8 = new java.lang.IllegalArgumentException;     case 83: goto return 4194305;     case 84: goto $r8 = new java.lang.IllegalArgumentException;     case 85: goto $r8 = new java.lang.IllegalArgumentException;     case 86: goto return 0;     case 87: goto $r8 = new java.lang.IllegalArgumentException;     case 88: goto $r8 = new java.lang.IllegalArgumentException;     case 89: goto $r8 = new java.lang.IllegalArgumentException;     case 90: goto return 4194305;     case 91: goto i26 = i0 + 1;     default: goto $r8 = new java.lang.IllegalArgumentException; };	return 4194306
;block_num 2