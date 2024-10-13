(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1033 0)
(declare-sort var1894 0)
(declare-sort var866 0)
(declare-sort var1856 0)
(declare-sort var183 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1856) void)
(declare-fun cast-from-var1033-to-var1856 (var1033) var1856)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1709_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var183)
(declare-fun getMethod/1159159905 (var1033) var183)
(declare-fun getMethodBuilder/1159159905 (var1033) var183)
(declare-fun getReturnType/-1494237887 (var183) ClassObject)
(declare-fun setMethod/1159159905 (var1033) var183)
(declare-fun hasMethod/1159159905 (var1033) var183)
(declare-fun hasMethodBuilder/1159159905 (var1033) var183)
(declare-fun clearMethod/1159159905 (var1033) var183)
(declare-fun caseMethod/1159159905 (var1033) var183)
(declare-fun caseMethodBuilder/1159159905 (var1033) var183)
(declare-const null-var1033 var1033)
(declare-const null-var1894 var1894)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var183 var183)
(declare-const var1590 var1033) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var1590 null-var1033)))
(declare-const var962 var1894) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var962 null-var1894)))
(declare-const var635 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var635 null-String)))
(declare-const var1211 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var1211 null-ClassObject)))
(declare-const var2385 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var2385 null-ClassObject)))
(declare-const var1218 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var1218 null-String)))
(declare-const var3534 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var3534 null-Bool)))
(declare-const var3517 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var3517 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1033-to-var1856 var1590))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1590!1 var1033)
(define-const var944 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var944)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var944!1 String)
(assert (= var944!1 ""))
(assert true)
(define-const var1733 String (append/672562846 var944!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var944!2 String)
(assert (= var944!2 (str.++ var944!1 "get")))
(assert true)
(define-const var2280 String (append/672562846 var1733 var635)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1733!1 String)
(assert (= var1733!1 (str.++ var1733 var635)))
(assert true)
(define-const var2252 String (toString/-2075883882 var2280)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1766 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var933 var183 (var1709_access$1000/-414113668 var1211 var2252 var1766)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var1590!2 var1033)
(assert (not (= var1590!2 null-var1033)))
(assert (= (getMethod/1159159905 var1590!2) var933)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var171 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var171)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var171!1 String)
(assert (= var171!1 ""))
(assert true)
(define-const var3211 String (append/672562846 var171!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var171!2 String)
(assert (= var171!2 (str.++ var171!1 "get")))
(assert true)
(define-const var3529 String (append/672562846 var3211 var635)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3211!1 String)
(assert (= var3211!1 (str.++ var3211 var635)))
(assert true)
(define-const var105 String (toString/-2075883882 var3529)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3995 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var1464 var183 (var1709_access$1000/-414113668 var2385 var105 var3995)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var1590!3 var1033)
(assert (not (= var1590!3 null-var1033)))
(assert (= (getMethodBuilder/1159159905 var1590!3) var1464)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var235 var183 (getMethod/1159159905 var1590!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var3504 ClassObject (getReturnType/-1494237887 var235)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var3438 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3438)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3438!1 String)
(assert (= var3438!1 ""))
(assert true)
(define-const var2690 String (append/672562846 var3438!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var3438!2 String)
(assert (= var3438!2 (str.++ var3438!1 "set")))
(assert true)
(define-const var1782 String (append/672562846 var2690 var635)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2690!1 String)
(assert (= var2690!1 (str.++ var2690 var635)))
(assert true)
(define-const var1929 String (toString/-2075883882 var1782)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2802 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var2802!1 (Array Int ClassObject))
(assert (not (= var2802!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2802!1 0) var3504)) ; Statement: $r21[0] = r17 
(define-const var1326 var183 (var1709_access$1000/-414113668 var2385 var1929 var2802!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var1590!4 var1033)
(assert (not (= var1590!4 null-var1033)))
(assert (= (setMethod/1159159905 var1590!4) var1326)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (= (ite var3517 1 0) 0)) ; Cond: z0 == 0 
(define-const var3138 var183 null-var183) ; Statement: $r54 = null 
(assert true) ; Non Conditional
(declare-const var1590!5 var1033)
(assert (not (= var1590!5 null-var1033)))
(assert (= (hasMethod/1159159905 var1590!5) var3138)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (= (ite var3517 1 0) 0)) ; Cond: z0 == 0 
(define-const var1087 var183 null-var183) ; Statement: $r55 = null 
(assert true) ; Non Conditional
(declare-const var1590!6 var1033)
(assert (not (= var1590!6 null-var1033)))
(assert (= (hasMethodBuilder/1159159905 var1590!6) var1087)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var3063 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3063)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3063!1 String)
(assert (= var3063!1 ""))
(assert true)
(define-const var2095 String (append/672562846 var3063!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var3063!2 String)
(assert (= var3063!2 (str.++ var3063!1 "clear")))
(assert true)
(define-const var3750 String (append/672562846 var2095 var635)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2095!1 String)
(assert (= var2095!1 (str.++ var2095 var635)))
(assert true)
(define-const var243 String (toString/-2075883882 var3750)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2088 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var3431 var183 (var1709_access$1000/-414113668 var2385 var243 var2088)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var1590!7 var1033)
(assert (not (= var1590!7 null-var1033)))
(assert (= (clearMethod/1159159905 var1590!7) var3431)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (not (= (ite var3534 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var765 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var765)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var765!1 String)
(assert (= var765!1 ""))
(assert true)
(define-const var1319 String (append/672562846 var765!1 "get")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var765!2 String)
(assert (= var765!2 (str.++ var765!1 "get")))
(assert true)
(define-const var1102 String (append/672562846 var1319 var1218)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var1319!1 String)
(assert (= var1319!1 (str.++ var1319 var1218)))
(assert true)
(define-const var3235 String (append/672562846 var1102 "Case")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var1102!1 String)
(assert (= var1102!1 (str.++ var1102 "Case")))
(assert true)
(define-const var3678 String (toString/-2075883882 var3235)) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3376 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r41 = newarray (java.lang.Class)[0] 
(define-const var964 var183 (var1709_access$1000/-414113668 var1211 var3678 var3376)) ; Statement: $r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56] 
(assert true) ; Non Conditional
(declare-const var1590!8 var1033)
(assert (not (= var1590!8 null-var1033)))
(assert (= (caseMethod/1159159905 var1590!8) var964)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (not (= (ite var3534 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var359 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var359)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var359!1 String)
(assert (= var359!1 ""))
(assert true)
(define-const var3132 String (append/672562846 var359!1 "get")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var359!2 String)
(assert (= var359!2 (str.++ var359!1 "get")))
(assert true)
(define-const var843 String (append/672562846 var3132 var1218)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var3132!1 String)
(assert (= var3132!1 (str.++ var3132 var1218)))
(assert true)
(define-const var3883 String (append/672562846 var843 "Case")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var843!1 String)
(assert (= var843!1 (str.++ var843 "Case")))
(assert true)
(define-const var2161 String (toString/-2075883882 var3883)) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2670 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r35 = newarray (java.lang.Class)[0] 
(define-const var3344 var183 (var1709_access$1000/-414113668 var2385 var2161 var2670)) ; Statement: $r57 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r36, $r35) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57] 
(assert true) ; Non Conditional
(declare-const var1590!9 var1033)
(assert (not (= var1590!9 null-var1033)))
(assert (= (caseMethodBuilder/1159159905 var1590!9) var3344)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1033-to-var1856=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1709_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var1033=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var1590=r0, var1894=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var962=r53, var635=r3, var866=null_type, var1211=r1, var2385=r9, var1218=r31, var3534=z1, var3517=z0, var1856=java.lang.Object, var944=$r2, var1733=$r4, var2280=$r5, var2252=$r7, var1766=$r6, var183=java.lang.reflect.Method, var1709=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var933=$r8, var171=$r10, var3211=$r11, var3529=$r12, var105=$r14, var3995=$r13, var1464=$r15, var235=$r16, var3504=r17, var3438=$r18, var2690=$r19, var1782=$r20, var1929=$r22, var2802=$r21, var1326=$r23, var3138=$r54, var1087=$r55, var3063=$r24, var2095=$r25, var3750=$r26, var243=$r28, var2088=$r27, var3431=$r29, var765=$r37, var1319=$r38, var1102=$r39, var3235=$r40, var3678=$r42, var3376=$r41, var964=$r56, var359=$r30, var3132=$r32, var843=$r33, var3883=$r34, var2161=$r36, var2670=$r35, var3344=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var1033, r0=var1590, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1894, r53=var962, r3=var635, null_type=var866, r1=var1211, r9=var2385, r31=var1218, z1=var3534, z0=var3517, java.lang.Object=var1856, $r2=var944, $r4=var1733, $r5=var2280, $r7=var2252, $r6=var1766, java.lang.reflect.Method=var183, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1709, $r8=var933, $r10=var171, $r11=var3211, $r12=var3529, $r14=var105, $r13=var3995, $r15=var1464, $r16=var235, r17=var3504, $r18=var3438, $r19=var2690, $r20=var1782, $r22=var1929, $r21=var2802, $r23=var1326, $r54=var3138, $r55=var1087, $r24=var3063, $r25=var2095, $r26=var3750, $r28=var243, $r27=var2088, $r29=var3431, $r37=var765, $r38=var1319, $r39=var1102, $r40=var3235, $r42=var3678, $r41=var3376, $r56=var964, $r30=var359, $r32=var3132, $r33=var843, $r34=var3883, $r36=var2161, $r35=var2670, $r57=var3344}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.String toString()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r54 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r55 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = newarray (java.lang.Class)[0];	$r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = newarray (java.lang.Class)[0];	$r57 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r36, $r35);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9