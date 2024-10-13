(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1572 0)
(declare-sort var2314 0)
(declare-sort var3909 0)
(declare-sort var2372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWS/591695419 (var1572) void)
(declare-fun rethrowLegacy/1387277909 (var2314) void)
(declare-fun pos/-2081171709 (var1572) Int)
(declare-fun src/-2081171709 (var1572) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2372-init () var2372)
(declare-fun <init>/1302353489 (var2372 String String Int) void)
(declare-const null-var1572 var1572)
(declare-const null-var2314 var2314)
(declare-const null-var3909 var3909)
(declare-const var3538 var1572) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var3538 null-var1572)))
(assert true)
;(assert (skipWS/591695419 var3538)) ; Statement: specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: void skipWS()>() 

(declare-const var3538!1 var1572)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2712 var2314) ; Statement: $r18 := @caughtexception 
(assert (not (= var2712 null-var2314)))
(assert true)
;(assert (rethrowLegacy/1387277909 var2712)) ; Statement: virtualinvoke $r18.<freemarker.core._ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression: void rethrowLegacy()>() 

(declare-const var2712!1 var2314)
(define-const var186 var3909 null-var3909) ; Statement: r19 = null 
(assert true) ; Non Conditional
(assert true)
;(assert (skipWS/591695419 var3538!1)) ; Statement: specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: void skipWS()>() 

(declare-const var3538!2 var1572)
(define-const var1245 Int (pos/-2081171709 var3538!2)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var777 String (src/-2081171709 var3538!2)) ; Statement: $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var126 Int (length/-134980193 var777)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 == $i1 goto (branch) 
(assert (not (= var1245 var126))) ; Negate: Cond: $i0 == $i1  
(define-const var3179 var2372 var2372-init) ; Statement: $r16 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var2812 String (src/-2081171709 var3538!2)) ; Statement: $r17 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var3499 Int (pos/-2081171709 var3538!2)) ; Statement: $i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var3179 "end-of-expression" var2812 var3499)) ; Statement: specialinvoke $r16.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("end-of-expression", $r17, $i2) 

(declare-const var3179!1 var2372)
(declare-const var2885 String)
(declare-const var2812!1 String)
(declare-const var3499!1 Int)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWS/591695419=([freemarker.core._ObjectBuilderSettingEvaluator], void), rethrowLegacy/1387277909=([freemarker.core._ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression], void), pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), var2372-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var1572=freemarker.core._ObjectBuilderSettingEvaluator, var3538=r0, var2314=freemarker.core._ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression, var2712=$r18, var3909=java.lang.Object, var186=r19, var1245=$i0, var777=$r2, var126=$i1, var2372=freemarker.core._ObjectBuilderSettingEvaluationException, var3179=$r16, var2812=$r17, var3499=$i2, var2885="end-of-expression"}
; {freemarker.core._ObjectBuilderSettingEvaluator=var1572, r0=var3538, freemarker.core._ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression=var2314, $r18=var2712, java.lang.Object=var3909, r19=var186, $i0=var1245, $r2=var777, $i1=var126, freemarker.core._ObjectBuilderSettingEvaluationException=var2372, $r16=var3179, $r17=var2812, $i2=var3499, "end-of-expression"=var2885}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: void skipWS()>();	$r18 := @caughtexception;	virtualinvoke $r18.<freemarker.core._ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression: void rethrowLegacy()>();	r19 = null;	specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: void skipWS()>();	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 == $i1 goto (branch);	$r16 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r17 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r16.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("end-of-expression", $r17, $i2);	throw $r16
;block_num 4