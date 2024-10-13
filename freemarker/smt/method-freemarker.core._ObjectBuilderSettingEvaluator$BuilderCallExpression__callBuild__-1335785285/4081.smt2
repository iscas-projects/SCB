(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3174 0)
(declare-sort var3621 0)
(declare-sort var1223 0)
(declare-sort var858 0)
(declare-sort var2607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3621) ClassObject)
(declare-fun var858-init () var858)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1884469037 (var858 String var2607) void)
(declare-fun cast-from-var1223-to-var2607 (var1223) var2607)
(declare-const null-var3174 var3174)
(declare-const null-var3621 var3621)
(declare-const null-var1223 var1223)
(declare-const var3478 var3174) ; Statement: r34 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression 
(assert (not (= var3478 null-var3174)))
(declare-const var1153 var3621) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1153 null-var3621)))
(assert true)
(define-const var537 ClassObject (getClass/1258963082 var1153)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var641 var1223) ; Statement: $r24 := @caughtexception 
(assert (not (= var641 null-var1223)))
(define-const var151 var858 var858-init) ; Statement: $r25 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var407 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var407)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var407!1 String)
(assert (= var407!1 ""))
(assert true)
(define-const var3697 String (append/672562846 var407!1 "The ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var407!2 String)
(assert (= var407!2 (str.++ var407!1 "The ")))
(assert true)
(define-const var1228 String (getName/-1958580599 var537)) ; Statement: $r27 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2026 String (append/672562846 var3697 var1228)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3697!1 String)
(assert (= var3697!1 (str.++ var3697 var1228)))
(assert true)
(define-const var2479 String (append/672562846 var2026 " builder class must have a public ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" builder class must have a public ") 
(declare-const var2026!1 String)
(assert (= var2026!1 (str.++ var2026 " builder class must have a public ")))
(assert true)
(define-const var270 String (append/672562846 var2479 "build")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("build") 
(declare-const var2479!1 String)
(assert (= var2479!1 (str.++ var2479 "build")))
(assert true)
(define-const var3920 String (append/672562846 var270 "() method")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() method") 
(declare-const var270!1 String)
(assert (= var270!1 (str.++ var270 "() method")))
(assert true)
(define-const var1632 String (toString/-2075883882 var3920)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1884469037 var151 var1632 (cast-from-var1223-to-var2607 var641))) ; Statement: specialinvoke $r25.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.Throwable)>($r33, $r24) 

(declare-const var151!1 var858)
(declare-const var1632!1 String)
(declare-const var641!1 var1223)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), var858-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1884469037=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.Throwable], void), cast-from-var1223-to-var2607=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var3174=freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression, var3478=r34, var3621=java.lang.Object, var1153=r0, var537=r1, var1223=java.lang.NoSuchMethodException, var641=$r24, var858=freemarker.core._ObjectBuilderSettingEvaluationException, var151=$r25, var407=$r26, var3697=$r28, var1228=$r27, var2026=$r29, var2479=$r30, var270=$r31, var3920=$r32, var1632=$r33, var2607=java.lang.Throwable}
; {freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression=var3174, r34=var3478, java.lang.Object=var3621, r0=var1153, r1=var537, java.lang.NoSuchMethodException=var1223, $r24=var641, freemarker.core._ObjectBuilderSettingEvaluationException=var858, $r25=var151, $r26=var407, $r28=var3697, $r27=var1228, $r29=var2026, $r30=var2479, $r31=var270, $r32=var3920, $r33=var1632, java.lang.Throwable=var2607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression;	r0 := @parameter0: java.lang.Object;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r24 := @caughtexception;	$r25 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r27 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" builder class must have a public ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("build");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() method");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.Throwable)>($r33, $r24);	throw $r25
;block_num 2