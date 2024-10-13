(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2856 0)
(declare-sort var2294 0)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2294-init () var2294)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3552) ClassObject)
(declare-fun cast-from-var2856-to-var3552 (var2856) var3552)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var2294 String) void)
(declare-const null-var2856 var2856)
(declare-const var3508 var2856) ; Statement: r2 := @this: freemarker.ext.beans.OverloadedMethodsModel 
(assert (not (= var3508 null-var2856)))
(define-const var185 var2294 var2294-init) ; Statement: $r0 = new freemarker.template.TemplateModelException 
(define-const var800 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var800)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var800!1 String)
(assert (= var800!1 ""))
(assert true)
(define-const var138 String (append/672562846 var800!1 "?size is unsupported for ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?size is unsupported for ") 
(declare-const var800!2 String)
(assert (= var800!2 (str.++ var800!1 "?size is unsupported for ")))
(assert true)
(define-const var2799 ClassObject (getClass/1258963082 (cast-from-var2856-to-var3552 var3508))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var160 String (getName/-1958580599 var2799)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3488 String (append/672562846 var138 var160)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var138!1 String)
(assert (= var138!1 (str.++ var138 var160)))
(assert true)
(define-const var2338 String (toString/-2075883882 var3488)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var185 var2338)) ; Statement: specialinvoke $r0.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r7) 

(declare-const var185!1 var2294)
(declare-const var2338!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2294-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2856-to-var3552=([freemarker.ext.beans.OverloadedMethodsModel], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var2856=freemarker.ext.beans.OverloadedMethodsModel, var3508=r2, var2294=freemarker.template.TemplateModelException, var185=$r0, var800=$r1, var138=$r5, var3552=java.lang.Object, var2799=$r3, var160=$r4, var3488=$r6, var2338=$r7}
; {freemarker.ext.beans.OverloadedMethodsModel=var2856, r2=var3508, freemarker.template.TemplateModelException=var2294, $r0=var185, $r1=var800, $r5=var138, java.lang.Object=var3552, $r3=var2799, $r4=var160, $r6=var3488, $r7=var2338}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.ext.beans.OverloadedMethodsModel;	$r0 = new freemarker.template.TemplateModelException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?size is unsupported for ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1