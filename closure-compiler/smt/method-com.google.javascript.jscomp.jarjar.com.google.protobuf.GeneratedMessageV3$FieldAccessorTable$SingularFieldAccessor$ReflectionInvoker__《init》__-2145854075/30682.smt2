(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var1551 0)
(declare-sort var308 0)
(declare-sort var663 0)
(declare-sort var3323 0)
(declare-sort var1823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var663) void)
(declare-fun cast-from-var1386-to-var663 (var1386) var663)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1823_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var3323)
(declare-fun getMethod/1159159905 (var1386) var3323)
(declare-fun getMethodBuilder/1159159905 (var1386) var3323)
(declare-fun getReturnType/-1494237887 (var3323) ClassObject)
(declare-fun setMethod/1159159905 (var1386) var3323)
(declare-fun hasMethod/1159159905 (var1386) var3323)
(declare-fun hasMethodBuilder/1159159905 (var1386) var3323)
(declare-fun clearMethod/1159159905 (var1386) var3323)
(declare-fun caseMethod/1159159905 (var1386) var3323)
(declare-fun caseMethodBuilder/1159159905 (var1386) var3323)
(declare-const null-var1386 var1386)
(declare-const null-var1551 var1551)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3323 var3323)
(declare-const var3565 var1386) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var3565 null-var1386)))
(declare-const var2691 var1551) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2691 null-var1551)))
(declare-const var3663 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3663 null-String)))
(declare-const var3075 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var3075 null-ClassObject)))
(declare-const var356 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var356 null-ClassObject)))
(declare-const var874 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var874 null-String)))
(declare-const var2384 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var2384 null-Bool)))
(declare-const var383 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var383 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1386-to-var663 var3565))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3565!1 var1386)
(define-const var3550 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3550)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3550!1 String)
(assert (= var3550!1 ""))
(assert true)
(define-const var3168 String (append/672562846 var3550!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3550!2 String)
(assert (= var3550!2 (str.++ var3550!1 "get")))
(assert true)
(define-const var338 String (append/672562846 var3168 var3663)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3168!1 String)
(assert (= var3168!1 (str.++ var3168 var3663)))
(assert true)
(define-const var2961 String (toString/-2075883882 var338)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2923 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var2236 var3323 (var1823_access$1000/-414113668 var3075 var2961 var2923)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var3565!2 var1386)
(assert (not (= var3565!2 null-var1386)))
(assert (= (getMethod/1159159905 var3565!2) var2236)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var2831 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2831)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2831!1 String)
(assert (= var2831!1 ""))
(assert true)
(define-const var2275 String (append/672562846 var2831!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2831!2 String)
(assert (= var2831!2 (str.++ var2831!1 "get")))
(assert true)
(define-const var3692 String (append/672562846 var2275 var3663)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2275!1 String)
(assert (= var2275!1 (str.++ var2275 var3663)))
(assert true)
(define-const var3842 String (toString/-2075883882 var3692)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2782 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var1931 var3323 (var1823_access$1000/-414113668 var356 var3842 var2782)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var3565!3 var1386)
(assert (not (= var3565!3 null-var1386)))
(assert (= (getMethodBuilder/1159159905 var3565!3) var1931)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var3604 var3323 (getMethod/1159159905 var3565!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var2510 ClassObject (getReturnType/-1494237887 var3604)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var849 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var849)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var849!1 String)
(assert (= var849!1 ""))
(assert true)
(define-const var1264 String (append/672562846 var849!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var849!2 String)
(assert (= var849!2 (str.++ var849!1 "set")))
(assert true)
(define-const var2094 String (append/672562846 var1264 var3663)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1264!1 String)
(assert (= var1264!1 (str.++ var1264 var3663)))
(assert true)
(define-const var283 String (toString/-2075883882 var2094)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3216 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var3216!1 (Array Int ClassObject))
(assert (not (= var3216!1 null-__Array__Int__ClassObject__)))
(assert (= (select var3216!1 0) var2510)) ; Statement: $r21[0] = r17 
(define-const var485 var3323 (var1823_access$1000/-414113668 var356 var283 var3216!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var3565!4 var1386)
(assert (not (= var3565!4 null-var1386)))
(assert (= (setMethod/1159159905 var3565!4) var485)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (= (ite var383 1 0) 0)) ; Cond: z0 == 0 
(define-const var2507 var3323 null-var3323) ; Statement: $r54 = null 
(assert true) ; Non Conditional
(declare-const var3565!5 var1386)
(assert (not (= var3565!5 null-var1386)))
(assert (= (hasMethod/1159159905 var3565!5) var2507)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (= (ite var383 1 0) 0)) ; Cond: z0 == 0 
(define-const var2699 var3323 null-var3323) ; Statement: $r55 = null 
(assert true) ; Non Conditional
(declare-const var3565!6 var1386)
(assert (not (= var3565!6 null-var1386)))
(assert (= (hasMethodBuilder/1159159905 var3565!6) var2699)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var2568 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2568)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2568!1 String)
(assert (= var2568!1 ""))
(assert true)
(define-const var3764 String (append/672562846 var2568!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var2568!2 String)
(assert (= var2568!2 (str.++ var2568!1 "clear")))
(assert true)
(define-const var783 String (append/672562846 var3764 var3663)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3764!1 String)
(assert (= var3764!1 (str.++ var3764 var3663)))
(assert true)
(define-const var1330 String (toString/-2075883882 var783)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3905 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var1784 var3323 (var1823_access$1000/-414113668 var356 var1330 var3905)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var3565!7 var1386)
(assert (not (= var3565!7 null-var1386)))
(assert (= (clearMethod/1159159905 var3565!7) var1784)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (not (= (ite var2384 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1576 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1576)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1576!1 String)
(assert (= var1576!1 ""))
(assert true)
(define-const var3702 String (append/672562846 var1576!1 "get")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1576!2 String)
(assert (= var1576!2 (str.++ var1576!1 "get")))
(assert true)
(define-const var1966 String (append/672562846 var3702 var874)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var3702!1 String)
(assert (= var3702!1 (str.++ var3702 var874)))
(assert true)
(define-const var1901 String (append/672562846 var1966 "Case")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var1966!1 String)
(assert (= var1966!1 (str.++ var1966 "Case")))
(assert true)
(define-const var2868 String (toString/-2075883882 var1901)) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var638 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r41 = newarray (java.lang.Class)[0] 
(define-const var1117 var3323 (var1823_access$1000/-414113668 var3075 var2868 var638)) ; Statement: $r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56] 
(assert true) ; Non Conditional
(declare-const var3565!8 var1386)
(assert (not (= var3565!8 null-var1386)))
(assert (= (caseMethod/1159159905 var3565!8) var1117)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (= (ite var2384 1 0) 0)) ; Cond: z1 == 0 
(define-const var2294 var3323 null-var3323) ; Statement: $r57 = null 
(assert true) ; Non Conditional
(declare-const var3565!9 var1386)
(assert (not (= var3565!9 null-var1386)))
(assert (= (caseMethodBuilder/1159159905 var3565!9) var2294)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1386-to-var663=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1823_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var1386=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var3565=r0, var1551=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2691=r53, var3663=r3, var308=null_type, var3075=r1, var356=r9, var874=r31, var2384=z1, var383=z0, var663=java.lang.Object, var3550=$r2, var3168=$r4, var338=$r5, var2961=$r7, var2923=$r6, var3323=java.lang.reflect.Method, var1823=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2236=$r8, var2831=$r10, var2275=$r11, var3692=$r12, var3842=$r14, var2782=$r13, var1931=$r15, var3604=$r16, var2510=r17, var849=$r18, var1264=$r19, var2094=$r20, var283=$r22, var3216=$r21, var485=$r23, var2507=$r54, var2699=$r55, var2568=$r24, var3764=$r25, var783=$r26, var1330=$r28, var3905=$r27, var1784=$r29, var1576=$r37, var3702=$r38, var1966=$r39, var1901=$r40, var2868=$r42, var638=$r41, var1117=$r56, var2294=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var1386, r0=var3565, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1551, r53=var2691, r3=var3663, null_type=var308, r1=var3075, r9=var356, r31=var874, z1=var2384, z0=var383, java.lang.Object=var663, $r2=var3550, $r4=var3168, $r5=var338, $r7=var2961, $r6=var2923, java.lang.reflect.Method=var3323, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1823, $r8=var2236, $r10=var2831, $r11=var2275, $r12=var3692, $r14=var3842, $r13=var2782, $r15=var1931, $r16=var3604, r17=var2510, $r18=var849, $r19=var1264, $r20=var2094, $r22=var283, $r21=var3216, $r23=var485, $r54=var2507, $r55=var2699, $r24=var2568, $r25=var3764, $r26=var783, $r28=var1330, $r27=var3905, $r29=var1784, $r37=var1576, $r38=var3702, $r39=var1966, $r40=var1901, $r42=var2868, $r41=var638, $r56=var1117, $r57=var2294}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r54 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r55 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = newarray (java.lang.Class)[0];	$r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r57 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9