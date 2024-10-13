(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-String String)
(declare-const var1855 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1855 null-String)))
(assert true)
(define-const var3610 Int (length/-134980193 var1855)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert (<= var3610 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var2715 String (trim/-847153721 var1855)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2186 String (trim/-847153721 var2715)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), trim/-847153721=([java.lang.String], java.lang.String)}
; {var1855=r0, var3046=null_type, var3610=$i0, var2715=$r1, var2186=$r2}
; {r0=var1855, null_type=var3046, $i0=var3610, $r1=var2715, $r2=var2186}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String trim()>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	return $r2
;block_num 2