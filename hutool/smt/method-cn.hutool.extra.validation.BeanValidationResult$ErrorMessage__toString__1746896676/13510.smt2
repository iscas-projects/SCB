(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1728 0)
(declare-sort var189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyName/-975376244 (var1728) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun message/-975376244 (var1728) String)
(declare-fun value/-975376244 (var1728) var189)
(declare-fun append/-1031950772 (String var189) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1728 var1728)
(declare-const var1026 var1728) ; Statement: r1 := @this: cn.hutool.extra.validation.BeanValidationResult$ErrorMessage 
(assert (not (= var1026 null-var1728)))
(define-const var2548 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2548)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2548!1 String)
(assert (= var2548!1 ""))
(assert true)
(define-const var1108 String (append/672562846 var2548!1 "ErrorMessage{propertyName=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ErrorMessage{propertyName=\'") 
(declare-const var2548!2 String)
(assert (= var2548!2 (str.++ var2548!1 "ErrorMessage{propertyName=\u0027")))
(define-const var525 String (propertyName/-975376244 var1026)) ; Statement: $r2 = r1.<cn.hutool.extra.validation.BeanValidationResult$ErrorMessage: java.lang.String propertyName> 
(assert true)
(define-const var1785 String (append/672562846 var1108 var525)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1108!1 String)
(assert (= var1108!1 (str.++ var1108 var525)))
(assert true)
(define-const var2454 String (append/-1166366385 var1785 39)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var1785!1 String)
(assert (str.prefixof var1785 var1785!1))
(assert true)
(define-const var2186 String (append/672562846 var2454 ", message=\u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", message=\'") 
(declare-const var2454!1 String)
(assert (= var2454!1 (str.++ var2454 ", message=\u0027")))
(define-const var1227 String (message/-975376244 var1026)) ; Statement: $r6 = r1.<cn.hutool.extra.validation.BeanValidationResult$ErrorMessage: java.lang.String message> 
(assert true)
(define-const var153 String (append/672562846 var2186 var1227)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2186!1 String)
(assert (= var2186!1 (str.++ var2186 var1227)))
(assert true)
(define-const var985 String (append/-1166366385 var153 39)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var153!1 String)
(assert (str.prefixof var153 var153!1))
(assert true)
(define-const var2460 String (append/672562846 var985 ", value=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=") 
(declare-const var985!1 String)
(assert (= var985!1 (str.++ var985 ", value=")))
(define-const var255 var189 (value/-975376244 var1026)) ; Statement: $r10 = r1.<cn.hutool.extra.validation.BeanValidationResult$ErrorMessage: java.lang.Object value> 
(assert true)
(define-const var3641 String (append/-1031950772 var2460 var255)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2460!1 String)
(assert (str.prefixof var2460 var2460!1))
(assert true)
(define-const var616 String (append/-1166366385 var3641 125)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3641!1 String)
(assert (str.prefixof var3641 var3641!1))
(assert true)
(define-const var760 String (toString/-2075883882 var616)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyName/-975376244=([cn.hutool.extra.validation.BeanValidationResult$ErrorMessage], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), message/-975376244=([cn.hutool.extra.validation.BeanValidationResult$ErrorMessage], java.lang.String), value/-975376244=([cn.hutool.extra.validation.BeanValidationResult$ErrorMessage], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1728=cn.hutool.extra.validation.BeanValidationResult$ErrorMessage, var1026=r1, var2548=$r0, var1108=$r3, var525=$r2, var1785=$r4, var2454=$r5, var2186=$r7, var1227=$r6, var153=$r8, var985=$r9, var2460=$r11, var189=java.lang.Object, var255=$r10, var3641=$r12, var616=$r13, var760=$r14}
; {cn.hutool.extra.validation.BeanValidationResult$ErrorMessage=var1728, r1=var1026, $r0=var2548, $r3=var1108, $r2=var525, $r4=var1785, $r5=var2454, $r7=var2186, $r6=var1227, $r8=var153, $r9=var985, $r11=var2460, java.lang.Object=var189, $r10=var255, $r12=var3641, $r13=var616, $r14=var760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.extra.validation.BeanValidationResult$ErrorMessage;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ErrorMessage{propertyName=\'");	$r2 = r1.<cn.hutool.extra.validation.BeanValidationResult$ErrorMessage: java.lang.String propertyName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", message=\'");	$r6 = r1.<cn.hutool.extra.validation.BeanValidationResult$ErrorMessage: java.lang.String message>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=");	$r10 = r1.<cn.hutool.extra.validation.BeanValidationResult$ErrorMessage: java.lang.Object value>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1