(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3325 0)
(declare-sort var3520 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDateFormat/-1312666757 (var3656) String)
(declare-fun cast-from-var3325-to-var3656 (var3325) var3656)
(declare-fun setDateFormat/632312517 (var3656 String) void)
(declare-const null-var3325 var3325)
(declare-const null-String String)
(declare-const var841 var3325) ; Statement: r0 := @this: freemarker.core.Environment 
(assert (not (= var841 null-var3325)))
(declare-const var299 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var299 null-String)))
(assert true)
(define-const var3264 String (getDateFormat/-1312666757 (cast-from-var3325-to-var3656 var841))) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDateFormat()>() 
(assert true)
;(assert (setDateFormat/632312517 (cast-from-var3325-to-var3656 var841) var299)) ; Statement: specialinvoke r0.<freemarker.core.Configurable: void setDateFormat(java.lang.String)>(r2) 

(declare-const var841!1 var3325)
(declare-const var299!1 String)
(assert true)
(define-const var2450 Bool (= var299!1 var3264)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2450 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDateFormat/-1312666757=([freemarker.core.Configurable], java.lang.String), cast-from-var3325-to-var3656=([freemarker.core.Environment], freemarker.core.Configurable), setDateFormat/632312517=([freemarker.core.Configurable, java.lang.String], void)}
; {var3325=freemarker.core.Environment, var841=r0, var299=r2, var3520=null_type, var3656=freemarker.core.Configurable, var3264=r1, var2450=$z0}
; {freemarker.core.Environment=var3325, r0=var841, r2=var299, null_type=var3520, freemarker.core.Configurable=var3656, r1=var3264, $z0=var2450}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core.Environment;	r2 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDateFormat()>();	specialinvoke r0.<freemarker.core.Configurable: void setDateFormat(java.lang.String)>(r2);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2