(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1184 0)
(declare-sort var3075 0)
(declare-sort var3123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3123-init () var3123)
(declare-fun <init>/750527633 (var3123) void)
(declare-const null-var1184 var1184)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3069 var1184) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var3069 null-var1184)))
(declare-const var295 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var295 null-String)))
(declare-const var1562 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1562 null-Int)))
(define-const var3899 String null-String) ; Statement: r4 = null 
(define-const var1039 String null-String) ; Statement: r6 = null 
(define-const var1074 String null-String) ; Statement: r5 = null 
(assert (and true (and (> (str.len var295) var1562) (<= 0 var1562))))
(define-const var3553 Int (charAt/698050440 var295 var1562)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var3993 Int (cast-from-Int-to-Int var3553)) ; Statement: $i32 = (int) $c1 
 ; Statement: tableswitch($i32) {     case 66: goto return 4194305;     case 67: goto return 4194305;     case 68: goto return 4194307;     case 69: goto $r8 = new java.lang.IllegalArgumentException;     case 70: goto return 4194306;     case 71: goto $r8 = new java.lang.IllegalArgumentException;     case 72: goto $r8 = new java.lang.IllegalArgumentException;     case 73: goto return 4194305;     case 74: goto return 4194308;     case 75: goto $r8 = new java.lang.IllegalArgumentException;     case 76: goto if i0 != 0 goto (branch);     case 77: goto $r8 = new java.lang.IllegalArgumentException;     case 78: goto $r8 = new java.lang.IllegalArgumentException;     case 79: goto $r8 = new java.lang.IllegalArgumentException;     case 80: goto $r8 = new java.lang.IllegalArgumentException;     case 81: goto $r8 = new java.lang.IllegalArgumentException;     case 82: goto $r8 = new java.lang.IllegalArgumentException;     case 83: goto return 4194305;     case 84: goto $r8 = new java.lang.IllegalArgumentException;     case 85: goto $r8 = new java.lang.IllegalArgumentException;     case 86: goto return 0;     case 87: goto $r8 = new java.lang.IllegalArgumentException;     case 88: goto $r8 = new java.lang.IllegalArgumentException;     case 89: goto $r8 = new java.lang.IllegalArgumentException;     case 90: goto return 4194305;     case 91: goto i26 = i0 + 1;     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3993 68)) (and (not (= var3993 67)) (and (not (= var3993 66)) true)))) ; Intersect: Negate: Cond: $i32 == 68   and Intersect: Negate: Cond: $i32 == 67   and Intersect: Negate: Cond: $i32 == 66   and Non Conditional   
(define-const var5 var3123 var3123-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/750527633 var5)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>()>() 

(declare-const var5!1 var3123)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3123-init=([], java.lang.IllegalArgumentException), <init>/750527633=([java.lang.IllegalArgumentException], void)}
; {var1184=com.alibaba.fastjson2.internal.asm.SymbolTable, var3069=r1, var295=r0, var3075=null_type, var1562=i0, var3899=r4, var1039=r6, var1074=r5, var3553=$c1, var3993=$i32, var3123=java.lang.IllegalArgumentException, var5=$r8}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var1184, r1=var3069, r0=var295, null_type=var3075, i0=var1562, r4=var3899, r6=var1039, r5=var1074, $c1=var3553, $i32=var3993, java.lang.IllegalArgumentException=var3123, $r8=var5}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r4 = null;	r6 = null;	r5 = null;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i32 = (int) $c1;	tableswitch($i32) {     case 66: goto return 4194305;     case 67: goto return 4194305;     case 68: goto return 4194307;     case 69: goto $r8 = new java.lang.IllegalArgumentException;     case 70: goto return 4194306;     case 71: goto $r8 = new java.lang.IllegalArgumentException;     case 72: goto $r8 = new java.lang.IllegalArgumentException;     case 73: goto return 4194305;     case 74: goto return 4194308;     case 75: goto $r8 = new java.lang.IllegalArgumentException;     case 76: goto if i0 != 0 goto (branch);     case 77: goto $r8 = new java.lang.IllegalArgumentException;     case 78: goto $r8 = new java.lang.IllegalArgumentException;     case 79: goto $r8 = new java.lang.IllegalArgumentException;     case 80: goto $r8 = new java.lang.IllegalArgumentException;     case 81: goto $r8 = new java.lang.IllegalArgumentException;     case 82: goto $r8 = new java.lang.IllegalArgumentException;     case 83: goto return 4194305;     case 84: goto $r8 = new java.lang.IllegalArgumentException;     case 85: goto $r8 = new java.lang.IllegalArgumentException;     case 86: goto return 0;     case 87: goto $r8 = new java.lang.IllegalArgumentException;     case 88: goto $r8 = new java.lang.IllegalArgumentException;     case 89: goto $r8 = new java.lang.IllegalArgumentException;     case 90: goto return 4194305;     case 91: goto i26 = i0 + 1;     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>()>();	throw $r8
;block_num 2