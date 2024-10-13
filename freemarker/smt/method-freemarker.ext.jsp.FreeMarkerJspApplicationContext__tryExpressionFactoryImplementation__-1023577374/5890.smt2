(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3971 0)
(declare-sort var2981 0)
(declare-sort var2307 0)
(declare-sort var217 0)
(declare-sort var77 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun error/-784347014 (var2307 String var77) void)
(declare-fun cast-from-var2981-to-var77 (var2981) var77)
(declare-const null-String String)
(declare-const null-var2981 var2981)
(declare-const var217-LOG var2307)
(declare-const var1059 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1059 null-String)))
(define-const var390 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var390)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var390!1 String)
(assert (= var390!1 ""))
(assert true)
(define-const var608 String (append/672562846 var390!1 var1059)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var390!2 String)
(assert (= var390!2 (str.++ var390!1 var1059)))
(assert true)
(define-const var3319 String (append/672562846 var608 ".el.ExpressionFactoryImpl")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".el.ExpressionFactoryImpl") 
(declare-const var608!1 String)
(assert (= var608!1 (str.++ var608 ".el.ExpressionFactoryImpl")))
(assert true)
(define-const var2418 String (toString/-2075883882 var3319)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1756 var2981) ; Statement: $r26 := @caughtexception 
(assert (not (= var1756 null-var2981)))
(define-const var80 var2307 var217-LOG) ; Statement: $r28 = <freemarker.ext.jsp.FreeMarkerJspApplicationContext: freemarker.log.Logger LOG> 
(define-const var3080 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3080)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3080!1 String)
(assert (= var3080!1 ""))
(assert true)
(define-const var3267 String (append/672562846 var3080!1 "Failed to instantiate ")) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ") 
(declare-const var3080!2 String)
(assert (= var3080!2 (str.++ var3080!1 "Failed to instantiate ")))
(assert true)
(define-const var613 String (append/672562846 var3267 var2418)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3267!1 String)
(assert (= var3267!1 (str.++ var3267 var2418)))
(assert true)
(define-const var2798 String (toString/-2075883882 var613)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (error/-784347014 var80 var2798 (cast-from-var2981-to-var77 var1756))) ; Statement: virtualinvoke $r28.<freemarker.log.Logger: void error(java.lang.String,java.lang.Throwable)>($r31, $r26) 

(declare-const var80!1 var2307)
(declare-const var2798!1 String)
(declare-const var1756!1 var2981)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), error/-784347014=([freemarker.log.Logger, java.lang.String, java.lang.Throwable], void), cast-from-var2981-to-var77=([java.lang.Exception], java.lang.Throwable)}
; {var1059=r1, var3971=null_type, var390=$r0, var608=$r2, var3319=$r3, var2418=r4, var2981=java.lang.Exception, var1756=$r26, var2307=freemarker.log.Logger, var217=freemarker.ext.jsp.FreeMarkerJspApplicationContext, var80=$r28, var3080=$r27, var3267=$r29, var613=$r30, var2798=$r31, var77=java.lang.Throwable}
; {r1=var1059, null_type=var3971, $r0=var390, $r2=var608, $r3=var3319, r4=var2418, java.lang.Exception=var2981, $r26=var1756, freemarker.log.Logger=var2307, freemarker.ext.jsp.FreeMarkerJspApplicationContext=var217, $r28=var80, $r27=var3080, $r29=var3267, $r30=var613, $r31=var2798, java.lang.Throwable=var77}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".el.ExpressionFactoryImpl");	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r26 := @caughtexception;	$r28 = <freemarker.ext.jsp.FreeMarkerJspApplicationContext: freemarker.log.Logger LOG>;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r28.<freemarker.log.Logger: void error(java.lang.String,java.lang.Throwable)>($r31, $r26);	return null
;block_num 3