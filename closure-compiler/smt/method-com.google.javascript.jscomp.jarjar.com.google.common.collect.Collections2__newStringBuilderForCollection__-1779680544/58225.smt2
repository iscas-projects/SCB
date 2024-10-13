(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1785 0)
(declare-sort var3397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1785_checkNonnegative/2032230513 (Int String) Int)
(declare-fun String-init () String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3397_min/-1046372827 (Int Int) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-const null-Int Int)
(declare-const var1506 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1506 null-Int)))
;(assert (var1785_checkNonnegative/2032230513 var1506 "size")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.CollectPreconditions: int checkNonnegative(int,java.lang.String)>(i0, "size") 

(declare-const var1506!1 Int)
(declare-const var3655 String)
(define-const var3769 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2363 Int (cast-from-Int-to-Int var1506!1)) ; Statement: $l1 = (long) i0 
(define-const var236 Int (* var2363 8)) ; Statement: $l2 = $l1 * 8L 
(define-const var1764 Int (var3397_min/-1046372827 var236 1073741824)) ; Statement: $l3 = staticinvoke <java.lang.Math: long min(long,long)>($l2, 1073741824L) 
(define-const var488 Int (cast-from-Int-to-Int var1764)) ; Statement: $i4 = (int) $l3 
(assert true)
;(assert (<init>/543593434 var3769 var488)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var3769!1 String)
(declare-const var488!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1785_checkNonnegative/2032230513=([int, java.lang.String], int), String-init=([], java.lang.StringBuilder), cast-from-Int-to-Int=([int], long), var3397_min/-1046372827=([long, long], long), <init>/543593434=([java.lang.StringBuilder, int], void)}
; {var1506=i0, var1785=com.google.javascript.jscomp.jarjar.com.google.common.collect.CollectPreconditions, var3655="size", var3769=$r0, var2363=$l1, var236=$l2, var3397=java.lang.Math, var1764=$l3, var488=$i4}
; {i0=var1506, com.google.javascript.jscomp.jarjar.com.google.common.collect.CollectPreconditions=var1785, "size"=var3655, $r0=var3769, $l1=var2363, $l2=var236, java.lang.Math=var3397, $l3=var1764, $i4=var488}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts i0 := @parameter0: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.CollectPreconditions: int checkNonnegative(int,java.lang.String)>(i0, "size");	$r0 = new java.lang.StringBuilder;	$l1 = (long) i0;	$l2 = $l1 * 8L;	$l3 = staticinvoke <java.lang.Math: long min(long,long)>($l2, 1073741824L);	$i4 = (int) $l3;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i4);	return $r0
;block_num 1