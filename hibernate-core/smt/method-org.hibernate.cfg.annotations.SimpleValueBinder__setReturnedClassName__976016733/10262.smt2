(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2314 0)
(declare-sort var1504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun returnedClassName/1702416975 (var2314) String)
(declare-fun defaultType/1702416975 (var2314) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2314 var2314)
(declare-const null-String String)
(declare-const var617 var2314) ; Statement: r0 := @this: org.hibernate.cfg.annotations.SimpleValueBinder 
(assert (not (= var617 null-var2314)))
(declare-const var1780 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1780 null-String)))
(declare-const var617!1 var2314)
(assert (not (= var617!1 null-var2314)))
(assert (= (returnedClassName/1702416975 var617!1) var1780)) ; Statement: r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String returnedClassName> = r1 
(define-const var558 String (defaultType/1702416975 var617!1)) ; Statement: $r2 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String defaultType> 
(assert true)
(define-const var3128 Int (length/-134980193 var558)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto return 
(assert (not (= var3128 0))) ; Cond: $i0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {returnedClassName/1702416975=([org.hibernate.cfg.annotations.SimpleValueBinder], java.lang.String), defaultType/1702416975=([org.hibernate.cfg.annotations.SimpleValueBinder], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2314=org.hibernate.cfg.annotations.SimpleValueBinder, var617=r0, var1780=r1, var1504=null_type, var558=$r2, var3128=$i0}
; {org.hibernate.cfg.annotations.SimpleValueBinder=var2314, r0=var617, r1=var1780, null_type=var1504, $r2=var558, $i0=var3128}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.SimpleValueBinder;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String returnedClassName> = r1;	$r2 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String defaultType>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 != 0 goto return;	return
;block_num 2