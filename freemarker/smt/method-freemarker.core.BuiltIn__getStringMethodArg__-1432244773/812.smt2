(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2805 0)
(declare-sort var1718 0)
(declare-sort var2998 0)
(declare-sort var3483 0)
(declare-sort var706 0)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1718_get/-1216255739 (var1718 Int) var2998)
(declare-fun cast-from-var2998-to-var3483 (var2998) var3483)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var2805) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1356_newMethodArgMustBeStringException/-2035405152 (String Int var3483) var706)
(declare-const null-var2805 var2805)
(declare-const null-var1718 var1718)
(declare-const null-Int Int)
(declare-const var3188 var2805) ; Statement: r6 := @this: freemarker.core.BuiltIn 
(assert (not (= var3188 null-var2805)))
(declare-const var3066 var1718) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3066 null-var1718)))
(declare-const var619 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var619 null-Int)))
(define-const var2065 var2998 (var1718_get/-1216255739 var3066 var619)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var2403 var3483 (cast-from-var2998-to-var3483 var2065)) ; Statement: r2 = (freemarker.template.TemplateModel) $r1 
(define-const var2389 Bool true) ; Statement: $z0 = r2 instanceof freemarker.template.TemplateScalarModel 
 ; Statement: if $z0 != 0 goto $r3 = (freemarker.template.TemplateScalarModel) r2 
(assert (not (not (= (ite var2389 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2711 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2711)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2711!1 String)
(assert (= var2711!1 ""))
(assert true)
(define-const var66 String (append/672562846 var2711!1 "?")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var2711!2 String)
(assert (= var2711!2 (str.++ var2711!1 "?")))
(define-const var2788 String (key/-489369572 var3188)) ; Statement: $r7 = r6.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var1290 String (append/672562846 var66 var2788)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var66!1 String)
(assert (= var66!1 (str.++ var66 var2788)))
(assert true)
(define-const var3350 String (toString/-2075883882 var1290)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2132 var706 (var1356_newMethodArgMustBeStringException/-2035405152 var3350 var619 var2403)) ; Statement: $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeStringException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, i0, r2) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1718_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2998-to-var3483=([java.lang.Object], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1356_newMethodArgMustBeStringException/-2035405152=([java.lang.String, int, freemarker.template.TemplateModel], freemarker.template.TemplateModelException)}
; {var2805=freemarker.core.BuiltIn, var3188=r6, var1718=java.util.List, var3066=r0, var619=i0, var2998=java.lang.Object, var2065=$r1, var3483=freemarker.template.TemplateModel, var2403=r2, var2389=$z0, var2711=$r5, var66=$r8, var2788=$r7, var1290=$r9, var3350=$r10, var706=freemarker.template.TemplateModelException, var1356=freemarker.core._MessageUtil, var2132=$r11}
; {freemarker.core.BuiltIn=var2805, r6=var3188, java.util.List=var1718, r0=var3066, i0=var619, java.lang.Object=var2998, $r1=var2065, freemarker.template.TemplateModel=var3483, r2=var2403, $z0=var2389, $r5=var2711, $r8=var66, $r7=var2788, $r9=var1290, $r10=var3350, freemarker.template.TemplateModelException=var706, freemarker.core._MessageUtil=var1356, $r11=var2132}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.core.BuiltIn;	r0 := @parameter0: java.util.List;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0);	r2 = (freemarker.template.TemplateModel) $r1;	$z0 = r2 instanceof freemarker.template.TemplateScalarModel;	if $z0 != 0 goto $r3 = (freemarker.template.TemplateScalarModel) r2;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r7 = r6.<freemarker.core.BuiltIn: java.lang.String key>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeStringException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, i0, r2);	throw $r11
;block_num 2