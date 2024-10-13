(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHasSharedInstanceRestrictions/-605816330 (var2346) Bool)
(declare-fun forcedClearCache/463396941 (var2346) void)
(declare-const null-var2346 var2346)
(declare-const var2992 var2346) ; Statement: r0 := @this: freemarker.ext.beans.ClassIntrospector 
(assert (not (= var2992 null-var2346)))
(assert true)
(define-const var3540 Bool (getHasSharedInstanceRestrictions/-605816330 var2992)) ; Statement: $z0 = virtualinvoke r0.<freemarker.ext.beans.ClassIntrospector: boolean getHasSharedInstanceRestrictions()>() 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<freemarker.ext.beans.ClassIntrospector: void forcedClearCache()>() 
(assert (= (ite var3540 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (forcedClearCache/463396941 var2992)) ; Statement: specialinvoke r0.<freemarker.ext.beans.ClassIntrospector: void forcedClearCache()>() 

(declare-const var2992!1 var2346)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getHasSharedInstanceRestrictions/-605816330=([freemarker.ext.beans.ClassIntrospector], boolean), forcedClearCache/463396941=([freemarker.ext.beans.ClassIntrospector], void)}
; {var2346=freemarker.ext.beans.ClassIntrospector, var2992=r0, var3540=$z0}
; {freemarker.ext.beans.ClassIntrospector=var2346, r0=var2992, $z0=var3540}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.beans.ClassIntrospector;	$z0 = virtualinvoke r0.<freemarker.ext.beans.ClassIntrospector: boolean getHasSharedInstanceRestrictions()>();	if $z0 == 0 goto specialinvoke r0.<freemarker.ext.beans.ClassIntrospector: void forcedClearCache()>();	specialinvoke r0.<freemarker.ext.beans.ClassIntrospector: void forcedClearCache()>();	return
;block_num 2