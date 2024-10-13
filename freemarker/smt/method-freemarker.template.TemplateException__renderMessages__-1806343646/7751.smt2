(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2284 0)
(declare-sort var2873 0)
(declare-sort var2066 0)
(declare-sort var1899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/996028399 (var2284) String)
(declare-fun getCause/-638798464 (var2066) var2066)
(declare-fun cast-from-var2284-to-var2066 (var2284) var2066)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1899) ClassObject)
(declare-fun cast-from-var2066-to-var1899 (var2066) var1899)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var2066) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun messageWithoutStackTop/1424937385 (var2284) String)
(declare-fun getFTLInstructionStackTopFew/-1875609904 (var2284) String)
(declare-fun message/1424937385 (var2284) String)
(declare-const null-var2284 var2284)
(declare-const null-String String)
(declare-const null-var2066 var2066)
(declare-const var28 var2284) ; Statement: r0 := @this: freemarker.template.TemplateException 
(assert (not (= var28 null-var2284)))
(assert true)
(define-const var745 String (getDescription/996028399 var28)) ; Statement: r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert (= var745 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var1066 var2066 (getCause/-638798464 (cast-from-var2284-to-var2066 var28))) ; Statement: $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
 ; Statement: if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]" 
(assert (not (= var1066 null-var2066))) ; Negate: Cond: $r2 == null  
(define-const var2902 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2902)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2902!1 String)
(assert (= var2902!1 ""))
(assert true)
(define-const var130 String (append/672562846 var2902!1 "No error description was specified for this error; low-level message: ")) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No error description was specified for this error; low-level message: ") 
(declare-const var2902!2 String)
(assert (= var2902!2 (str.++ var2902!1 "No error description was specified for this error; low-level message: ")))
(assert true)
(define-const var2626 var2066 (getCause/-638798464 (cast-from-var2284-to-var2066 var28))) ; Statement: $r19 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert true)
(define-const var2330 ClassObject (getClass/1258963082 (cast-from-var2066-to-var1899 var2626))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3699 String (getName/-1958580599 var2330)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var382 String (append/672562846 var130 var3699)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var130!1 String)
(assert (= var130!1 (str.++ var130 var3699)))
(assert true)
(define-const var644 String (append/672562846 var382 ": ")) ; Statement: $r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var382!1 String)
(assert (= var382!1 (str.++ var382 ": ")))
(assert true)
(define-const var3844 var2066 (getCause/-638798464 (cast-from-var2284-to-var2066 var28))) ; Statement: $r24 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert true)
(define-const var2142 String (getMessage/849299655 var3844)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var405 String (append/672562846 var644 var2142)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var644!1 String)
(assert (= var644!1 (str.++ var644 var2142)))
(assert true)
(define-const var1309 String (toString/-2075883882 var405)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var28!1 var2284)
(assert (not (= var28!1 null-var2284)))
(assert (= (messageWithoutStackTop/1424937385 var28!1) var1309)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = $r28 
 ; Statement: goto [?= $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var843 String (getFTLInstructionStackTopFew/-1875609904 var28!1)) ; Statement: $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>() 
 ; Statement: if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert (= var843 null-String)) ; Cond: $r29 == null 
(define-const var3078 String (messageWithoutStackTop/1424937385 var28!1)) ; Statement: $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(declare-const var28!2 var2284)
(assert (not (= var28!2 null-var2284)))
(assert (= (message/1424937385 var28!2) var3078)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String message> = $r3 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/996028399=([freemarker.template.TemplateException], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var2284-to-var2066=([freemarker.template.TemplateException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2066-to-var1899=([java.lang.Throwable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), messageWithoutStackTop/1424937385=([freemarker.template.TemplateException], java.lang.String), getFTLInstructionStackTopFew/-1875609904=([freemarker.template.TemplateException], java.lang.String), message/1424937385=([freemarker.template.TemplateException], java.lang.String)}
; {var2284=freemarker.template.TemplateException, var28=r0, var745=r1, var2873=null_type, var2066=java.lang.Throwable, var1066=$r2, var2902=$r18, var130=$r22, var2626=$r19, var1899=java.lang.Object, var2330=$r20, var3699=$r21, var382=$r23, var644=$r26, var3844=$r24, var2142=$r25, var405=$r27, var1309=$r28, var843=$r29, var3078=$r3}
; {freemarker.template.TemplateException=var2284, r0=var28, r1=var745, null_type=var2873, java.lang.Throwable=var2066, $r2=var1066, $r18=var2902, $r22=var130, $r19=var2626, java.lang.Object=var1899, $r20=var2330, $r21=var3699, $r23=var382, $r26=var644, $r24=var3844, $r25=var2142, $r27=var405, $r28=var1309, $r29=var843, $r3=var3078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.TemplateException;	r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]";	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No error description was specified for this error; low-level message: ");	$r19 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r20 = virtualinvoke $r19.<java.lang.Object: java.lang.Class getClass()>();	$r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r24 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r25 = virtualinvoke $r24.<java.lang.Throwable: java.lang.String getMessage()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = $r28;	goto [?= $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>()];	$r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>();	if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	r0.<freemarker.template.TemplateException: java.lang.String message> = $r3;	return
;block_num 6