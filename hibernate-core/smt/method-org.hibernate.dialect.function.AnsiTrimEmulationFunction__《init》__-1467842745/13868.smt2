(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3814 0)
(declare-sort var10 0)
(declare-sort var2405 0)
(declare-sort var628 0)
(declare-sort var3528 0)
(declare-sort var1036 0)
(declare-sort var798 0)
(declare-sort var2128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/370385536 (var2405) void)
(declare-fun cast-from-var3814-to-var2405 (var3814) var2405)
(declare-fun var628-init () var628)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun <init>/1691157698 (var628 var798 String) void)
(declare-fun cast-from-var3528-to-var798 (var3528) var798)
(declare-fun cast-from-var628-to-var2128 (var628) var2128)
(declare-fun leadingSpaceTrim/2011828609 (var3814) var2128)
(declare-fun trailingSpaceTrim/2011828609 (var3814) var2128)
(declare-fun bothSpaceTrim/2011828609 (var3814) var2128)
(declare-fun bothSpaceTrimFrom/2011828609 (var3814) var2128)
(declare-fun leadingTrim/2011828609 (var3814) var2128)
(declare-fun trailingTrim/2011828609 (var3814) var2128)
(declare-fun bothTrim/2011828609 (var3814) var2128)
(declare-const null-var3814 var3814)
(declare-const null-String String)
(declare-const var1036-STRING var3528)
(declare-const var15 var3814) ; Statement: r0 := @this: org.hibernate.dialect.function.AnsiTrimEmulationFunction 
(assert (not (= var15 null-var3814)))
(declare-const var2811 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2811 null-String)))
(declare-const var1375 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1375 null-String)))
(declare-const var443 String) ; Statement: r25 := @parameter2: java.lang.String 
(assert (not (= var443 null-String)))
(assert true)
;(assert (<init>/370385536 (cast-from-var3814-to-var2405 var15))) ; Statement: specialinvoke r0.<org.hibernate.dialect.function.AbstractAnsiTrimEmulationFunction: void <init>()>() 

(declare-const var15!1 var3814)
(define-const var3168 var628 var628-init) ; Statement: $r1 = new org.hibernate.dialect.function.SQLFunctionTemplate 
(define-const var2768 var3528 var1036-STRING) ; Statement: $r4 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING> 
(define-const var1706 String "ltrim(?1)") ; Statement: $r3 = "ltrim(?1)" 
(assert true)
(define-const var2229 String (replaceAll/1692887130 var1706 "ltrim" var2811)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2) 
(assert (= (replaceAll/1692887130 var1706 "ltrim" var2811) (str.replace_re_all var1706 (str.to_re "ltrim") var2811)))
(assert true)
;(assert (<init>/1691157698 var3168 (cast-from-var3528-to-var798 var2768) var2229)) ; Statement: specialinvoke $r1.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r4, $r5) 

(declare-const var3168!1 var628)
(declare-const var2768!1 var3528)
(declare-const var2229!1 String)
(declare-const var15!2 var3814)
(assert (not (= var15!2 null-var3814)))
(assert (= (leadingSpaceTrim/2011828609 var15!2) (cast-from-var628-to-var2128 var3168!1))) ; Statement: r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction leadingSpaceTrim> = $r1 
(define-const var3480 var628 var628-init) ; Statement: $r6 = new org.hibernate.dialect.function.SQLFunctionTemplate 
(define-const var3111 var3528 var1036-STRING) ; Statement: $r9 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING> 
(define-const var3443 String "rtrim(?1)") ; Statement: $r8 = "rtrim(?1)" 
(assert true)
(define-const var363 String (replaceAll/1692887130 var3443 "rtrim" var1375)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7) 
(assert (= (replaceAll/1692887130 var3443 "rtrim" var1375) (str.replace_re_all var3443 (str.to_re "rtrim") var1375)))
(assert true)
;(assert (<init>/1691157698 var3480 (cast-from-var3528-to-var798 var3111) var363)) ; Statement: specialinvoke $r6.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r9, $r10) 

(declare-const var3480!1 var628)
(declare-const var3111!1 var3528)
(declare-const var363!1 String)
(declare-const var15!3 var3814)
(assert (not (= var15!3 null-var3814)))
(assert (= (trailingSpaceTrim/2011828609 var15!3) (cast-from-var628-to-var2128 var3480!1))) ; Statement: r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction trailingSpaceTrim> = $r6 
(define-const var2738 var628 var628-init) ; Statement: $r11 = new org.hibernate.dialect.function.SQLFunctionTemplate 
(define-const var2564 var3528 var1036-STRING) ; Statement: $r13 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING> 
(define-const var3990 String "ltrim(rtrim(?1))") ; Statement: $r12 = "ltrim(rtrim(?1))" 
(assert true)
(define-const var2996 String (replaceAll/1692887130 var3990 "ltrim" var2811)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2) 
(assert (= (replaceAll/1692887130 var3990 "ltrim" var2811) (str.replace_re_all var3990 (str.to_re "ltrim") var2811)))
(assert true)
(define-const var2993 String (replaceAll/1692887130 var2996 "rtrim" var1375)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7) 
(assert (= (replaceAll/1692887130 var2996 "rtrim" var1375) (str.replace_re_all var2996 (str.to_re "rtrim") var1375)))
(assert true)
;(assert (<init>/1691157698 var2738 (cast-from-var3528-to-var798 var2564) var2993)) ; Statement: specialinvoke $r11.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r13, $r15) 

(declare-const var2738!1 var628)
(declare-const var2564!1 var3528)
(declare-const var2993!1 String)
(declare-const var15!4 var3814)
(assert (not (= var15!4 null-var3814)))
(assert (= (bothSpaceTrim/2011828609 var15!4) (cast-from-var628-to-var2128 var2738!1))) ; Statement: r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction bothSpaceTrim> = $r11 
(define-const var612 var628 var628-init) ; Statement: $r16 = new org.hibernate.dialect.function.SQLFunctionTemplate 
(define-const var1201 var3528 var1036-STRING) ; Statement: $r18 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING> 
(define-const var805 String "ltrim(rtrim(?2))") ; Statement: $r17 = "ltrim(rtrim(?2))" 
(assert true)
(define-const var1413 String (replaceAll/1692887130 var805 "ltrim" var2811)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2) 
(assert (= (replaceAll/1692887130 var805 "ltrim" var2811) (str.replace_re_all var805 (str.to_re "ltrim") var2811)))
(assert true)
(define-const var1431 String (replaceAll/1692887130 var1413 "rtrim" var1375)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7) 
(assert (= (replaceAll/1692887130 var1413 "rtrim" var1375) (str.replace_re_all var1413 (str.to_re "rtrim") var1375)))
(assert true)
;(assert (<init>/1691157698 var612 (cast-from-var3528-to-var798 var1201) var1431)) ; Statement: specialinvoke $r16.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r18, $r20) 

(declare-const var612!1 var628)
(declare-const var1201!1 var3528)
(declare-const var1431!1 String)
(declare-const var15!5 var3814)
(assert (not (= var15!5 null-var3814)))
(assert (= (bothSpaceTrimFrom/2011828609 var15!5) (cast-from-var628-to-var2128 var612!1))) ; Statement: r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction bothSpaceTrimFrom> = $r16 
(define-const var2754 var628 var628-init) ; Statement: $r21 = new org.hibernate.dialect.function.SQLFunctionTemplate 
(define-const var2293 var3528 var1036-STRING) ; Statement: $r23 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING> 
(define-const var3148 String "replace(replace(ltrim(replace(replace(?1,\u0027 \u0027,\u0027${space}$\u0027),?2,\u0027 \u0027)),\u0027 \u0027,?2),\u0027${space}$\u0027,\u0027 \u0027)") ; Statement: $r22 = "replace(replace(ltrim(replace(replace(?1,\' \',\'${space}$\'),?2,\' \')),\' \',?2),\'${space}$\',\' \')" 
(assert true)
(define-const var2828 String (replaceAll/1692887130 var3148 "ltrim" var2811)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2) 
(assert (= (replaceAll/1692887130 var3148 "ltrim" var2811) (str.replace_re_all var3148 (str.to_re "ltrim") var2811)))
(assert true)
(define-const var3051 String (replaceAll/1692887130 var2828 "rtrim" var1375)) ; Statement: $r26 = virtualinvoke $r24.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7) 
(assert (= (replaceAll/1692887130 var2828 "rtrim" var1375) (str.replace_re_all var2828 (str.to_re "rtrim") var1375)))
(assert true)
(define-const var3433 String (replaceAll/1692887130 var3051 "replace" var443)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("replace", r25) 
(assert (= (replaceAll/1692887130 var3051 "replace" var443) (str.replace_re_all var3051 (str.to_re "replace") var443)))
(assert true)
;(assert (<init>/1691157698 var2754 (cast-from-var3528-to-var798 var2293) var3433)) ; Statement: specialinvoke $r21.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r23, $r27) 

(declare-const var2754!1 var628)
(declare-const var2293!1 var3528)
(declare-const var3433!1 String)
(declare-const var15!6 var3814)
(assert (not (= var15!6 null-var3814)))
(assert (= (leadingTrim/2011828609 var15!6) (cast-from-var628-to-var2128 var2754!1))) ; Statement: r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction leadingTrim> = $r21 
(define-const var313 var628 var628-init) ; Statement: $r28 = new org.hibernate.dialect.function.SQLFunctionTemplate 
(define-const var3512 var3528 var1036-STRING) ; Statement: $r30 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING> 
(define-const var157 String "replace(replace(rtrim(replace(replace(?1,\u0027 \u0027,\u0027${space}$\u0027),?2,\u0027 \u0027)),\u0027 \u0027,?2),\u0027${space}$\u0027,\u0027 \u0027)") ; Statement: $r29 = "replace(replace(rtrim(replace(replace(?1,\' \',\'${space}$\'),?2,\' \')),\' \',?2),\'${space}$\',\' \')" 
(assert true)
(define-const var1834 String (replaceAll/1692887130 var157 "ltrim" var2811)) ; Statement: $r31 = virtualinvoke $r29.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2) 
(assert (= (replaceAll/1692887130 var157 "ltrim" var2811) (str.replace_re_all var157 (str.to_re "ltrim") var2811)))
(assert true)
(define-const var274 String (replaceAll/1692887130 var1834 "rtrim" var1375)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7) 
(assert (= (replaceAll/1692887130 var1834 "rtrim" var1375) (str.replace_re_all var1834 (str.to_re "rtrim") var1375)))
(assert true)
(define-const var1883 String (replaceAll/1692887130 var274 "replace" var443)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("replace", r25) 
(assert (= (replaceAll/1692887130 var274 "replace" var443) (str.replace_re_all var274 (str.to_re "replace") var443)))
(assert true)
;(assert (<init>/1691157698 var313 (cast-from-var3528-to-var798 var3512) var1883)) ; Statement: specialinvoke $r28.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r30, $r33) 

(declare-const var313!1 var628)
(declare-const var3512!1 var3528)
(declare-const var1883!1 String)
(declare-const var15!7 var3814)
(assert (not (= var15!7 null-var3814)))
(assert (= (trailingTrim/2011828609 var15!7) (cast-from-var628-to-var2128 var313!1))) ; Statement: r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction trailingTrim> = $r28 
(define-const var1314 var628 var628-init) ; Statement: $r34 = new org.hibernate.dialect.function.SQLFunctionTemplate 
(define-const var982 var3528 var1036-STRING) ; Statement: $r36 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING> 
(define-const var404 String "replace(replace(ltrim(rtrim(replace(replace(?1,\u0027 \u0027,\u0027${space}$\u0027),?2,\u0027 \u0027))),\u0027 \u0027,?2),\u0027${space}$\u0027,\u0027 \u0027)") ; Statement: $r35 = "replace(replace(ltrim(rtrim(replace(replace(?1,\' \',\'${space}$\'),?2,\' \'))),\' \',?2),\'${space}$\',\' \')" 
(assert true)
(define-const var2893 String (replaceAll/1692887130 var404 "ltrim" var2811)) ; Statement: $r37 = virtualinvoke $r35.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2) 
(assert (= (replaceAll/1692887130 var404 "ltrim" var2811) (str.replace_re_all var404 (str.to_re "ltrim") var2811)))
(assert true)
(define-const var3668 String (replaceAll/1692887130 var2893 "rtrim" var1375)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7) 
(assert (= (replaceAll/1692887130 var2893 "rtrim" var1375) (str.replace_re_all var2893 (str.to_re "rtrim") var1375)))
(assert true)
(define-const var1663 String (replaceAll/1692887130 var3668 "replace" var443)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("replace", r25) 
(assert (= (replaceAll/1692887130 var3668 "replace" var443) (str.replace_re_all var3668 (str.to_re "replace") var443)))
(assert true)
;(assert (<init>/1691157698 var1314 (cast-from-var3528-to-var798 var982) var1663)) ; Statement: specialinvoke $r34.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r36, $r39) 

(declare-const var1314!1 var628)
(declare-const var982!1 var3528)
(declare-const var1663!1 String)
(declare-const var15!8 var3814)
(assert (not (= var15!8 null-var3814)))
(assert (= (bothTrim/2011828609 var15!8) (cast-from-var628-to-var2128 var1314!1))) ; Statement: r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction bothTrim> = $r34 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/370385536=([org.hibernate.dialect.function.AbstractAnsiTrimEmulationFunction], void), cast-from-var3814-to-var2405=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.AbstractAnsiTrimEmulationFunction), var628-init=([], org.hibernate.dialect.function.SQLFunctionTemplate), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), <init>/1691157698=([org.hibernate.dialect.function.SQLFunctionTemplate, org.hibernate.type.Type, java.lang.String], void), cast-from-var3528-to-var798=([org.hibernate.type.StringType], org.hibernate.type.Type), cast-from-var628-to-var2128=([org.hibernate.dialect.function.SQLFunctionTemplate], org.hibernate.dialect.function.SQLFunction), leadingSpaceTrim/2011828609=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.SQLFunction), trailingSpaceTrim/2011828609=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.SQLFunction), bothSpaceTrim/2011828609=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.SQLFunction), bothSpaceTrimFrom/2011828609=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.SQLFunction), leadingTrim/2011828609=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.SQLFunction), trailingTrim/2011828609=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.SQLFunction), bothTrim/2011828609=([org.hibernate.dialect.function.AnsiTrimEmulationFunction], org.hibernate.dialect.function.SQLFunction)}
; {var3814=org.hibernate.dialect.function.AnsiTrimEmulationFunction, var15=r0, var2811=r2, var10=null_type, var1375=r7, var443=r25, var2405=org.hibernate.dialect.function.AbstractAnsiTrimEmulationFunction, var628=org.hibernate.dialect.function.SQLFunctionTemplate, var3168=$r1, var3528=org.hibernate.type.StringType, var1036=org.hibernate.type.StandardBasicTypes, var2768=$r4, var1706=$r3, var2229=$r5, var798=org.hibernate.type.Type, var2128=org.hibernate.dialect.function.SQLFunction, var3480=$r6, var3111=$r9, var3443=$r8, var363=$r10, var2738=$r11, var2564=$r13, var3990=$r12, var2996=$r14, var2993=$r15, var612=$r16, var1201=$r18, var805=$r17, var1413=$r19, var1431=$r20, var2754=$r21, var2293=$r23, var3148=$r22, var2828=$r24, var3051=$r26, var3433=$r27, var313=$r28, var3512=$r30, var157=$r29, var1834=$r31, var274=$r32, var1883=$r33, var1314=$r34, var982=$r36, var404=$r35, var2893=$r37, var3668=$r38, var1663=$r39}
; {org.hibernate.dialect.function.AnsiTrimEmulationFunction=var3814, r0=var15, r2=var2811, null_type=var10, r7=var1375, r25=var443, org.hibernate.dialect.function.AbstractAnsiTrimEmulationFunction=var2405, org.hibernate.dialect.function.SQLFunctionTemplate=var628, $r1=var3168, org.hibernate.type.StringType=var3528, org.hibernate.type.StandardBasicTypes=var1036, $r4=var2768, $r3=var1706, $r5=var2229, org.hibernate.type.Type=var798, org.hibernate.dialect.function.SQLFunction=var2128, $r6=var3480, $r9=var3111, $r8=var3443, $r10=var363, $r11=var2738, $r13=var2564, $r12=var3990, $r14=var2996, $r15=var2993, $r16=var612, $r18=var1201, $r17=var805, $r19=var1413, $r20=var1431, $r21=var2754, $r23=var2293, $r22=var3148, $r24=var2828, $r26=var3051, $r27=var3433, $r28=var313, $r30=var3512, $r29=var157, $r31=var1834, $r32=var274, $r33=var1883, $r34=var1314, $r36=var982, $r35=var404, $r37=var2893, $r38=var3668, $r39=var1663}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 15}
;stmts r0 := @this: org.hibernate.dialect.function.AnsiTrimEmulationFunction;	r2 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r25 := @parameter2: java.lang.String;	specialinvoke r0.<org.hibernate.dialect.function.AbstractAnsiTrimEmulationFunction: void <init>()>();	$r1 = new org.hibernate.dialect.function.SQLFunctionTemplate;	$r4 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING>;	$r3 = "ltrim(?1)";	$r5 = virtualinvoke $r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2);	specialinvoke $r1.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r4, $r5);	r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction leadingSpaceTrim> = $r1;	$r6 = new org.hibernate.dialect.function.SQLFunctionTemplate;	$r9 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING>;	$r8 = "rtrim(?1)";	$r10 = virtualinvoke $r8.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7);	specialinvoke $r6.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r9, $r10);	r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction trailingSpaceTrim> = $r6;	$r11 = new org.hibernate.dialect.function.SQLFunctionTemplate;	$r13 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING>;	$r12 = "ltrim(rtrim(?1))";	$r14 = virtualinvoke $r12.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2);	$r15 = virtualinvoke $r14.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7);	specialinvoke $r11.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r13, $r15);	r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction bothSpaceTrim> = $r11;	$r16 = new org.hibernate.dialect.function.SQLFunctionTemplate;	$r18 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING>;	$r17 = "ltrim(rtrim(?2))";	$r19 = virtualinvoke $r17.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2);	$r20 = virtualinvoke $r19.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7);	specialinvoke $r16.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r18, $r20);	r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction bothSpaceTrimFrom> = $r16;	$r21 = new org.hibernate.dialect.function.SQLFunctionTemplate;	$r23 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING>;	$r22 = "replace(replace(ltrim(replace(replace(?1,\' \',\'${space}$\'),?2,\' \')),\' \',?2),\'${space}$\',\' \')";	$r24 = virtualinvoke $r22.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2);	$r26 = virtualinvoke $r24.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7);	$r27 = virtualinvoke $r26.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("replace", r25);	specialinvoke $r21.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r23, $r27);	r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction leadingTrim> = $r21;	$r28 = new org.hibernate.dialect.function.SQLFunctionTemplate;	$r30 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING>;	$r29 = "replace(replace(rtrim(replace(replace(?1,\' \',\'${space}$\'),?2,\' \')),\' \',?2),\'${space}$\',\' \')";	$r31 = virtualinvoke $r29.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2);	$r32 = virtualinvoke $r31.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7);	$r33 = virtualinvoke $r32.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("replace", r25);	specialinvoke $r28.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r30, $r33);	r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction trailingTrim> = $r28;	$r34 = new org.hibernate.dialect.function.SQLFunctionTemplate;	$r36 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.StringType STRING>;	$r35 = "replace(replace(ltrim(rtrim(replace(replace(?1,\' \',\'${space}$\'),?2,\' \'))),\' \',?2),\'${space}$\',\' \')";	$r37 = virtualinvoke $r35.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("ltrim", r2);	$r38 = virtualinvoke $r37.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("rtrim", r7);	$r39 = virtualinvoke $r38.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("replace", r25);	specialinvoke $r34.<org.hibernate.dialect.function.SQLFunctionTemplate: void <init>(org.hibernate.type.Type,java.lang.String)>($r36, $r39);	r0.<org.hibernate.dialect.function.AnsiTrimEmulationFunction: org.hibernate.dialect.function.SQLFunction bothTrim> = $r34;	return
;block_num 1