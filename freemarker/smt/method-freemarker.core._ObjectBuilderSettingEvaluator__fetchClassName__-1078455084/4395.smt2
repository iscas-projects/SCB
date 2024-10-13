(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2714 0)
(declare-sort var3178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var2714) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fetchSimpleName/103255702 (var2714 Bool) String)
(declare-const null-var2714 var2714)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var236 var2714) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var236 null-var2714)))
(declare-const var3765 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3765 null-Bool)))
(define-const var971 Int (pos/-2081171709 var236)) ; Statement: i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2541 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2541)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2541!1 String)
(assert (= var2541!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var1322 String (fetchSimpleName/103255702 var236 (ite (= 1 1) true false))) ; Statement: $r4 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String fetchSimpleName(boolean)>(1) 
 ; Statement: if $r4 != null goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(assert (not (not (= var1322 null-String)))) ; Negate: Cond: $r4 != null  
 ; Statement: if z1 != 0 goto r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = i0 
(assert (not (= (ite var3765 1 0) 0))) ; Cond: z1 != 0 
(declare-const var236!1 var2714)
(assert (not (= var236!1 null-var2714)))
(assert (= (pos/-2081171709 var236!1) var971)) ; Statement: r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = i0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fetchSimpleName/103255702=([freemarker.core._ObjectBuilderSettingEvaluator, boolean], java.lang.String)}
; {var2714=freemarker.core._ObjectBuilderSettingEvaluator, var236=r0, var3765=z1, var971=i0, var2541=$r8, var1322=$r4, var3178=null_type}
; {freemarker.core._ObjectBuilderSettingEvaluator=var2714, r0=var236, z1=var3765, i0=var971, $r8=var2541, $r4=var1322, null_type=var3178}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z1 := @parameter0: boolean;	i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r4 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String fetchSimpleName(boolean)>(1);	if $r4 != null goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if z1 != 0 goto r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = i0;	r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = i0;	return null
;block_num 4