(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1739 0)
(declare-sort var3483 0)
(declare-sort var3842 0)
(declare-sort var1303 0)
(declare-sort var3232 0)
(declare-sort var3295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3483_get/-1216255739 (var3483 Int) var3842)
(declare-fun cast-from-var3842-to-var1303 (var3842) var1303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var1739) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3295_newMethodArgMustBeNumberException/440007640 (String Int var1303) var3232)
(declare-const null-var1739 var1739)
(declare-const null-var3483 var3483)
(declare-const null-Int Int)
(declare-const var956 var1739) ; Statement: r6 := @this: freemarker.core.BuiltIn 
(assert (not (= var956 null-var1739)))
(declare-const var1652 var3483) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1652 null-var3483)))
(declare-const var3732 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3732 null-Int)))
(define-const var1329 var3842 (var3483_get/-1216255739 var1652 var3732)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var3305 var1303 (cast-from-var3842-to-var1303 var1329)) ; Statement: r2 = (freemarker.template.TemplateModel) $r1 
(define-const var573 Bool true) ; Statement: $z0 = r2 instanceof freemarker.template.TemplateNumberModel 
 ; Statement: if $z0 != 0 goto $r3 = (freemarker.template.TemplateNumberModel) r2 
(assert (not (not (= (ite var573 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var619 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var619)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var619!1 String)
(assert (= var619!1 ""))
(assert true)
(define-const var1770 String (append/672562846 var619!1 "?")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var619!2 String)
(assert (= var619!2 (str.++ var619!1 "?")))
(define-const var3407 String (key/-489369572 var956)) ; Statement: $r7 = r6.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var3911 String (append/672562846 var1770 var3407)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1770!1 String)
(assert (= var1770!1 (str.++ var1770 var3407)))
(assert true)
(define-const var2077 String (toString/-2075883882 var3911)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var100 var3232 (var3295_newMethodArgMustBeNumberException/440007640 var2077 var3732 var3305)) ; Statement: $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeNumberException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, i0, r2) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3483_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3842-to-var1303=([java.lang.Object], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3295_newMethodArgMustBeNumberException/440007640=([java.lang.String, int, freemarker.template.TemplateModel], freemarker.template.TemplateModelException)}
; {var1739=freemarker.core.BuiltIn, var956=r6, var3483=java.util.List, var1652=r0, var3732=i0, var3842=java.lang.Object, var1329=$r1, var1303=freemarker.template.TemplateModel, var3305=r2, var573=$z0, var619=$r5, var1770=$r8, var3407=$r7, var3911=$r9, var2077=$r10, var3232=freemarker.template.TemplateModelException, var3295=freemarker.core._MessageUtil, var100=$r11}
; {freemarker.core.BuiltIn=var1739, r6=var956, java.util.List=var3483, r0=var1652, i0=var3732, java.lang.Object=var3842, $r1=var1329, freemarker.template.TemplateModel=var1303, r2=var3305, $z0=var573, $r5=var619, $r8=var1770, $r7=var3407, $r9=var3911, $r10=var2077, freemarker.template.TemplateModelException=var3232, freemarker.core._MessageUtil=var3295, $r11=var100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.core.BuiltIn;	r0 := @parameter0: java.util.List;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0);	r2 = (freemarker.template.TemplateModel) $r1;	$z0 = r2 instanceof freemarker.template.TemplateNumberModel;	if $z0 != 0 goto $r3 = (freemarker.template.TemplateNumberModel) r2;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r7 = r6.<freemarker.core.BuiltIn: java.lang.String key>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeNumberException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, i0, r2);	throw $r11
;block_num 2