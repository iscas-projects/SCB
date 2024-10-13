(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var963 0)
(declare-sort var3138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mapResources/-105707727 (var963) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var963 var963)
(declare-const null-String String)
(declare-const var1692 var963) ; Statement: r0 := @this: org.hibernate.cfg.ExternalSessionFactoryConfig 
(assert (not (= var1692 null-var963)))
(declare-const var2854 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2854 null-String)))
(define-const var3287 String (mapResources/-105707727 var1692)) ; Statement: $r1 = r0.<org.hibernate.cfg.ExternalSessionFactoryConfig: java.lang.String mapResources> 
 ; Statement: if $r1 == null goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert (= var3287 null-String)) ; Cond: $r1 == null 
(assert true)
(define-const var277 String (trim/-847153721 var2854)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(declare-const var1692!1 var963)
(assert (not (= var1692!1 null-var963)))
(assert (= (mapResources/-105707727 var1692!1) var277)) ; Statement: r0.<org.hibernate.cfg.ExternalSessionFactoryConfig: java.lang.String mapResources> = $r3 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mapResources/-105707727=([org.hibernate.cfg.ExternalSessionFactoryConfig], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var963=org.hibernate.cfg.ExternalSessionFactoryConfig, var1692=r0, var2854=r2, var3138=null_type, var3287=$r1, var277=$r3}
; {org.hibernate.cfg.ExternalSessionFactoryConfig=var963, r0=var1692, r2=var2854, null_type=var3138, $r1=var3287, $r3=var277}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.hibernate.cfg.ExternalSessionFactoryConfig;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.cfg.ExternalSessionFactoryConfig: java.lang.String mapResources>;	if $r1 == null goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	r0.<org.hibernate.cfg.ExternalSessionFactoryConfig: java.lang.String mapResources> = $r3;	goto [?= return];	return
;block_num 3