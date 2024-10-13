(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3652 0)
(declare-sort var3792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun groups/-1985368756 (var3652) (Array Int var3792))
(declare-fun cast-from-var3792-to-String (var3792) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3652 var3652)
(declare-const var3809 var3652) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpResult 
(assert (not (= var3809 null-var3652)))
(define-const var1115 (Array Int var3792) (groups/-1985368756 var3809)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.Object[] groups> 
(define-const var3489 var3792 (select var1115 0)) ; Statement: $r2 = $r1[0] 
(define-const var2777 String (cast-from-var3792-to-String var3489)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var2835 Int (length/-134980193 var2777)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {groups/-1985368756=([jdk.nashorn.internal.runtime.regexp.RegExpResult], java.lang.Object[]), cast-from-var3792-to-String=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3652=jdk.nashorn.internal.runtime.regexp.RegExpResult, var3809=r0, var3792=java.lang.Object, var1115=$r1, var3489=$r2, var2777=$r3, var2835=$i0}
; {jdk.nashorn.internal.runtime.regexp.RegExpResult=var3652, r0=var3809, java.lang.Object=var3792, $r1=var1115, $r2=var3489, $r3=var2777, $i0=var2835}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpResult;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.Object[] groups>;	$r2 = $r1[0];	$r3 = (java.lang.String) $r2;	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	return $i0
;block_num 1