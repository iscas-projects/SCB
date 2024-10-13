(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1446 0)
(declare-sort var204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-String String)
(declare-const var204-NUMBER_TEN (Array Int String))
(declare-const var2568 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2568 null-String)))
(define-const var3524 (Array Int String) var204-NUMBER_TEN) ; Statement: $r1 = <cn.hutool.core.convert.NumberWordFormatter: java.lang.String[] NUMBER_TEN> 
(assert (and true (and (>= 0 0) (>= (str.len var2568) 1) (>= 1 0))))
(define-const var1300 String (substring/-1240304868 var2568 0 1)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 1) 
(define-const var3091 Int (Int_parseInt/1370970945 var1300)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2) 
(define-const var356 Int (- var3091 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1892 String (select var3524 var356)) ; Statement: $r3 = $r1[$i1] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {substring/-1240304868=([java.lang.String, int, int], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int)}
; {var2568=r0, var1446=null_type, var204=cn.hutool.core.convert.NumberWordFormatter, var3524=$r1, var1300=$r2, var3091=$i0, var356=$i1, var1892=$r3}
; {r0=var2568, null_type=var1446, cn.hutool.core.convert.NumberWordFormatter=var204, $r1=var3524, $r2=var1300, $i0=var3091, $i1=var356, $r3=var1892}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.convert.NumberWordFormatter: java.lang.String[] NUMBER_TEN>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 1);	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	$i1 = $i0 - 1;	$r3 = $r1[$i1];	return $r3
;block_num 1