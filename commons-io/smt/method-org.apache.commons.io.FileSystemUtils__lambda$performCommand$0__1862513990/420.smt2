(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3039 0)
(declare-sort var258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var258_getDefault/-641693464 () var258)
(declare-fun toLowerCase/1946809429 (String var258) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-String String)
(declare-const var148 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var148 null-String)))
(define-const var2854 var258 var258_getDefault/-641693464) ; Statement: $r1 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var631 String (toLowerCase/1946809429 var148 var2854)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var609 String (trim/-847153721 var631)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var258_getDefault/-641693464=([], java.util.Locale), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var148=r0, var3039=null_type, var258=java.util.Locale, var2854=$r1, var631=$r2, var609=$r3}
; {r0=var148, null_type=var3039, java.util.Locale=var258, $r1=var2854, $r2=var631, $r3=var609}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1