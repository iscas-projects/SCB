(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1976 0)
(declare-sort var2325 0)
(declare-sort var2236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTimeFormat/-985728196 (var2236) String)
(declare-fun cast-from-var1976-to-var2236 (var1976) var2236)
(declare-fun setTimeFormat/-1342218106 (var2236 String) void)
(declare-const null-var1976 var1976)
(declare-const null-String String)
(declare-const var2862 var1976) ; Statement: r0 := @this: freemarker.core.Environment 
(assert (not (= var2862 null-var1976)))
(declare-const var1474 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1474 null-String)))
(assert true)
(define-const var2509 String (getTimeFormat/-985728196 (cast-from-var1976-to-var2236 var2862))) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getTimeFormat()>() 
(assert true)
;(assert (setTimeFormat/-1342218106 (cast-from-var1976-to-var2236 var2862) var1474)) ; Statement: specialinvoke r0.<freemarker.core.Configurable: void setTimeFormat(java.lang.String)>(r2) 

(declare-const var2862!1 var1976)
(declare-const var1474!1 String)
(assert true)
(define-const var2834 Bool (= var1474!1 var2509)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2834 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTimeFormat/-985728196=([freemarker.core.Configurable], java.lang.String), cast-from-var1976-to-var2236=([freemarker.core.Environment], freemarker.core.Configurable), setTimeFormat/-1342218106=([freemarker.core.Configurable, java.lang.String], void)}
; {var1976=freemarker.core.Environment, var2862=r0, var1474=r2, var2325=null_type, var2236=freemarker.core.Configurable, var2509=r1, var2834=$z0}
; {freemarker.core.Environment=var1976, r0=var2862, r2=var1474, null_type=var2325, freemarker.core.Configurable=var2236, r1=var2509, $z0=var2834}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core.Environment;	r2 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getTimeFormat()>();	specialinvoke r0.<freemarker.core.Configurable: void setTimeFormat(java.lang.String)>(r2);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2