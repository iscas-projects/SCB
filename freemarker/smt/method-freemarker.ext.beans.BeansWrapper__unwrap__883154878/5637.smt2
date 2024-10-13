(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var2903 0)
(declare-sort var2262 0)
(declare-sort var3471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tryUnwrapTo/-999253202 (var1368 var2903 ClassObject) var2262)
(declare-const null-var1368 var1368)
(declare-const null-var2903 var2903)
(declare-const null-ClassObject ClassObject)
(declare-const var3471-CANT_UNWRAP_TO_TARGET_CLASS var2262)
(declare-const var247 var1368) ; Statement: r0 := @this: freemarker.ext.beans.BeansWrapper 
(assert (not (= var247 null-var1368)))
(declare-const var340 var2903) ; Statement: r1 := @parameter0: freemarker.template.TemplateModel 
(assert (not (= var340 null-var2903)))
(declare-const var283 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var283 null-ClassObject)))
(assert true)
(define-const var2119 var2262 (tryUnwrapTo/-999253202 var247 var340 var283)) ; Statement: r3 = virtualinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.Object tryUnwrapTo(freemarker.template.TemplateModel,java.lang.Class)>(r1, r2) 
(define-const var2452 var2262 var3471-CANT_UNWRAP_TO_TARGET_CLASS) ; Statement: $r4 = <freemarker.template.ObjectWrapperAndUnwrapper: java.lang.Object CANT_UNWRAP_TO_TARGET_CLASS> 
 ; Statement: if r3 != $r4 goto return r3 
(assert (not (= var2119 var2452))) ; Cond: r3 != $r4 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {tryUnwrapTo/-999253202=([freemarker.ext.beans.BeansWrapper, freemarker.template.TemplateModel, java.lang.Class], java.lang.Object)}
; {var1368=freemarker.ext.beans.BeansWrapper, var247=r0, var2903=freemarker.template.TemplateModel, var340=r1, var283=r2, var2262=java.lang.Object, var2119=r3, var3471=freemarker.template.ObjectWrapperAndUnwrapper, var2452=$r4}
; {freemarker.ext.beans.BeansWrapper=var1368, r0=var247, freemarker.template.TemplateModel=var2903, r1=var340, r2=var283, java.lang.Object=var2262, r3=var2119, freemarker.template.ObjectWrapperAndUnwrapper=var3471, $r4=var2452}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.beans.BeansWrapper;	r1 := @parameter0: freemarker.template.TemplateModel;	r2 := @parameter1: java.lang.Class;	r3 = virtualinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.Object tryUnwrapTo(freemarker.template.TemplateModel,java.lang.Class)>(r1, r2);	$r4 = <freemarker.template.ObjectWrapperAndUnwrapper: java.lang.Object CANT_UNWRAP_TO_TARGET_CLASS>;	if r3 != $r4 goto return r3;	return r3
;block_num 2