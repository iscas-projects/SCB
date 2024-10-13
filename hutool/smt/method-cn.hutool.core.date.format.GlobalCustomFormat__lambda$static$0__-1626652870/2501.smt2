(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3917 0)
(declare-sort var1834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTime/1283854862 (var3917) Int)
(declare-fun var1834_floorDiv/-977748924 (Int Int) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var3917 var3917)
(declare-const var1999 var3917) ; Statement: r0 := @parameter0: java.util.Date 
(assert (not (= var1999 null-var3917)))
(assert true)
(define-const var3489 Int (getTime/1283854862 var1999)) ; Statement: $l0 = virtualinvoke r0.<java.util.Date: long getTime()>() 
(define-const var3523 Int (var1834_floorDiv/-977748924 var3489 1000)) ; Statement: $l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l0, 1000L) 
(define-const var1044 String (String_valueOf/-107395227 var3523)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getTime/1283854862=([java.util.Date], long), var1834_floorDiv/-977748924=([long, long], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var3917=java.util.Date, var1999=r0, var3489=$l0, var1834=java.lang.Math, var3523=$l1, var1044=$r1}
; {java.util.Date=var3917, r0=var1999, $l0=var3489, java.lang.Math=var1834, $l1=var3523, $r1=var1044}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @parameter0: java.util.Date;	$l0 = virtualinvoke r0.<java.util.Date: long getTime()>();	$l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l0, 1000L);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l1);	return $r1
;block_num 1