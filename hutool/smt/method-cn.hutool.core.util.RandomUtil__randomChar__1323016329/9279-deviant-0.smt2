(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort var3526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3526_randomInt/1206967757 (Int) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-String String)
(declare-const var3766 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3766 null-String)))
(assert true)
(define-const var1342 Int (length/-134980193 var3766)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3921 Int (var3526_randomInt/1206967757 var1342)) ; Statement: $i1 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt(int)>($i0) 
(assert (not (and true (and (> (str.len var3766) var3921) (<= 0 var3921)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3526_randomInt/1206967757=([int], int), charAt/698050440=([java.lang.String, int], char)}
; {var3766=r0, var1204=null_type, var1342=$i0, var3526=cn.hutool.core.util.RandomUtil, var3921=$i1, var508=$c2}
; {r0=var3766, null_type=var1204, $i0=var1342, cn.hutool.core.util.RandomUtil=var3526, $i1=var3921, $c2=var508}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt(int)>($i0);	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1);	return $c2
;block_num 1