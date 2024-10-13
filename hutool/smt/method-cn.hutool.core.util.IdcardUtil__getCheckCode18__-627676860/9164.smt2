(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1565 0)
(declare-sort var1167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var1167_getPowerSum/2141123132 ((Array Int Int)) Int)
(declare-fun var1167_getCheckCode18/-951798214 (Int) Int)
(declare-const null-String String)
(declare-const var3993 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3993 null-String)))
(assert true)
(define-const var3000 (Array Int Int) (toCharArray/415275702 var3993)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var892 Int (var1167_getPowerSum/2141123132 var3000)) ; Statement: i0 = staticinvoke <cn.hutool.core.util.IdcardUtil: int getPowerSum(char[])>($r1) 
(define-const var3237 Int (var1167_getCheckCode18/-951798214 var892)) ; Statement: $c1 = staticinvoke <cn.hutool.core.util.IdcardUtil: char getCheckCode18(int)>(i0) 
 ; Statement: return $c1 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var1167_getPowerSum/2141123132=([char[]], int), var1167_getCheckCode18/-951798214=([int], char)}
; {var3993=r0, var1565=null_type, var3000=$r1, var1167=cn.hutool.core.util.IdcardUtil, var892=i0, var3237=$c1}
; {r0=var3993, null_type=var1565, $r1=var3000, cn.hutool.core.util.IdcardUtil=var1167, i0=var892, $c1=var3237}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i0 = staticinvoke <cn.hutool.core.util.IdcardUtil: int getPowerSum(char[])>($r1);	$c1 = staticinvoke <cn.hutool.core.util.IdcardUtil: char getCheckCode18(int)>(i0);	return $c1
;block_num 1