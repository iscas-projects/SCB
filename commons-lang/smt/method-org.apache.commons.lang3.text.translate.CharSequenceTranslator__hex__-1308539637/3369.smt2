(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun toUpperCase/398655892 (String var1838) String)
(declare-const null-Int Int)
(declare-const var1838-ENGLISH var1838)
(declare-const var2322 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2322 null-Int)))
(define-const var3889 String (Int_toHexString/1865784998 var2322)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(define-const var2683 var1838 var1838-ENGLISH) ; Statement: $r0 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3191 String (toUpperCase/398655892 var3889 var2683)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2322=i0, var3889=$r1, var1838=java.util.Locale, var2683=$r0, var3191=$r2}
; {i0=var2322, $r1=var3889, java.util.Locale=var1838, $r0=var2683, $r2=var3191}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts i0 := @parameter0: int;	$r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r0 = <java.util.Locale: java.util.Locale ENGLISH>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r0);	return $r2
;block_num 1