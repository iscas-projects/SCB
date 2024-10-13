(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1821 0)
(declare-sort var655 0)
(declare-sort var1727 0)
(declare-sort var1725 0)
(declare-sort var2232 0)
(declare-sort var3078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1725) void)
(declare-fun cast-from-var1821-to-var1725 (var1821) var1725)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3078_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var2232)
(declare-fun getMethod/1159159905 (var1821) var2232)
(declare-fun getMethodBuilder/1159159905 (var1821) var2232)
(declare-fun getReturnType/-1494237887 (var2232) ClassObject)
(declare-fun setMethod/1159159905 (var1821) var2232)
(declare-fun hasMethod/1159159905 (var1821) var2232)
(declare-fun hasMethodBuilder/1159159905 (var1821) var2232)
(declare-fun clearMethod/1159159905 (var1821) var2232)
(declare-fun caseMethod/1159159905 (var1821) var2232)
(declare-fun caseMethodBuilder/1159159905 (var1821) var2232)
(declare-const null-var1821 var1821)
(declare-const null-var655 var655)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2232 var2232)
(declare-const var2585 var1821) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var2585 null-var1821)))
(declare-const var717 var655) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var717 null-var655)))
(declare-const var919 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var919 null-String)))
(declare-const var3587 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var3587 null-ClassObject)))
(declare-const var1723 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var1723 null-ClassObject)))
(declare-const var3315 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var3315 null-String)))
(declare-const var482 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var482 null-Bool)))
(declare-const var3597 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var3597 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1821-to-var1725 var2585))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2585!1 var1821)
(define-const var1026 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1026)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1026!1 String)
(assert (= var1026!1 ""))
(assert true)
(define-const var1981 String (append/672562846 var1026!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1026!2 String)
(assert (= var1026!2 (str.++ var1026!1 "get")))
(assert true)
(define-const var2045 String (append/672562846 var1981 var919)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1981!1 String)
(assert (= var1981!1 (str.++ var1981 var919)))
(assert true)
(define-const var2355 String (toString/-2075883882 var2045)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var233 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var2764 var2232 (var3078_access$1000/-414113668 var3587 var2355 var233)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var2585!2 var1821)
(assert (not (= var2585!2 null-var1821)))
(assert (= (getMethod/1159159905 var2585!2) var2764)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var3809 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3809)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3809!1 String)
(assert (= var3809!1 ""))
(assert true)
(define-const var1561 String (append/672562846 var3809!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3809!2 String)
(assert (= var3809!2 (str.++ var3809!1 "get")))
(assert true)
(define-const var2271 String (append/672562846 var1561 var919)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1561!1 String)
(assert (= var1561!1 (str.++ var1561 var919)))
(assert true)
(define-const var3973 String (toString/-2075883882 var2271)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var557 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var2524 var2232 (var3078_access$1000/-414113668 var1723 var3973 var557)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var2585!3 var1821)
(assert (not (= var2585!3 null-var1821)))
(assert (= (getMethodBuilder/1159159905 var2585!3) var2524)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var2388 var2232 (getMethod/1159159905 var2585!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var3229 ClassObject (getReturnType/-1494237887 var2388)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var3744 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3744)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3744!1 String)
(assert (= var3744!1 ""))
(assert true)
(define-const var531 String (append/672562846 var3744!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var3744!2 String)
(assert (= var3744!2 (str.++ var3744!1 "set")))
(assert true)
(define-const var267 String (append/672562846 var531 var919)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var531!1 String)
(assert (= var531!1 (str.++ var531 var919)))
(assert true)
(define-const var1488 String (toString/-2075883882 var267)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2381 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var2381!1 (Array Int ClassObject))
(assert (not (= var2381!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2381!1 0) var3229)) ; Statement: $r21[0] = r17 
(define-const var466 var2232 (var3078_access$1000/-414113668 var1723 var1488 var2381!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var2585!4 var1821)
(assert (not (= var2585!4 null-var1821)))
(assert (= (setMethod/1159159905 var2585!4) var466)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (not (= (ite var3597 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2246 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2246)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2246!1 String)
(assert (= var2246!1 ""))
(assert true)
(define-const var1210 String (append/672562846 var2246!1 "has")) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var2246!2 String)
(assert (= var2246!2 (str.++ var2246!1 "has")))
(assert true)
(define-const var3641 String (append/672562846 var1210 var919)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1210!1 String)
(assert (= var1210!1 (str.++ var1210 var919)))
(assert true)
(define-const var2674 String (toString/-2075883882 var3641)) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1941 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r51 = newarray (java.lang.Class)[0] 
(define-const var343 var2232 (var3078_access$1000/-414113668 var3587 var2674 var1941)) ; Statement: $r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54] 
(assert true) ; Non Conditional
(declare-const var2585!5 var1821)
(assert (not (= var2585!5 null-var1821)))
(assert (= (hasMethod/1159159905 var2585!5) var343)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (= (ite var3597 1 0) 0)) ; Cond: z0 == 0 
(define-const var2669 var2232 null-var2232) ; Statement: $r55 = null 
(assert true) ; Non Conditional
(declare-const var2585!6 var1821)
(assert (not (= var2585!6 null-var1821)))
(assert (= (hasMethodBuilder/1159159905 var2585!6) var2669)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var1160 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1160)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1160!1 String)
(assert (= var1160!1 ""))
(assert true)
(define-const var3259 String (append/672562846 var1160!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var1160!2 String)
(assert (= var1160!2 (str.++ var1160!1 "clear")))
(assert true)
(define-const var3673 String (append/672562846 var3259 var919)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3259!1 String)
(assert (= var3259!1 (str.++ var3259 var919)))
(assert true)
(define-const var2733 String (toString/-2075883882 var3673)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2946 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var2692 var2232 (var3078_access$1000/-414113668 var1723 var2733 var2946)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var2585!7 var1821)
(assert (not (= var2585!7 null-var1821)))
(assert (= (clearMethod/1159159905 var2585!7) var2692)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (not (= (ite var482 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1139 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1139)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1139!1 String)
(assert (= var1139!1 ""))
(assert true)
(define-const var2804 String (append/672562846 var1139!1 "get")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1139!2 String)
(assert (= var1139!2 (str.++ var1139!1 "get")))
(assert true)
(define-const var3223 String (append/672562846 var2804 var3315)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var2804!1 String)
(assert (= var2804!1 (str.++ var2804 var3315)))
(assert true)
(define-const var2896 String (append/672562846 var3223 "Case")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var3223!1 String)
(assert (= var3223!1 (str.++ var3223 "Case")))
(assert true)
(define-const var145 String (toString/-2075883882 var2896)) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3091 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r41 = newarray (java.lang.Class)[0] 
(define-const var2450 var2232 (var3078_access$1000/-414113668 var3587 var145 var3091)) ; Statement: $r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56] 
(assert true) ; Non Conditional
(declare-const var2585!8 var1821)
(assert (not (= var2585!8 null-var1821)))
(assert (= (caseMethod/1159159905 var2585!8) var2450)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (= (ite var482 1 0) 0)) ; Cond: z1 == 0 
(define-const var2762 var2232 null-var2232) ; Statement: $r57 = null 
(assert true) ; Non Conditional
(declare-const var2585!9 var1821)
(assert (not (= var2585!9 null-var1821)))
(assert (= (caseMethodBuilder/1159159905 var2585!9) var2762)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1821-to-var1725=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3078_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var1821=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var2585=r0, var655=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var717=r53, var919=r3, var1727=null_type, var3587=r1, var1723=r9, var3315=r31, var482=z1, var3597=z0, var1725=java.lang.Object, var1026=$r2, var1981=$r4, var2045=$r5, var2355=$r7, var233=$r6, var2232=java.lang.reflect.Method, var3078=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2764=$r8, var3809=$r10, var1561=$r11, var2271=$r12, var3973=$r14, var557=$r13, var2524=$r15, var2388=$r16, var3229=r17, var3744=$r18, var531=$r19, var267=$r20, var1488=$r22, var2381=$r21, var466=$r23, var2246=$r48, var1210=$r49, var3641=$r50, var2674=$r52, var1941=$r51, var343=$r54, var2669=$r55, var1160=$r24, var3259=$r25, var3673=$r26, var2733=$r28, var2946=$r27, var2692=$r29, var1139=$r37, var2804=$r38, var3223=$r39, var2896=$r40, var145=$r42, var3091=$r41, var2450=$r56, var2762=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var1821, r0=var2585, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var655, r53=var717, r3=var919, null_type=var1727, r1=var3587, r9=var1723, r31=var3315, z1=var482, z0=var3597, java.lang.Object=var1725, $r2=var1026, $r4=var1981, $r5=var2045, $r7=var2355, $r6=var233, java.lang.reflect.Method=var2232, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3078, $r8=var2764, $r10=var3809, $r11=var1561, $r12=var2271, $r14=var3973, $r13=var557, $r15=var2524, $r16=var2388, r17=var3229, $r18=var3744, $r19=var531, $r20=var267, $r22=var1488, $r21=var2381, $r23=var466, $r48=var2246, $r49=var1210, $r50=var3641, $r52=var2674, $r51=var1941, $r54=var343, $r55=var2669, $r24=var1160, $r25=var3259, $r26=var3673, $r28=var2733, $r27=var2946, $r29=var2692, $r37=var1139, $r38=var2804, $r39=var3223, $r40=var2896, $r42=var145, $r41=var3091, $r56=var2450, $r57=var2762}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 13,"<java.lang.StringBuilder: java.lang.String toString()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	$r51 = newarray (java.lang.Class)[0];	$r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r55 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = newarray (java.lang.Class)[0];	$r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r57 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9