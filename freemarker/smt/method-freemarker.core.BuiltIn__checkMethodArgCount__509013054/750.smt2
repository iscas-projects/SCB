(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var409 0)
(declare-sort var497 0)
(declare-sort var1591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var409) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1591_newArgCntError/868380693 (String Int Int Int) var497)
(declare-const null-var409 var409)
(declare-const null-Int Int)
(declare-const var1400 var409) ; Statement: r1 := @this: freemarker.core.BuiltIn 
(assert (not (= var1400 null-var409)))
(declare-const var1797 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1797 null-Int)))
(declare-const var708 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var708 null-Int)))
(declare-const var1071 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1071 null-Int)))
 ; Statement: if i0 < i1 goto $r0 = new java.lang.StringBuilder 
(assert (< var1797 var708)) ; Cond: i0 < i1 
(define-const var1251 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1251)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1251!1 String)
(assert (= var1251!1 ""))
(assert true)
(define-const var2312 String (append/672562846 var1251!1 "?")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var1251!2 String)
(assert (= var1251!2 (str.++ var1251!1 "?")))
(define-const var604 String (key/-489369572 var1400)) ; Statement: $r2 = r1.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var3969 String (append/672562846 var2312 var604)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 var604)))
(assert true)
(define-const var3483 String (toString/-2075883882 var3969)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var854 var497 (var1591_newArgCntError/868380693 var3483 var1797 var708 var1071)) ; Statement: $r6 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newArgCntError(java.lang.String,int,int,int)>($r5, i0, i1, i2) 
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1591_newArgCntError/868380693=([java.lang.String, int, int, int], freemarker.template.TemplateModelException)}
; {var409=freemarker.core.BuiltIn, var1400=r1, var1797=i0, var708=i1, var1071=i2, var1251=$r0, var2312=$r3, var604=$r2, var3969=$r4, var3483=$r5, var497=freemarker.template.TemplateModelException, var1591=freemarker.core._MessageUtil, var854=$r6}
; {freemarker.core.BuiltIn=var409, r1=var1400, i0=var1797, i1=var708, i2=var1071, $r0=var1251, $r3=var2312, $r2=var604, $r4=var3969, $r5=var3483, freemarker.template.TemplateModelException=var497, freemarker.core._MessageUtil=var1591, $r6=var854}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltIn;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	if i0 < i1 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r1.<freemarker.core.BuiltIn: java.lang.String key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newArgCntError(java.lang.String,int,int,int)>($r5, i0, i1, i2);	throw $r6
;block_num 2