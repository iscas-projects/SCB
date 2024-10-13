(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var122-DIGITS (Array Int Int))
(declare-const var2857 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2857 null-Int)))
(declare-const var63 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var63 null-Bool)))
 ; Statement: if i0 != 0 goto i4 = i0 
(assert (not (not (= var2857 0)))) ; Negate: Cond: i0 != 0  
(define-const var2177 (Array Int Int) var122-DIGITS) ; Statement: $r7 = <cn.hutool.core.convert.NumberChineseFormatter: char[] DIGITS> 
(define-const var413 Int (select var2177 0)) ; Statement: $c3 = $r7[0] 
(define-const var426 String (String_valueOf/-371898945 var413)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c3) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String)}
; {var2857=i0, var63=z0, var122=cn.hutool.core.convert.NumberChineseFormatter, var2177=$r7, var413=$c3, var426=$r8}
; {i0=var2857, z0=var63, cn.hutool.core.convert.NumberChineseFormatter=var122, $r7=var2177, $c3=var413, $r8=var426}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts i0 := @parameter0: int;	z0 := @parameter1: boolean;	if i0 != 0 goto i4 = i0;	$r7 = <cn.hutool.core.convert.NumberChineseFormatter: char[] DIGITS>;	$c3 = $r7[0];	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c3);	return $r8
;block_num 2