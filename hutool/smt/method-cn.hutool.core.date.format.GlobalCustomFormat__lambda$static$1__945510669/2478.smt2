(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3927 0)
(declare-sort var3920 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-fun var3927_multiplyExact/-1444776690 (Int Int) Int)
(declare-fun var3368_date/-1725065658 (Int) var3920)
(declare-const null-String String)
(declare-const var2099 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2099 null-String)))
(define-const var231 String (String_toString/-1426662429 var2099)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var519 Int (Int_parseLong/-436876155 var231)) ; Statement: $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r1) 
(define-const var1557 Int (var3927_multiplyExact/-1444776690 var519 1000)) ; Statement: $l1 = staticinvoke <java.lang.Math: long multiplyExact(long,long)>($l0, 1000L) 
(define-const var1546 var3920 (var3368_date/-1725065658 var1557)) ; Statement: $r2 = staticinvoke <cn.hutool.core.date.DateUtil: cn.hutool.core.date.DateTime date(long)>($l1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), Int_parseLong/-436876155=([java.lang.String], long), var3927_multiplyExact/-1444776690=([long, long], long), var3368_date/-1725065658=([long], cn.hutool.core.date.DateTime)}
; {var2099=r0, var231=$r1, var519=$l0, var3927=java.lang.Math, var1557=$l1, var3920=cn.hutool.core.date.DateTime, var3368=cn.hutool.core.date.DateUtil, var1546=$r2}
; {r0=var2099, $r1=var231, $l0=var519, java.lang.Math=var3927, $l1=var1557, cn.hutool.core.date.DateTime=var3920, cn.hutool.core.date.DateUtil=var3368, $r2=var1546}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r1);	$l1 = staticinvoke <java.lang.Math: long multiplyExact(long,long)>($l0, 1000L);	$r2 = staticinvoke <cn.hutool.core.date.DateUtil: cn.hutool.core.date.DateTime date(long)>($l1);	return $r2
;block_num 1