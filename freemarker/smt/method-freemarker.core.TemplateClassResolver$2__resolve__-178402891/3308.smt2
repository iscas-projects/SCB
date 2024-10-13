(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3190 0)
(declare-sort var2656 0)
(declare-sort var3319 0)
(declare-sort var1405 0)
(declare-sort var3026 0)
(declare-sort var84 0)
(declare-sort var365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3026!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var365_newInstantiatingClassNotAllowedException/-1816843761 (String var3319) var84)
(declare-const null-var3190 var3190)
(declare-const null-String String)
(declare-const null-var3319 var3319)
(declare-const null-var1405 var1405)
(declare-const var2982 var3190) ; Statement: r9 := @this: freemarker.core.TemplateClassResolver$2 
(assert (not (= var2982 null-var3190)))
(declare-const var2582 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2582 null-String)))
(declare-const var1714 var3319) ; Statement: r3 := @parameter1: freemarker.core.Environment 
(assert (not (= var1714 null-var3319)))
(declare-const var2911 var1405) ; Statement: r10 := @parameter2: freemarker.template.Template 
(assert (not (= var2911 null-var1405)))
(define-const var3275 ClassObject var3026!class) ; Statement: $r1 = class "Lfreemarker/template/utility/ObjectConstructor;" 
(assert true)
(define-const var592 String (getName/-1958580599 var3275)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1105 Bool (= var2582 var592)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateException newInstantiatingClassNotAllowedException(java.lang.String,freemarker.core.Environment)>(r0, r3) 
(assert (not (= (ite var1105 1 0) 0))) ; Cond: $z0 != 0 
(define-const var441 var84 (var365_newInstantiatingClassNotAllowedException/-1816843761 var2582 var1714)) ; Statement: $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateException newInstantiatingClassNotAllowedException(java.lang.String,freemarker.core.Environment)>(r0, r3) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), var365_newInstantiatingClassNotAllowedException/-1816843761=([java.lang.String, freemarker.core.Environment], freemarker.template.TemplateException)}
; {var3190=freemarker.core.TemplateClassResolver$2, var2982=r9, var2582=r0, var2656=null_type, var3319=freemarker.core.Environment, var1714=r3, var1405=freemarker.template.Template, var2911=r10, var3026=freemarker.template.utility.ObjectConstructor, var3275=$r1, var592=$r2, var1105=$z0, var84=freemarker.template.TemplateException, var365=freemarker.core._MessageUtil, var441=$r11}
; {freemarker.core.TemplateClassResolver$2=var3190, r9=var2982, r0=var2582, null_type=var2656, freemarker.core.Environment=var3319, r3=var1714, freemarker.template.Template=var1405, r10=var2911, freemarker.template.utility.ObjectConstructor=var3026, $r1=var3275, $r2=var592, $z0=var1105, freemarker.template.TemplateException=var84, freemarker.core._MessageUtil=var365, $r11=var441}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r9 := @this: freemarker.core.TemplateClassResolver$2;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: freemarker.core.Environment;	r10 := @parameter2: freemarker.template.Template;	$r1 = class "Lfreemarker/template/utility/ObjectConstructor;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateException newInstantiatingClassNotAllowedException(java.lang.String,freemarker.core.Environment)>(r0, r3);	$r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateException newInstantiatingClassNotAllowedException(java.lang.String,freemarker.core.Environment)>(r0, r3);	throw $r11
;block_num 2