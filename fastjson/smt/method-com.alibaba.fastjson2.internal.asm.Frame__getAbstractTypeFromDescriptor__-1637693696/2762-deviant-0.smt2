(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var349 0)
(declare-sort var2279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var349 var349)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var376 var349) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var376 null-var349)))
(declare-const var1447 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1447 null-String)))
(declare-const var2164 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2164 null-Int)))
(define-const var3543 String null-String) ; Statement: r4 = null 
(define-const var488 String null-String) ; Statement: r6 = null 
(define-const var1113 String null-String) ; Statement: r5 = null 
(assert (not (and true (and (> (str.len var1447) var2164) (<= 0 var2164)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var349=com.alibaba.fastjson2.internal.asm.SymbolTable, var376=r1, var1447=r0, var2279=null_type, var2164=i0, var3543=r4, var488=r6, var1113=r5, var2486=$c1, var881=$i32}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var349, r1=var376, r0=var1447, null_type=var2279, i0=var2164, r4=var3543, r6=var488, r5=var1113, $c1=var2486, $i32=var881}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r4 = null;	r6 = null;	r5 = null;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i32 = (int) $c1;	tableswitch($i32) {     case 66: goto return 4194305;     case 67: goto return 4194305;     case 68: goto return 4194307;     case 69: goto $r8 = new java.lang.IllegalArgumentException;     case 70: goto return 4194306;     case 71: goto $r8 = new java.lang.IllegalArgumentException;     case 72: goto $r8 = new java.lang.IllegalArgumentException;     case 73: goto return 4194305;     case 74: goto return 4194308;     case 75: goto $r8 = new java.lang.IllegalArgumentException;     case 76: goto if i0 != 0 goto (branch);     case 77: goto $r8 = new java.lang.IllegalArgumentException;     case 78: goto $r8 = new java.lang.IllegalArgumentException;     case 79: goto $r8 = new java.lang.IllegalArgumentException;     case 80: goto $r8 = new java.lang.IllegalArgumentException;     case 81: goto $r8 = new java.lang.IllegalArgumentException;     case 82: goto $r8 = new java.lang.IllegalArgumentException;     case 83: goto return 4194305;     case 84: goto $r8 = new java.lang.IllegalArgumentException;     case 85: goto $r8 = new java.lang.IllegalArgumentException;     case 86: goto return 0;     case 87: goto $r8 = new java.lang.IllegalArgumentException;     case 88: goto $r8 = new java.lang.IllegalArgumentException;     case 89: goto $r8 = new java.lang.IllegalArgumentException;     case 90: goto return 4194305;     case 91: goto i26 = i0 + 1;     default: goto $r8 = new java.lang.IllegalArgumentException; };	return 4194307
;block_num 2