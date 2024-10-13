(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3528 0)
(declare-sort var760 0)
(declare-sort var3763 0)
(declare-sort var2298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun object/169454009 (var3763) var760)
(declare-fun cast-from-var3528-to-var3763 (var3528) var3763)
(declare-fun var2298-init () var2298)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var760) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var2298 String) void)
(declare-const null-var3528 var3528)
(declare-const null-Int Int)
(declare-const var3824 var3528) ; Statement: r0 := @this: freemarker.ext.beans.CollectionModel 
(assert (not (= var3824 null-var3528)))
(declare-const var70 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var70 null-Int)))
(define-const var3353 var760 (object/169454009 (cast-from-var3528-to-var3763 var3824))) ; Statement: $r1 = r0.<freemarker.ext.beans.CollectionModel: java.lang.Object object> 
(define-const var1459 Bool false) ; Statement: $z0 = $r1 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto $r2 = new freemarker.template.TemplateModelException 
(assert (= (ite var1459 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3746 var2298 var2298-init) ; Statement: $r2 = new freemarker.template.TemplateModelException 
(define-const var1838 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1838)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1838!1 String)
(assert (= var1838!1 ""))
(assert true)
(define-const var1431 String (append/672562846 var1838!1 "Underlying collection is not a list, it\u0027s ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Underlying collection is not a list, it\'s ") 
(declare-const var1838!2 String)
(assert (= var1838!2 (str.++ var1838!1 "Underlying collection is not a list, it\u0027s ")))
(define-const var789 var760 (object/169454009 (cast-from-var3528-to-var3763 var3824))) ; Statement: $r4 = r0.<freemarker.ext.beans.CollectionModel: java.lang.Object object> 
(assert true)
(define-const var2804 ClassObject (getClass/1258963082 var789)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2728 String (getName/-1958580599 var2804)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3873 String (append/672562846 var1431 var2728)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1431!1 String)
(assert (= var1431!1 (str.++ var1431 var2728)))
(assert true)
(define-const var1710 String (toString/-2075883882 var3873)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var3746 var1710)) ; Statement: specialinvoke $r2.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r9) 

(declare-const var3746!1 var2298)
(declare-const var1710!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {object/169454009=([freemarker.ext.beans.BeanModel], java.lang.Object), cast-from-var3528-to-var3763=([freemarker.ext.beans.CollectionModel], freemarker.ext.beans.BeanModel), var2298-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var3528=freemarker.ext.beans.CollectionModel, var3824=r0, var70=i0, var760=java.lang.Object, var3763=freemarker.ext.beans.BeanModel, var3353=$r1, var1459=$z0, var2298=freemarker.template.TemplateModelException, var3746=$r2, var1838=$r3, var1431=$r7, var789=$r4, var2804=$r5, var2728=$r6, var3873=$r8, var1710=$r9}
; {freemarker.ext.beans.CollectionModel=var3528, r0=var3824, i0=var70, java.lang.Object=var760, freemarker.ext.beans.BeanModel=var3763, $r1=var3353, $z0=var1459, freemarker.template.TemplateModelException=var2298, $r2=var3746, $r3=var1838, $r7=var1431, $r4=var789, $r5=var2804, $r6=var2728, $r8=var3873, $r9=var1710}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.CollectionModel;	i0 := @parameter0: int;	$r1 = r0.<freemarker.ext.beans.CollectionModel: java.lang.Object object>;	$z0 = $r1 instanceof java.util.List;	if $z0 == 0 goto $r2 = new freemarker.template.TemplateModelException;	$r2 = new freemarker.template.TemplateModelException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Underlying collection is not a list, it\'s ");	$r4 = r0.<freemarker.ext.beans.CollectionModel: java.lang.Object object>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2