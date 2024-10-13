(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort var1129 0)
(declare-sort var2018 0)
(declare-sort var3825 0)
(declare-sort var1841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1129) ClassObject)
(declare-fun var3825-init () var3825)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1884469037 (var3825 String var1841) void)
(declare-fun cast-from-var2018-to-var1841 (var2018) var1841)
(declare-const null-var1955 var1955)
(declare-const null-var1129 var1129)
(declare-const null-var2018 var2018)
(declare-const var200 var1955) ; Statement: r34 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression 
(assert (not (= var200 null-var1955)))
(declare-const var602 var1129) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var602 null-var1129)))
(assert true)
(define-const var597 ClassObject (getClass/1258963082 var602)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2993 var2018) ; Statement: $r16 := @caughtexception 
(assert (not (= var2993 null-var2018)))
(define-const var1134 var3825 var3825-init) ; Statement: $r17 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var2106 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2106)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2106!1 String)
(assert (= var2106!1 ""))
(assert true)
(define-const var672 String (append/672562846 var2106!1 "Failed to get the build() method of the ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get the build() method of the ") 
(declare-const var2106!2 String)
(assert (= var2106!2 (str.++ var2106!1 "Failed to get the build() method of the ")))
(assert true)
(define-const var3515 String (getName/-1958580599 var597)) ; Statement: $r19 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2321 String (append/672562846 var672 var3515)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var672!1 String)
(assert (= var672!1 (str.++ var672 var3515)))
(assert true)
(define-const var2076 String (append/672562846 var2321 " builder class")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" builder class") 
(declare-const var2321!1 String)
(assert (= var2321!1 (str.++ var2321 " builder class")))
(assert true)
(define-const var2620 String (toString/-2075883882 var2076)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1884469037 var1134 var2620 (cast-from-var2018-to-var1841 var2993))) ; Statement: specialinvoke $r17.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r16) 

(declare-const var1134!1 var3825)
(declare-const var2620!1 String)
(declare-const var2993!1 var2018)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), var3825-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1884469037=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.Throwable], void), cast-from-var2018-to-var1841=([java.lang.Exception], java.lang.Throwable)}
; {var1955=freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression, var200=r34, var1129=java.lang.Object, var602=r0, var597=r1, var2018=java.lang.Exception, var2993=$r16, var3825=freemarker.core._ObjectBuilderSettingEvaluationException, var1134=$r17, var2106=$r18, var672=$r20, var3515=$r19, var2321=$r21, var2076=$r22, var2620=$r23, var1841=java.lang.Throwable}
; {freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression=var1955, r34=var200, java.lang.Object=var1129, r0=var602, r1=var597, java.lang.Exception=var2018, $r16=var2993, freemarker.core._ObjectBuilderSettingEvaluationException=var3825, $r17=var1134, $r18=var2106, $r20=var672, $r19=var3515, $r21=var2321, $r22=var2076, $r23=var2620, java.lang.Throwable=var1841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression;	r0 := @parameter0: java.lang.Object;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r16 := @caughtexception;	$r17 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get the build() method of the ");	$r19 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" builder class");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r16);	throw $r17
;block_num 2