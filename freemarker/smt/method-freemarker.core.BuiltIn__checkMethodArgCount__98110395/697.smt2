(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1831 0)
(declare-sort var992 0)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var1831) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2466_newArgCntError/978719506 (String Int Int) var992)
(declare-const null-var1831 var1831)
(declare-const null-Int Int)
(declare-const var13 var1831) ; Statement: r1 := @this: freemarker.core.BuiltIn 
(assert (not (= var13 null-var1831)))
(declare-const var2792 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2792 null-Int)))
(declare-const var1419 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1419 null-Int)))
 ; Statement: if i0 == i1 goto return 
(assert (not (= var2792 var1419))) ; Negate: Cond: i0 == i1  
(define-const var481 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var481)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var481!1 String)
(assert (= var481!1 ""))
(assert true)
(define-const var3862 String (append/672562846 var481!1 "?")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var481!2 String)
(assert (= var481!2 (str.++ var481!1 "?")))
(define-const var3878 String (key/-489369572 var13)) ; Statement: $r2 = r1.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var2869 String (append/672562846 var3862 var3878)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3862!1 String)
(assert (= var3862!1 (str.++ var3862 var3878)))
(assert true)
(define-const var656 String (toString/-2075883882 var2869)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3869 var992 (var2466_newArgCntError/978719506 var656 var2792 var1419)) ; Statement: $r6 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newArgCntError(java.lang.String,int,int)>($r5, i0, i1) 
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2466_newArgCntError/978719506=([java.lang.String, int, int], freemarker.template.TemplateModelException)}
; {var1831=freemarker.core.BuiltIn, var13=r1, var2792=i0, var1419=i1, var481=$r0, var3862=$r3, var3878=$r2, var2869=$r4, var656=$r5, var992=freemarker.template.TemplateModelException, var2466=freemarker.core._MessageUtil, var3869=$r6}
; {freemarker.core.BuiltIn=var1831, r1=var13, i0=var2792, i1=var1419, $r0=var481, $r3=var3862, $r2=var3878, $r4=var2869, $r5=var656, freemarker.template.TemplateModelException=var992, freemarker.core._MessageUtil=var2466, $r6=var3869}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltIn;	i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 == i1 goto return;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r1.<freemarker.core.BuiltIn: java.lang.String key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newArgCntError(java.lang.String,int,int)>($r5, i0, i1);	throw $r6
;block_num 2