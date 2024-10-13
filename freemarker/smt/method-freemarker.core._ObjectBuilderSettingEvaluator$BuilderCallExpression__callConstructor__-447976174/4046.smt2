(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1774 0)
(declare-sort var314 0)
(declare-sort var1229 0)
(declare-sort var3163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasNoParameters/-879456542 (var1774) Bool)
(declare-fun var1229-init () var1229)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1884469037 (var1229 String var3163) void)
(declare-fun cast-from-var314-to-var3163 (var314) var3163)
(declare-const null-var1774 var1774)
(declare-const null-ClassObject ClassObject)
(declare-const null-var314 var314)
(declare-const var787 var1774) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression 
(assert (not (= var787 null-var1774)))
(declare-const var179 ClassObject) ; Statement: r6 := @parameter0: java.lang.Class 
(assert (not (= var179 null-ClassObject)))
(assert true)
(define-const var1242 Bool (hasNoParameters/-879456542 var787)) ; Statement: $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression: boolean hasNoParameters()>() 
 ; Statement: if $z0 == 0 goto $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression: freemarker.core._ObjectBuilderSettingEvaluator this$0> 
(assert (not (= (ite var1242 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3967 var314) ; Statement: $r26 := @caughtexception 
(assert (not (= var3967 null-var314)))
(define-const var3366 var1229 var1229-init) ; Statement: $r27 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var870 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var870)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var870!1 String)
(assert (= var870!1 ""))
(assert true)
(define-const var912 String (append/672562846 var870!1 "Failed to call ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to call ") 
(declare-const var870!2 String)
(assert (= var870!2 (str.++ var870!1 "Failed to call ")))
(assert true)
(define-const var2027 String (getName/-1958580599 var179)) ; Statement: $r29 = virtualinvoke r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1328 String (append/672562846 var912 var2027)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var912!1 String)
(assert (= var912!1 (str.++ var912 var2027)))
(assert true)
(define-const var3687 String (append/672562846 var1328 " 0-argument constructor")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" 0-argument constructor") 
(declare-const var1328!1 String)
(assert (= var1328!1 (str.++ var1328 " 0-argument constructor")))
(assert true)
(define-const var2846 String (toString/-2075883882 var3687)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1884469037 var3366 var2846 (cast-from-var314-to-var3163 var3967))) ; Statement: specialinvoke $r27.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.Throwable)>($r33, $r26) 

(declare-const var3366!1 var1229)
(declare-const var2846!1 String)
(declare-const var3967!1 var314)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {hasNoParameters/-879456542=([freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression], boolean), var1229-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1884469037=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.Throwable], void), cast-from-var314-to-var3163=([java.lang.Exception], java.lang.Throwable)}
; {var1774=freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression, var787=r0, var179=r6, var1242=$z0, var314=java.lang.Exception, var3967=$r26, var1229=freemarker.core._ObjectBuilderSettingEvaluationException, var3366=$r27, var870=$r28, var912=$r30, var2027=$r29, var1328=$r31, var3687=$r32, var2846=$r33, var3163=java.lang.Throwable}
; {freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression=var1774, r0=var787, r6=var179, $z0=var1242, java.lang.Exception=var314, $r26=var3967, freemarker.core._ObjectBuilderSettingEvaluationException=var1229, $r27=var3366, $r28=var870, $r30=var912, $r29=var2027, $r31=var1328, $r32=var3687, $r33=var2846, java.lang.Throwable=var3163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression;	r6 := @parameter0: java.lang.Class;	$z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression: boolean hasNoParameters()>();	if $z0 == 0 goto $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression: freemarker.core._ObjectBuilderSettingEvaluator this$0>;	$r26 := @caughtexception;	$r27 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to call ");	$r29 = virtualinvoke r6.<java.lang.Class: java.lang.String getName()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" 0-argument constructor");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.Throwable)>($r33, $r26);	throw $r27
;block_num 2