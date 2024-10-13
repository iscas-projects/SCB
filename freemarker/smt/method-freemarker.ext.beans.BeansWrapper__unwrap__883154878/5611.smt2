(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var472 0)
(declare-sort var1651 0)
(declare-sort var2869 0)
(declare-sort var3771 0)
(declare-sort var3512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tryUnwrapTo/-999253202 (var472 var1651 ClassObject) var2869)
(declare-fun var3512-init () var3512)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2869) ClassObject)
(declare-fun cast-from-var1651-to-var2869 (var1651) var2869)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var3512 String) void)
(declare-const null-var472 var472)
(declare-const null-var1651 var1651)
(declare-const null-ClassObject ClassObject)
(declare-const var3771-CANT_UNWRAP_TO_TARGET_CLASS var2869)
(declare-const var1477 var472) ; Statement: r0 := @this: freemarker.ext.beans.BeansWrapper 
(assert (not (= var1477 null-var472)))
(declare-const var2743 var1651) ; Statement: r1 := @parameter0: freemarker.template.TemplateModel 
(assert (not (= var2743 null-var1651)))
(declare-const var2855 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2855 null-ClassObject)))
(assert true)
(define-const var957 var2869 (tryUnwrapTo/-999253202 var1477 var2743 var2855)) ; Statement: r3 = virtualinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.Object tryUnwrapTo(freemarker.template.TemplateModel,java.lang.Class)>(r1, r2) 
(define-const var1011 var2869 var3771-CANT_UNWRAP_TO_TARGET_CLASS) ; Statement: $r4 = <freemarker.template.ObjectWrapperAndUnwrapper: java.lang.Object CANT_UNWRAP_TO_TARGET_CLASS> 
 ; Statement: if r3 != $r4 goto return r3 
(assert (not (not (= var957 var1011)))) ; Negate: Cond: r3 != $r4  
(define-const var3681 var3512 var3512-init) ; Statement: $r5 = new freemarker.template.TemplateModelException 
(define-const var1754 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1754)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1754!1 String)
(assert (= var1754!1 ""))
(assert true)
(define-const var1504 String (append/672562846 var1754!1 "Can not unwrap model of type ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can not unwrap model of type ") 
(declare-const var1754!2 String)
(assert (= var1754!2 (str.++ var1754!1 "Can not unwrap model of type ")))
(assert true)
(define-const var1317 ClassObject (getClass/1258963082 (cast-from-var1651-to-var2869 var2743))) ; Statement: $r7 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1 String (getName/-1958580599 var1317)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2393 String (append/672562846 var1504 var1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1504!1 String)
(assert (= var1504!1 (str.++ var1504 var1)))
(assert true)
(define-const var524 String (append/672562846 var2393 " to type ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to type ") 
(declare-const var2393!1 String)
(assert (= var2393!1 (str.++ var2393 " to type ")))
(assert true)
(define-const var2586 String (getName/-1958580599 var2855)) ; Statement: $r11 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1853 String (append/672562846 var524 var2586)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var524!1 String)
(assert (= var524!1 (str.++ var524 var2586)))
(assert true)
(define-const var1369 String (toString/-2075883882 var1853)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var3681 var1369)) ; Statement: specialinvoke $r5.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r14) 

(declare-const var3681!1 var3512)
(declare-const var1369!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {tryUnwrapTo/-999253202=([freemarker.ext.beans.BeansWrapper, freemarker.template.TemplateModel, java.lang.Class], java.lang.Object), var3512-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1651-to-var2869=([freemarker.template.TemplateModel], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var472=freemarker.ext.beans.BeansWrapper, var1477=r0, var1651=freemarker.template.TemplateModel, var2743=r1, var2855=r2, var2869=java.lang.Object, var957=r3, var3771=freemarker.template.ObjectWrapperAndUnwrapper, var1011=$r4, var3512=freemarker.template.TemplateModelException, var3681=$r5, var1754=$r6, var1504=$r9, var1317=$r7, var1=$r8, var2393=$r10, var524=$r12, var2586=$r11, var1853=$r13, var1369=$r14}
; {freemarker.ext.beans.BeansWrapper=var472, r0=var1477, freemarker.template.TemplateModel=var1651, r1=var2743, r2=var2855, java.lang.Object=var2869, r3=var957, freemarker.template.ObjectWrapperAndUnwrapper=var3771, $r4=var1011, freemarker.template.TemplateModelException=var3512, $r5=var3681, $r6=var1754, $r9=var1504, $r7=var1317, $r8=var1, $r10=var2393, $r12=var524, $r11=var2586, $r13=var1853, $r14=var1369}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.BeansWrapper;	r1 := @parameter0: freemarker.template.TemplateModel;	r2 := @parameter1: java.lang.Class;	r3 = virtualinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.Object tryUnwrapTo(freemarker.template.TemplateModel,java.lang.Class)>(r1, r2);	$r4 = <freemarker.template.ObjectWrapperAndUnwrapper: java.lang.Object CANT_UNWRAP_TO_TARGET_CLASS>;	if r3 != $r4 goto return r3;	$r5 = new freemarker.template.TemplateModelException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can not unwrap model of type ");	$r7 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to type ");	$r11 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r14);	throw $r5
;block_num 2