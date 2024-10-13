(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1831 0)
(declare-sort var3716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-fun var3716_date/-1725065658 (Int) var1831)
(declare-const null-String String)
(declare-const var1898 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1898 null-String)))
(define-const var3147 String (String_toString/-1426662429 var1898)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var78 Int (Int_parseLong/-436876155 var3147)) ; Statement: $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r1) 
(define-const var3455 var1831 (var3716_date/-1725065658 var78)) ; Statement: $r2 = staticinvoke <cn.hutool.core.date.DateUtil: cn.hutool.core.date.DateTime date(long)>($l0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), Int_parseLong/-436876155=([java.lang.String], long), var3716_date/-1725065658=([long], cn.hutool.core.date.DateTime)}
; {var1898=r0, var3147=$r1, var78=$l0, var1831=cn.hutool.core.date.DateTime, var3716=cn.hutool.core.date.DateUtil, var3455=$r2}
; {r0=var1898, $r1=var3147, $l0=var78, cn.hutool.core.date.DateTime=var1831, cn.hutool.core.date.DateUtil=var3716, $r2=var3455}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r1);	$r2 = staticinvoke <cn.hutool.core.date.DateUtil: cn.hutool.core.date.DateTime date(long)>($l0);	return $r2
;block_num 1