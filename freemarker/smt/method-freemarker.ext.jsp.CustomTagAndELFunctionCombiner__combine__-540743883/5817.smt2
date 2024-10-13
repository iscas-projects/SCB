(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1013 0)
(declare-sort var2334 0)
(declare-sort var1551 0)
(declare-sort var2149 0)
(declare-sort var505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1551-init () var1551)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2149_getShortClassNameOfObject/-1665341662 (var505) String)
(declare-fun cast-from-var1013-to-var505 (var1013) var505)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1326397480 (var1551 String) void)
(declare-const null-var1013 var1013)
(declare-const null-var2334 var2334)
(declare-const var2998 var1013) ; Statement: r0 := @parameter0: freemarker.template.TemplateModel 
(assert (not (= var2998 null-var1013)))
(declare-const var1734 var2334) ; Statement: r7 := @parameter1: freemarker.template.TemplateMethodModelEx 
(assert (not (= var1734 null-var2334)))
(define-const var44 Bool true) ; Statement: $z0 = r0 instanceof freemarker.template.TemplateDirectiveModel 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof freemarker.template.TemplateTransformModel 
(assert (= (ite var44 1 0) 0)) ; Cond: $z0 == 0 
(define-const var475 Bool true) ; Statement: $z1 = r0 instanceof freemarker.template.TemplateTransformModel 
 ; Statement: if $z1 == 0 goto $r1 = new freemarker.core.BugException 
(assert (= (ite var475 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2535 var1551 var1551-init) ; Statement: $r1 = new freemarker.core.BugException 
(define-const var3811 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3811)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3811!1 String)
(assert (= var3811!1 ""))
(assert true)
(define-const var3775 String (append/672562846 var3811!1 "Unexpected custom JSP tag class: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected custom JSP tag class: ") 
(declare-const var3811!2 String)
(assert (= var3811!2 (str.++ var3811!1 "Unexpected custom JSP tag class: ")))
(define-const var407 String (var2149_getShortClassNameOfObject/-1665341662 (cast-from-var1013-to-var505 var2998))) ; Statement: $r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0) 
(assert true)
(define-const var2997 String (append/672562846 var3775 var407)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3775!1 String)
(assert (= var3775!1 (str.++ var3775 var407)))
(assert true)
(define-const var3261 String (toString/-2075883882 var2997)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1326397480 var2535 var3261)) ; Statement: specialinvoke $r1.<freemarker.core.BugException: void <init>(java.lang.String)>($r6) 

(declare-const var2535!1 var1551)
(declare-const var3261!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1551-init=([], freemarker.core.BugException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2149_getShortClassNameOfObject/-1665341662=([java.lang.Object], java.lang.String), cast-from-var1013-to-var505=([freemarker.template.TemplateModel], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1326397480=([freemarker.core.BugException, java.lang.String], void)}
; {var1013=freemarker.template.TemplateModel, var2998=r0, var2334=freemarker.template.TemplateMethodModelEx, var1734=r7, var44=$z0, var475=$z1, var1551=freemarker.core.BugException, var2535=$r1, var3811=$r2, var3775=$r4, var2149=freemarker.template.utility.ClassUtil, var505=java.lang.Object, var407=$r3, var2997=$r5, var3261=$r6}
; {freemarker.template.TemplateModel=var1013, r0=var2998, freemarker.template.TemplateMethodModelEx=var2334, r7=var1734, $z0=var44, $z1=var475, freemarker.core.BugException=var1551, $r1=var2535, $r2=var3811, $r4=var3775, freemarker.template.utility.ClassUtil=var2149, java.lang.Object=var505, $r3=var407, $r5=var2997, $r6=var3261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: freemarker.template.TemplateModel;	r7 := @parameter1: freemarker.template.TemplateMethodModelEx;	$z0 = r0 instanceof freemarker.template.TemplateDirectiveModel;	if $z0 == 0 goto $z1 = r0 instanceof freemarker.template.TemplateTransformModel;	$z1 = r0 instanceof freemarker.template.TemplateTransformModel;	if $z1 == 0 goto $r1 = new freemarker.core.BugException;	$r1 = new freemarker.core.BugException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected custom JSP tag class: ");	$r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<freemarker.core.BugException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3