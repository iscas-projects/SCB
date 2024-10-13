(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3480 0)
(declare-sort var217 0)
(declare-sort var802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDateTimeFormat/-1866257234 (var802) String)
(declare-fun cast-from-var3480-to-var802 (var3480) var802)
(declare-fun setDateTimeFormat/-582036616 (var802 String) void)
(declare-const null-var3480 var3480)
(declare-const null-String String)
(declare-const var1980 var3480) ; Statement: r0 := @this: freemarker.core.Environment 
(assert (not (= var1980 null-var3480)))
(declare-const var2627 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2627 null-String)))
(assert true)
(define-const var2333 String (getDateTimeFormat/-1866257234 (cast-from-var3480-to-var802 var1980))) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDateTimeFormat()>() 
(assert true)
;(assert (setDateTimeFormat/-582036616 (cast-from-var3480-to-var802 var1980) var2627)) ; Statement: specialinvoke r0.<freemarker.core.Configurable: void setDateTimeFormat(java.lang.String)>(r2) 

(declare-const var1980!1 var3480)
(declare-const var2627!1 String)
(assert true)
(define-const var3267 Bool (= var2627!1 var2333)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3267 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDateTimeFormat/-1866257234=([freemarker.core.Configurable], java.lang.String), cast-from-var3480-to-var802=([freemarker.core.Environment], freemarker.core.Configurable), setDateTimeFormat/-582036616=([freemarker.core.Configurable, java.lang.String], void)}
; {var3480=freemarker.core.Environment, var1980=r0, var2627=r2, var217=null_type, var802=freemarker.core.Configurable, var2333=r1, var3267=$z0}
; {freemarker.core.Environment=var3480, r0=var1980, r2=var2627, null_type=var217, freemarker.core.Configurable=var802, r1=var2333, $z0=var3267}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core.Environment;	r2 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDateTimeFormat()>();	specialinvoke r0.<freemarker.core.Configurable: void setDateTimeFormat(java.lang.String)>(r2);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2