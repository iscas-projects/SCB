(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1190 0)
(declare-sort var377 0)
(declare-sort var2548 0)
(declare-sort var2176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/996028399 (var1190) String)
(declare-fun getCause/-638798464 (var2548) var2548)
(declare-fun cast-from-var1190-to-var2548 (var1190) var2548)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2176) ClassObject)
(declare-fun cast-from-var2548-to-var2176 (var2548) var2176)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var2548) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun messageWithoutStackTop/1424937385 (var1190) String)
(declare-fun getFTLInstructionStackTopFew/-1875609904 (var1190) String)
(declare-fun message/1424937385 (var1190) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1190 var1190)
(declare-const null-String String)
(declare-const null-var2548 var2548)
(declare-const var162 var1190) ; Statement: r0 := @this: freemarker.template.TemplateException 
(assert (not (= var162 null-var1190)))
(assert true)
(define-const var2432 String (getDescription/996028399 var162)) ; Statement: r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert (= var2432 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var2761 var2548 (getCause/-638798464 (cast-from-var1190-to-var2548 var162))) ; Statement: $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
 ; Statement: if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]" 
(assert (not (= var2761 null-var2548))) ; Negate: Cond: $r2 == null  
(define-const var422 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var422)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var422!1 String)
(assert (= var422!1 ""))
(assert true)
(define-const var1211 String (append/672562846 var422!1 "No error description was specified for this error; low-level message: ")) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No error description was specified for this error; low-level message: ") 
(declare-const var422!2 String)
(assert (= var422!2 (str.++ var422!1 "No error description was specified for this error; low-level message: ")))
(assert true)
(define-const var3737 var2548 (getCause/-638798464 (cast-from-var1190-to-var2548 var162))) ; Statement: $r19 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert true)
(define-const var1511 ClassObject (getClass/1258963082 (cast-from-var2548-to-var2176 var3737))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var308 String (getName/-1958580599 var1511)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1151 String (append/672562846 var1211 var308)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1211!1 String)
(assert (= var1211!1 (str.++ var1211 var308)))
(assert true)
(define-const var239 String (append/672562846 var1151 ": ")) ; Statement: $r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1151!1 String)
(assert (= var1151!1 (str.++ var1151 ": ")))
(assert true)
(define-const var3339 var2548 (getCause/-638798464 (cast-from-var1190-to-var2548 var162))) ; Statement: $r24 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert true)
(define-const var2840 String (getMessage/849299655 var3339)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var789 String (append/672562846 var239 var2840)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var239!1 String)
(assert (= var239!1 (str.++ var239 var2840)))
(assert true)
(define-const var299 String (toString/-2075883882 var789)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var162!1 var1190)
(assert (not (= var162!1 null-var1190)))
(assert (= (messageWithoutStackTop/1424937385 var162!1) var299)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = $r28 
 ; Statement: goto [?= $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3051 String (getFTLInstructionStackTopFew/-1875609904 var162!1)) ; Statement: $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>() 
 ; Statement: if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert (not (= var3051 null-String))) ; Negate: Cond: $r29 == null  
(define-const var1487 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1487)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1487!1 String)
(assert (= var1487!1 ""))
(define-const var2395 String (messageWithoutStackTop/1424937385 var162!1)) ; Statement: $r5 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert true)
(define-const var603 String (append/672562846 var1487!1 var2395)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1487!2 String)
(assert (= var1487!2 (str.++ var1487!1 var2395)))
(assert true)
(define-const var468 String (append/672562846 var603 "\n\n")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n\n") 
(declare-const var603!1 String)
(assert (= var603!1 (str.++ var603 "\n\n")))
(assert true)
(define-const var3565 String (append/672562846 var468 "----")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----") 
(declare-const var468!1 String)
(assert (= var468!1 (str.++ var468 "----")))
(assert true)
(define-const var2373 String (append/672562846 var3565 "\n")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3565!1 String)
(assert (= var3565!1 (str.++ var3565 "\n")))
(assert true)
(define-const var3305 String (append/672562846 var2373 "FTL stack trace (\u0022~\u0022 means nesting-related):")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FTL stack trace (\"~\" means nesting-related):") 
(declare-const var2373!1 String)
(assert (= var2373!1 (str.++ var2373 "FTL stack trace (\u0022~\u0022 means nesting-related):")))
(assert true)
(define-const var323 String (append/672562846 var3305 "\n")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3305!1 String)
(assert (= var3305!1 (str.++ var3305 "\n")))
(assert true)
(define-const var2825 String (append/672562846 var323 var3051)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var323!1 String)
(assert (= var323!1 (str.++ var323 var3051)))
(assert true)
(define-const var589 String (append/672562846 var2825 "----")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----") 
(declare-const var2825!1 String)
(assert (= var2825!1 (str.++ var2825 "----")))
(assert true)
(define-const var2882 String (toString/-2075883882 var589)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var162!2 var1190)
(assert (not (= var162!2 null-var1190)))
(assert (= (message/1424937385 var162!2) var2882)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String message> = $r14 
(define-const var532 String (message/1424937385 var162!2)) ; Statement: $r16 = r0.<freemarker.template.TemplateException: java.lang.String message> 
(define-const var3467 String (messageWithoutStackTop/1424937385 var162!2)) ; Statement: $r15 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert true)
(define-const var1736 Int (length/-134980193 var3467)) ; Statement: $i0 = virtualinvoke $r15.<java.lang.String: int length()>() 
(assert (not (and true (and (>= 0 0) (>= (str.len var532) var1736) (>= var1736 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/996028399=([freemarker.template.TemplateException], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var1190-to-var2548=([freemarker.template.TemplateException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2548-to-var2176=([java.lang.Throwable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), messageWithoutStackTop/1424937385=([freemarker.template.TemplateException], java.lang.String), getFTLInstructionStackTopFew/-1875609904=([freemarker.template.TemplateException], java.lang.String), message/1424937385=([freemarker.template.TemplateException], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1190=freemarker.template.TemplateException, var162=r0, var2432=r1, var377=null_type, var2548=java.lang.Throwable, var2761=$r2, var422=$r18, var1211=$r22, var3737=$r19, var2176=java.lang.Object, var1511=$r20, var308=$r21, var1151=$r23, var239=$r26, var3339=$r24, var2840=$r25, var789=$r27, var299=$r28, var3051=$r29, var1487=$r4, var2395=$r5, var603=$r6, var468=$r7, var3565=$r8, var2373=$r9, var3305=$r10, var323=$r11, var2825=$r12, var589=$r13, var2882=$r14, var532=$r16, var3467=$r15, var1736=$i0, var248=$r17}
; {freemarker.template.TemplateException=var1190, r0=var162, r1=var2432, null_type=var377, java.lang.Throwable=var2548, $r2=var2761, $r18=var422, $r22=var1211, $r19=var3737, java.lang.Object=var2176, $r20=var1511, $r21=var308, $r23=var1151, $r26=var239, $r24=var3339, $r25=var2840, $r27=var789, $r28=var299, $r29=var3051, $r4=var1487, $r5=var2395, $r6=var603, $r7=var468, $r8=var3565, $r9=var2373, $r10=var3305, $r11=var323, $r12=var2825, $r13=var589, $r14=var2882, $r16=var532, $r15=var3467, $i0=var1736, $r17=var248}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: freemarker.template.TemplateException;	r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]";	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No error description was specified for this error; low-level message: ");	$r19 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r20 = virtualinvoke $r19.<java.lang.Object: java.lang.Class getClass()>();	$r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r24 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r25 = virtualinvoke $r24.<java.lang.Throwable: java.lang.String getMessage()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = $r28;	goto [?= $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>()];	$r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>();	if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n\n");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FTL stack trace (\"~\" means nesting-related):");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<freemarker.template.TemplateException: java.lang.String message> = $r14;	$r16 = r0.<freemarker.template.TemplateException: java.lang.String message>;	$r15 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$i0 = virtualinvoke $r15.<java.lang.String: int length()>();	$r17 = virtualinvoke $r16.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = $r17;	goto [?= return];	return
;block_num 6