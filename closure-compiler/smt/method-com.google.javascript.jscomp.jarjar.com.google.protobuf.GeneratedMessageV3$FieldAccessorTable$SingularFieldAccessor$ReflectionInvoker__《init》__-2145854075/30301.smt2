(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3501 0)
(declare-sort var2412 0)
(declare-sort var3955 0)
(declare-sort var3492 0)
(declare-sort var3888 0)
(declare-sort var1341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3492) void)
(declare-fun cast-from-var3501-to-var3492 (var3501) var3492)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1341_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var3888)
(declare-fun getMethod/1159159905 (var3501) var3888)
(declare-fun getMethodBuilder/1159159905 (var3501) var3888)
(declare-fun getReturnType/-1494237887 (var3888) ClassObject)
(declare-fun setMethod/1159159905 (var3501) var3888)
(declare-fun hasMethod/1159159905 (var3501) var3888)
(declare-fun hasMethodBuilder/1159159905 (var3501) var3888)
(declare-fun clearMethod/1159159905 (var3501) var3888)
(declare-fun caseMethod/1159159905 (var3501) var3888)
(declare-fun caseMethodBuilder/1159159905 (var3501) var3888)
(declare-const null-var3501 var3501)
(declare-const null-var2412 var2412)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1830 var3501) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var1830 null-var3501)))
(declare-const var207 var2412) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var207 null-var2412)))
(declare-const var838 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var838 null-String)))
(declare-const var193 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var193 null-ClassObject)))
(declare-const var3153 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var3153 null-ClassObject)))
(declare-const var921 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var921 null-String)))
(declare-const var3204 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var3204 null-Bool)))
(declare-const var1591 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var1591 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3501-to-var3492 var1830))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1830!1 var3501)
(define-const var3466 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3466)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3466!1 String)
(assert (= var3466!1 ""))
(assert true)
(define-const var2692 String (append/672562846 var3466!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3466!2 String)
(assert (= var3466!2 (str.++ var3466!1 "get")))
(assert true)
(define-const var3562 String (append/672562846 var2692 var838)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2692!1 String)
(assert (= var2692!1 (str.++ var2692 var838)))
(assert true)
(define-const var3380 String (toString/-2075883882 var3562)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3302 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var2911 var3888 (var1341_access$1000/-414113668 var193 var3380 var3302)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var1830!2 var3501)
(assert (not (= var1830!2 null-var3501)))
(assert (= (getMethod/1159159905 var1830!2) var2911)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var2248 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2248)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2248!1 String)
(assert (= var2248!1 ""))
(assert true)
(define-const var3533 String (append/672562846 var2248!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2248!2 String)
(assert (= var2248!2 (str.++ var2248!1 "get")))
(assert true)
(define-const var2031 String (append/672562846 var3533 var838)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3533!1 String)
(assert (= var3533!1 (str.++ var3533 var838)))
(assert true)
(define-const var953 String (toString/-2075883882 var2031)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2328 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var1606 var3888 (var1341_access$1000/-414113668 var3153 var953 var2328)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var1830!3 var3501)
(assert (not (= var1830!3 null-var3501)))
(assert (= (getMethodBuilder/1159159905 var1830!3) var1606)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var3255 var3888 (getMethod/1159159905 var1830!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var1674 ClassObject (getReturnType/-1494237887 var3255)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var748 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var748)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var748!1 String)
(assert (= var748!1 ""))
(assert true)
(define-const var3564 String (append/672562846 var748!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var748!2 String)
(assert (= var748!2 (str.++ var748!1 "set")))
(assert true)
(define-const var2763 String (append/672562846 var3564 var838)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3564!1 String)
(assert (= var3564!1 (str.++ var3564 var838)))
(assert true)
(define-const var3027 String (toString/-2075883882 var2763)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1311 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var1311!1 (Array Int ClassObject))
(assert (not (= var1311!1 null-__Array__Int__ClassObject__)))
(assert (= (select var1311!1 0) var1674)) ; Statement: $r21[0] = r17 
(define-const var2741 var3888 (var1341_access$1000/-414113668 var3153 var3027 var1311!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var1830!4 var3501)
(assert (not (= var1830!4 null-var3501)))
(assert (= (setMethod/1159159905 var1830!4) var2741)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (not (= (ite var1591 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2242 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2242)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2242!1 String)
(assert (= var2242!1 ""))
(assert true)
(define-const var3727 String (append/672562846 var2242!1 "has")) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var2242!2 String)
(assert (= var2242!2 (str.++ var2242!1 "has")))
(assert true)
(define-const var2320 String (append/672562846 var3727 var838)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3727!1 String)
(assert (= var3727!1 (str.++ var3727 var838)))
(assert true)
(define-const var3573 String (toString/-2075883882 var2320)) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2971 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r51 = newarray (java.lang.Class)[0] 
(define-const var3558 var3888 (var1341_access$1000/-414113668 var193 var3573 var2971)) ; Statement: $r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54] 
(assert true) ; Non Conditional
(declare-const var1830!5 var3501)
(assert (not (= var1830!5 null-var3501)))
(assert (= (hasMethod/1159159905 var1830!5) var3558)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (not (= (ite var1591 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1535 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1535)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1535!1 String)
(assert (= var1535!1 ""))
(assert true)
(define-const var1234 String (append/672562846 var1535!1 "has")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var1535!2 String)
(assert (= var1535!2 (str.++ var1535!1 "has")))
(assert true)
(define-const var2578 String (append/672562846 var1234 var838)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1234!1 String)
(assert (= var1234!1 (str.++ var1234 var838)))
(assert true)
(define-const var362 String (toString/-2075883882 var2578)) ; Statement: $r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2377 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r46 = newarray (java.lang.Class)[0] 
(define-const var297 var3888 (var1341_access$1000/-414113668 var3153 var362 var2377)) ; Statement: $r55 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r47, $r46) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55] 
(assert true) ; Non Conditional
(declare-const var1830!6 var3501)
(assert (not (= var1830!6 null-var3501)))
(assert (= (hasMethodBuilder/1159159905 var1830!6) var297)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var2809 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2809)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2809!1 String)
(assert (= var2809!1 ""))
(assert true)
(define-const var1625 String (append/672562846 var2809!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var2809!2 String)
(assert (= var2809!2 (str.++ var2809!1 "clear")))
(assert true)
(define-const var304 String (append/672562846 var1625 var838)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1625!1 String)
(assert (= var1625!1 (str.++ var1625 var838)))
(assert true)
(define-const var2188 String (toString/-2075883882 var304)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var50 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var1321 var3888 (var1341_access$1000/-414113668 var3153 var2188 var50)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var1830!7 var3501)
(assert (not (= var1830!7 null-var3501)))
(assert (= (clearMethod/1159159905 var1830!7) var1321)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (not (= (ite var3204 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2202 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2202)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2202!1 String)
(assert (= var2202!1 ""))
(assert true)
(define-const var2511 String (append/672562846 var2202!1 "get")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2202!2 String)
(assert (= var2202!2 (str.++ var2202!1 "get")))
(assert true)
(define-const var1303 String (append/672562846 var2511 var921)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var2511!1 String)
(assert (= var2511!1 (str.++ var2511 var921)))
(assert true)
(define-const var3507 String (append/672562846 var1303 "Case")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var1303!1 String)
(assert (= var1303!1 (str.++ var1303 "Case")))
(assert true)
(define-const var602 String (toString/-2075883882 var3507)) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2693 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r41 = newarray (java.lang.Class)[0] 
(define-const var335 var3888 (var1341_access$1000/-414113668 var193 var602 var2693)) ; Statement: $r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56] 
(assert true) ; Non Conditional
(declare-const var1830!8 var3501)
(assert (not (= var1830!8 null-var3501)))
(assert (= (caseMethod/1159159905 var1830!8) var335)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (not (= (ite var3204 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var3157 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3157)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3157!1 String)
(assert (= var3157!1 ""))
(assert true)
(define-const var680 String (append/672562846 var3157!1 "get")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3157!2 String)
(assert (= var3157!2 (str.++ var3157!1 "get")))
(assert true)
(define-const var3977 String (append/672562846 var680 var921)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 var921)))
(assert true)
(define-const var1967 String (append/672562846 var3977 "Case")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var3977!1 String)
(assert (= var3977!1 (str.++ var3977 "Case")))
(assert true)
(define-const var1778 String (toString/-2075883882 var1967)) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1251 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r35 = newarray (java.lang.Class)[0] 
(define-const var3403 var3888 (var1341_access$1000/-414113668 var3153 var1778 var1251)) ; Statement: $r57 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r36, $r35) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57] 
(assert true) ; Non Conditional
(declare-const var1830!9 var3501)
(assert (not (= var1830!9 null-var3501)))
(assert (= (caseMethodBuilder/1159159905 var1830!9) var3403)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3501-to-var3492=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1341_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var3501=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var1830=r0, var2412=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var207=r53, var838=r3, var3955=null_type, var193=r1, var3153=r9, var921=r31, var3204=z1, var1591=z0, var3492=java.lang.Object, var3466=$r2, var2692=$r4, var3562=$r5, var3380=$r7, var3302=$r6, var3888=java.lang.reflect.Method, var1341=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2911=$r8, var2248=$r10, var3533=$r11, var2031=$r12, var953=$r14, var2328=$r13, var1606=$r15, var3255=$r16, var1674=r17, var748=$r18, var3564=$r19, var2763=$r20, var3027=$r22, var1311=$r21, var2741=$r23, var2242=$r48, var3727=$r49, var2320=$r50, var3573=$r52, var2971=$r51, var3558=$r54, var1535=$r43, var1234=$r44, var2578=$r45, var362=$r47, var2377=$r46, var297=$r55, var2809=$r24, var1625=$r25, var304=$r26, var2188=$r28, var50=$r27, var1321=$r29, var2202=$r37, var2511=$r38, var1303=$r39, var3507=$r40, var602=$r42, var2693=$r41, var335=$r56, var3157=$r30, var680=$r32, var3977=$r33, var1967=$r34, var1778=$r36, var1251=$r35, var3403=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var3501, r0=var1830, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2412, r53=var207, r3=var838, null_type=var3955, r1=var193, r9=var3153, r31=var921, z1=var3204, z0=var1591, java.lang.Object=var3492, $r2=var3466, $r4=var2692, $r5=var3562, $r7=var3380, $r6=var3302, java.lang.reflect.Method=var3888, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1341, $r8=var2911, $r10=var2248, $r11=var3533, $r12=var2031, $r14=var953, $r13=var2328, $r15=var1606, $r16=var3255, r17=var1674, $r18=var748, $r19=var3564, $r20=var2763, $r22=var3027, $r21=var1311, $r23=var2741, $r48=var2242, $r49=var3727, $r50=var2320, $r52=var3573, $r51=var2971, $r54=var3558, $r43=var1535, $r44=var1234, $r45=var2578, $r47=var362, $r46=var2377, $r55=var297, $r24=var2809, $r25=var1625, $r26=var304, $r28=var2188, $r27=var50, $r29=var1321, $r37=var2202, $r38=var2511, $r39=var1303, $r40=var3507, $r42=var602, $r41=var2693, $r56=var335, $r30=var3157, $r32=var680, $r33=var3977, $r34=var1967, $r36=var1778, $r35=var1251, $r57=var3403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 18,"<java.lang.StringBuilder: java.lang.String toString()>": 8}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	$r51 = newarray (java.lang.Class)[0];	$r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	$r46 = newarray (java.lang.Class)[0];	$r55 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r47, $r46);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = newarray (java.lang.Class)[0];	$r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = newarray (java.lang.Class)[0];	$r57 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r36, $r35);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9