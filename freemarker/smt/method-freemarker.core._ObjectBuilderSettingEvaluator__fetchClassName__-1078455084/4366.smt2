(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1444 0)
(declare-sort var1616 0)
(declare-sort var486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var1444) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fetchSimpleName/103255702 (var1444 Bool) String)
(declare-fun var486-init () var486)
(declare-fun src/-2081171709 (var1444) String)
(declare-fun <init>/1302353489 (var486 String String Int) void)
(declare-const null-var1444 var1444)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1993 var1444) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var1993 null-var1444)))
(declare-const var2062 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var2062 null-Bool)))
(define-const var3889 Int (pos/-2081171709 var1993)) ; Statement: i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2741 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2741)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2741!1 String)
(assert (= var2741!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var3023 String (fetchSimpleName/103255702 var1993 (ite (= 1 1) true false))) ; Statement: $r4 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String fetchSimpleName(boolean)>(1) 
 ; Statement: if $r4 != null goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(assert (not (not (= var3023 null-String)))) ; Negate: Cond: $r4 != null  
 ; Statement: if z1 != 0 goto r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = i0 
(assert (not (not (= (ite var2062 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var3747 var486 var486-init) ; Statement: $r9 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var2142 String (src/-2081171709 var1993)) ; Statement: $r7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var1391 Int (pos/-2081171709 var1993)) ; Statement: $i7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var3747 "name" var2142 var1391)) ; Statement: specialinvoke $r9.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("name", $r7, $i7) 

(declare-const var3747!1 var486)
(declare-const var1744 String)
(declare-const var2142!1 String)
(declare-const var1391!1 Int)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fetchSimpleName/103255702=([freemarker.core._ObjectBuilderSettingEvaluator, boolean], java.lang.String), var486-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var1444=freemarker.core._ObjectBuilderSettingEvaluator, var1993=r0, var2062=z1, var3889=i0, var2741=$r8, var3023=$r4, var1616=null_type, var486=freemarker.core._ObjectBuilderSettingEvaluationException, var3747=$r9, var2142=$r7, var1391=$i7, var1744="name"}
; {freemarker.core._ObjectBuilderSettingEvaluator=var1444, r0=var1993, z1=var2062, i0=var3889, $r8=var2741, $r4=var3023, null_type=var1616, freemarker.core._ObjectBuilderSettingEvaluationException=var486, $r9=var3747, $r7=var2142, $i7=var1391, "name"=var1744}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z1 := @parameter0: boolean;	i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r4 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String fetchSimpleName(boolean)>(1);	if $r4 != null goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if z1 != 0 goto r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = i0;	$r9 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r9.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("name", $r7, $i7);	throw $r9
;block_num 4