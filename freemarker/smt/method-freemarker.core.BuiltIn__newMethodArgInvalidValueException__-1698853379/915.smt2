(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1780 0)
(declare-sort var689 0)
(declare-sort var1758 0)
(declare-sort var2640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var1780) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2640_newMethodArgInvalidValueException/695841541 (String Int (Array Int var689)) var1758)
(declare-const null-var1780 var1780)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var689__ (Array Int var689))
(declare-const var3673 var1780) ; Statement: r1 := @this: freemarker.core.BuiltIn 
(assert (not (= var3673 null-var1780)))
(declare-const var3814 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3814 null-Int)))
(declare-const var750 (Array Int var689)) ; Statement: r5 := @parameter1: java.lang.Object[] 
(assert (not (= var750 null-__Array__Int__var689__)))
(define-const var2928 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2928)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2928!1 String)
(assert (= var2928!1 ""))
(assert true)
(define-const var2174 String (append/672562846 var2928!1 "?")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var2928!2 String)
(assert (= var2928!2 (str.++ var2928!1 "?")))
(define-const var3082 String (key/-489369572 var3673)) ; Statement: $r2 = r1.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var1374 String (append/672562846 var2174 var3082)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2174!1 String)
(assert (= var2174!1 (str.++ var2174 var3082)))
(assert true)
(define-const var3599 String (toString/-2075883882 var1374)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3275 var1758 (var2640_newMethodArgInvalidValueException/695841541 var3599 var3814 var750)) ; Statement: $r7 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgInvalidValueException(java.lang.String,int,java.lang.Object[])>($r6, i0, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2640_newMethodArgInvalidValueException/695841541=([java.lang.String, int, java.lang.Object[]], freemarker.template.TemplateModelException)}
; {var1780=freemarker.core.BuiltIn, var3673=r1, var3814=i0, var689=java.lang.Object, var750=r5, var2928=$r0, var2174=$r3, var3082=$r2, var1374=$r4, var3599=$r6, var1758=freemarker.template.TemplateModelException, var2640=freemarker.core._MessageUtil, var3275=$r7}
; {freemarker.core.BuiltIn=var1780, r1=var3673, i0=var3814, java.lang.Object=var689, r5=var750, $r0=var2928, $r3=var2174, $r2=var3082, $r4=var1374, $r6=var3599, freemarker.template.TemplateModelException=var1758, freemarker.core._MessageUtil=var2640, $r7=var3275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltIn;	i0 := @parameter0: int;	r5 := @parameter1: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r1.<freemarker.core.BuiltIn: java.lang.String key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgInvalidValueException(java.lang.String,int,java.lang.Object[])>($r6, i0, r5);	return $r7
;block_num 1