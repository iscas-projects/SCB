(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var1957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var426) Int)
(declare-fun src/-2081171709 (var426) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1957-init () var1957)
(declare-fun <init>/1302353489 (var1957 String String Int) void)
(declare-const null-var426 var426)
(declare-const null-Bool Bool)
(declare-const var252 var426) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var252 null-var426)))
(declare-const var1976 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1976 null-Bool)))
(define-const var2971 Int (pos/-2081171709 var252)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var311 String (src/-2081171709 var252)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var715 Int (length/-134980193 var311)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 == $i1 goto (branch) 
(assert (= var2971 var715)) ; Cond: $i0 == $i1 
 ; Statement: if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
(assert (not (not (= (ite var1976 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var971 var1957 var1957-init) ; Statement: $r10 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var2563 String (src/-2081171709 var252)) ; Statement: $r4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var3574 Int (pos/-2081171709 var252)) ; Statement: $i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var971 "{" var2563 var3574)) ; Statement: specialinvoke $r10.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("{", $r4, $i2) 

(declare-const var971!1 var1957)
(declare-const var3692 String)
(declare-const var2563!1 String)
(declare-const var3574!1 Int)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), var1957-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var426=freemarker.core._ObjectBuilderSettingEvaluator, var252=r0, var1976=z0, var2971=$i0, var311=$r1, var715=$i1, var1957=freemarker.core._ObjectBuilderSettingEvaluationException, var971=$r10, var2563=$r4, var3574=$i2, var3692="{"}
; {freemarker.core._ObjectBuilderSettingEvaluator=var426, r0=var252, z0=var1976, $i0=var2971, $r1=var311, $i1=var715, freemarker.core._ObjectBuilderSettingEvaluationException=var1957, $r10=var971, $r4=var2563, $i2=var3574, "{"=var3692}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 == $i1 goto (branch);	if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	$r10 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r10.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("{", $r4, $i2);	throw $r10
;block_num 3