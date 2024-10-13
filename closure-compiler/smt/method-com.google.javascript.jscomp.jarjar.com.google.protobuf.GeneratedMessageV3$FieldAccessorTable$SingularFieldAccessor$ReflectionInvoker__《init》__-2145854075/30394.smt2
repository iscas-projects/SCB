(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2729 0)
(declare-sort var1122 0)
(declare-sort var3098 0)
(declare-sort var1740 0)
(declare-sort var2529 0)
(declare-sort var1577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1740) void)
(declare-fun cast-from-var2729-to-var1740 (var2729) var1740)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1577_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var2529)
(declare-fun getMethod/1159159905 (var2729) var2529)
(declare-fun getMethodBuilder/1159159905 (var2729) var2529)
(declare-fun getReturnType/-1494237887 (var2529) ClassObject)
(declare-fun setMethod/1159159905 (var2729) var2529)
(declare-fun hasMethod/1159159905 (var2729) var2529)
(declare-fun hasMethodBuilder/1159159905 (var2729) var2529)
(declare-fun clearMethod/1159159905 (var2729) var2529)
(declare-fun caseMethod/1159159905 (var2729) var2529)
(declare-fun caseMethodBuilder/1159159905 (var2729) var2529)
(declare-const null-var2729 var2729)
(declare-const null-var1122 var1122)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2529 var2529)
(declare-const var2981 var2729) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var2981 null-var2729)))
(declare-const var3182 var1122) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var3182 null-var1122)))
(declare-const var2657 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2657 null-String)))
(declare-const var2134 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var2134 null-ClassObject)))
(declare-const var2698 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var2698 null-ClassObject)))
(declare-const var1134 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var1134 null-String)))
(declare-const var3948 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var3948 null-Bool)))
(declare-const var116 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var116 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2729-to-var1740 var2981))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2981!1 var2729)
(define-const var3458 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3458)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3458!1 String)
(assert (= var3458!1 ""))
(assert true)
(define-const var167 String (append/672562846 var3458!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3458!2 String)
(assert (= var3458!2 (str.++ var3458!1 "get")))
(assert true)
(define-const var44 String (append/672562846 var167 var2657)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var167!1 String)
(assert (= var167!1 (str.++ var167 var2657)))
(assert true)
(define-const var1714 String (toString/-2075883882 var44)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3079 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var1229 var2529 (var1577_access$1000/-414113668 var2134 var1714 var3079)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var2981!2 var2729)
(assert (not (= var2981!2 null-var2729)))
(assert (= (getMethod/1159159905 var2981!2) var1229)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var2816 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2816)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2816!1 String)
(assert (= var2816!1 ""))
(assert true)
(define-const var3466 String (append/672562846 var2816!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2816!2 String)
(assert (= var2816!2 (str.++ var2816!1 "get")))
(assert true)
(define-const var1479 String (append/672562846 var3466 var2657)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3466!1 String)
(assert (= var3466!1 (str.++ var3466 var2657)))
(assert true)
(define-const var3097 String (toString/-2075883882 var1479)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2589 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var3206 var2529 (var1577_access$1000/-414113668 var2698 var3097 var2589)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var2981!3 var2729)
(assert (not (= var2981!3 null-var2729)))
(assert (= (getMethodBuilder/1159159905 var2981!3) var3206)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var450 var2529 (getMethod/1159159905 var2981!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var3789 ClassObject (getReturnType/-1494237887 var450)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var3032 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3032)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3032!1 String)
(assert (= var3032!1 ""))
(assert true)
(define-const var3800 String (append/672562846 var3032!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var3032!2 String)
(assert (= var3032!2 (str.++ var3032!1 "set")))
(assert true)
(define-const var455 String (append/672562846 var3800 var2657)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3800!1 String)
(assert (= var3800!1 (str.++ var3800 var2657)))
(assert true)
(define-const var2970 String (toString/-2075883882 var455)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3133 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var3133!1 (Array Int ClassObject))
(assert (not (= var3133!1 null-__Array__Int__ClassObject__)))
(assert (= (select var3133!1 0) var3789)) ; Statement: $r21[0] = r17 
(define-const var3527 var2529 (var1577_access$1000/-414113668 var2698 var2970 var3133!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var2981!4 var2729)
(assert (not (= var2981!4 null-var2729)))
(assert (= (setMethod/1159159905 var2981!4) var3527)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (not (= (ite var116 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2486 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2486)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2486!1 String)
(assert (= var2486!1 ""))
(assert true)
(define-const var1457 String (append/672562846 var2486!1 "has")) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var2486!2 String)
(assert (= var2486!2 (str.++ var2486!1 "has")))
(assert true)
(define-const var1891 String (append/672562846 var1457 var2657)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1457!1 String)
(assert (= var1457!1 (str.++ var1457 var2657)))
(assert true)
(define-const var1411 String (toString/-2075883882 var1891)) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3640 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r51 = newarray (java.lang.Class)[0] 
(define-const var771 var2529 (var1577_access$1000/-414113668 var2134 var1411 var3640)) ; Statement: $r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54] 
(assert true) ; Non Conditional
(declare-const var2981!5 var2729)
(assert (not (= var2981!5 null-var2729)))
(assert (= (hasMethod/1159159905 var2981!5) var771)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (not (= (ite var116 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1017 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1017)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1017!1 String)
(assert (= var1017!1 ""))
(assert true)
(define-const var3015 String (append/672562846 var1017!1 "has")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var1017!2 String)
(assert (= var1017!2 (str.++ var1017!1 "has")))
(assert true)
(define-const var2431 String (append/672562846 var3015 var2657)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3015!1 String)
(assert (= var3015!1 (str.++ var3015 var2657)))
(assert true)
(define-const var465 String (toString/-2075883882 var2431)) ; Statement: $r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3812 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r46 = newarray (java.lang.Class)[0] 
(define-const var197 var2529 (var1577_access$1000/-414113668 var2698 var465 var3812)) ; Statement: $r55 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r47, $r46) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55] 
(assert true) ; Non Conditional
(declare-const var2981!6 var2729)
(assert (not (= var2981!6 null-var2729)))
(assert (= (hasMethodBuilder/1159159905 var2981!6) var197)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var473 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var473)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var473!1 String)
(assert (= var473!1 ""))
(assert true)
(define-const var2468 String (append/672562846 var473!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var473!2 String)
(assert (= var473!2 (str.++ var473!1 "clear")))
(assert true)
(define-const var2630 String (append/672562846 var2468 var2657)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2468!1 String)
(assert (= var2468!1 (str.++ var2468 var2657)))
(assert true)
(define-const var3199 String (toString/-2075883882 var2630)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var982 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var2933 var2529 (var1577_access$1000/-414113668 var2698 var3199 var982)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var2981!7 var2729)
(assert (not (= var2981!7 null-var2729)))
(assert (= (clearMethod/1159159905 var2981!7) var2933)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (= (ite var3948 1 0) 0)) ; Cond: z1 == 0 
(define-const var3679 var2529 null-var2529) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2981!8 var2729)
(assert (not (= var2981!8 null-var2729)))
(assert (= (caseMethod/1159159905 var2981!8) var3679)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (= (ite var3948 1 0) 0)) ; Cond: z1 == 0 
(define-const var1180 var2529 null-var2529) ; Statement: $r57 = null 
(assert true) ; Non Conditional
(declare-const var2981!9 var2729)
(assert (not (= var2981!9 null-var2729)))
(assert (= (caseMethodBuilder/1159159905 var2981!9) var1180)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2729-to-var1740=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1577_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var2729=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var2981=r0, var1122=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3182=r53, var2657=r3, var3098=null_type, var2134=r1, var2698=r9, var1134=r31, var3948=z1, var116=z0, var1740=java.lang.Object, var3458=$r2, var167=$r4, var44=$r5, var1714=$r7, var3079=$r6, var2529=java.lang.reflect.Method, var1577=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1229=$r8, var2816=$r10, var3466=$r11, var1479=$r12, var3097=$r14, var2589=$r13, var3206=$r15, var450=$r16, var3789=r17, var3032=$r18, var3800=$r19, var455=$r20, var2970=$r22, var3133=$r21, var3527=$r23, var2486=$r48, var1457=$r49, var1891=$r50, var1411=$r52, var3640=$r51, var771=$r54, var1017=$r43, var3015=$r44, var2431=$r45, var465=$r47, var3812=$r46, var197=$r55, var473=$r24, var2468=$r25, var2630=$r26, var3199=$r28, var982=$r27, var2933=$r29, var3679=$r56, var1180=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var2729, r0=var2981, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1122, r53=var3182, r3=var2657, null_type=var3098, r1=var2134, r9=var2698, r31=var1134, z1=var3948, z0=var116, java.lang.Object=var1740, $r2=var3458, $r4=var167, $r5=var44, $r7=var1714, $r6=var3079, java.lang.reflect.Method=var2529, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1577, $r8=var1229, $r10=var2816, $r11=var3466, $r12=var1479, $r14=var3097, $r13=var2589, $r15=var3206, $r16=var450, r17=var3789, $r18=var3032, $r19=var3800, $r20=var455, $r22=var2970, $r21=var3133, $r23=var3527, $r48=var2486, $r49=var1457, $r50=var1891, $r52=var1411, $r51=var3640, $r54=var771, $r43=var1017, $r44=var3015, $r45=var2431, $r47=var465, $r46=var3812, $r55=var197, $r24=var473, $r25=var2468, $r26=var2630, $r28=var3199, $r27=var982, $r29=var2933, $r56=var3679, $r57=var1180}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.String toString()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	$r51 = newarray (java.lang.Class)[0];	$r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	$r46 = newarray (java.lang.Class)[0];	$r55 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r47, $r46);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r56 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r57 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9