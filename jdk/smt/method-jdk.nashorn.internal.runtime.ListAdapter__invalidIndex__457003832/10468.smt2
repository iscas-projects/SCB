(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2331-init () var2331)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun <init>/1107025377 (var2331 String) void)
(declare-const null-Int Int)
(declare-const var1695 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1695 null-Int)))
(define-const var448 var2331 var2331-init) ; Statement: $r0 = new java.lang.IndexOutOfBoundsException 
(define-const var1225 String (String_valueOf/1240665136 var1695)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (<init>/1107025377 var448 var1225)) ; Statement: specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r1) 

(declare-const var448!1 var2331)
(declare-const var1225!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2331-init=([], java.lang.IndexOutOfBoundsException), String_valueOf/1240665136=([int], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1695=i0, var2331=java.lang.IndexOutOfBoundsException, var448=$r0, var1225=$r1}
; {i0=var1695, java.lang.IndexOutOfBoundsException=var2331, $r0=var448, $r1=var1225}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.IndexOutOfBoundsException;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r1);	return $r0
;block_num 1