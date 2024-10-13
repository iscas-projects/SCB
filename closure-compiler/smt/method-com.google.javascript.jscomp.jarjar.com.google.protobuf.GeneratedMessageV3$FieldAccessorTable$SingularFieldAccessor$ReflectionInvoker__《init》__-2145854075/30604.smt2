(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3625 0)
(declare-sort var2968 0)
(declare-sort var337 0)
(declare-sort var2765 0)
(declare-sort var985 0)
(declare-sort var3426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2765) void)
(declare-fun cast-from-var3625-to-var2765 (var3625) var2765)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3426_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var985)
(declare-fun getMethod/1159159905 (var3625) var985)
(declare-fun getMethodBuilder/1159159905 (var3625) var985)
(declare-fun getReturnType/-1494237887 (var985) ClassObject)
(declare-fun setMethod/1159159905 (var3625) var985)
(declare-fun hasMethod/1159159905 (var3625) var985)
(declare-fun hasMethodBuilder/1159159905 (var3625) var985)
(declare-fun clearMethod/1159159905 (var3625) var985)
(declare-fun caseMethod/1159159905 (var3625) var985)
(declare-fun caseMethodBuilder/1159159905 (var3625) var985)
(declare-const null-var3625 var3625)
(declare-const null-var2968 var2968)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var985 var985)
(declare-const var1048 var3625) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var1048 null-var3625)))
(declare-const var1924 var2968) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var1924 null-var2968)))
(declare-const var2573 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2573 null-String)))
(declare-const var1104 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var1104 null-ClassObject)))
(declare-const var3822 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var3822 null-ClassObject)))
(declare-const var3138 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var3138 null-String)))
(declare-const var3321 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var3321 null-Bool)))
(declare-const var1677 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var1677 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3625-to-var2765 var1048))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1048!1 var3625)
(define-const var2046 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2046)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2046!1 String)
(assert (= var2046!1 ""))
(assert true)
(define-const var3490 String (append/672562846 var2046!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2046!2 String)
(assert (= var2046!2 (str.++ var2046!1 "get")))
(assert true)
(define-const var3304 String (append/672562846 var3490 var2573)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3490!1 String)
(assert (= var3490!1 (str.++ var3490 var2573)))
(assert true)
(define-const var3947 String (toString/-2075883882 var3304)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3737 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var1344 var985 (var3426_access$1000/-414113668 var1104 var3947 var3737)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var1048!2 var3625)
(assert (not (= var1048!2 null-var3625)))
(assert (= (getMethod/1159159905 var1048!2) var1344)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var1312 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1312)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1312!1 String)
(assert (= var1312!1 ""))
(assert true)
(define-const var487 String (append/672562846 var1312!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1312!2 String)
(assert (= var1312!2 (str.++ var1312!1 "get")))
(assert true)
(define-const var2890 String (append/672562846 var487 var2573)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var487!1 String)
(assert (= var487!1 (str.++ var487 var2573)))
(assert true)
(define-const var2806 String (toString/-2075883882 var2890)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var751 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var3325 var985 (var3426_access$1000/-414113668 var3822 var2806 var751)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var1048!3 var3625)
(assert (not (= var1048!3 null-var3625)))
(assert (= (getMethodBuilder/1159159905 var1048!3) var3325)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var1526 var985 (getMethod/1159159905 var1048!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var2791 ClassObject (getReturnType/-1494237887 var1526)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var2154 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2154)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2154!1 String)
(assert (= var2154!1 ""))
(assert true)
(define-const var3721 String (append/672562846 var2154!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var2154!2 String)
(assert (= var2154!2 (str.++ var2154!1 "set")))
(assert true)
(define-const var1428 String (append/672562846 var3721 var2573)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3721!1 String)
(assert (= var3721!1 (str.++ var3721 var2573)))
(assert true)
(define-const var354 String (toString/-2075883882 var1428)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1442 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var1442!1 (Array Int ClassObject))
(assert (not (= var1442!1 null-__Array__Int__ClassObject__)))
(assert (= (select var1442!1 0) var2791)) ; Statement: $r21[0] = r17 
(define-const var1388 var985 (var3426_access$1000/-414113668 var3822 var354 var1442!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var1048!4 var3625)
(assert (not (= var1048!4 null-var3625)))
(assert (= (setMethod/1159159905 var1048!4) var1388)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (not (= (ite var1677 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1321 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1321)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1321!1 String)
(assert (= var1321!1 ""))
(assert true)
(define-const var1096 String (append/672562846 var1321!1 "has")) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var1321!2 String)
(assert (= var1321!2 (str.++ var1321!1 "has")))
(assert true)
(define-const var3467 String (append/672562846 var1096 var2573)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1096!1 String)
(assert (= var1096!1 (str.++ var1096 var2573)))
(assert true)
(define-const var3877 String (toString/-2075883882 var3467)) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1995 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r51 = newarray (java.lang.Class)[0] 
(define-const var867 var985 (var3426_access$1000/-414113668 var1104 var3877 var1995)) ; Statement: $r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54] 
(assert true) ; Non Conditional
(declare-const var1048!5 var3625)
(assert (not (= var1048!5 null-var3625)))
(assert (= (hasMethod/1159159905 var1048!5) var867)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (= (ite var1677 1 0) 0)) ; Cond: z0 == 0 
(define-const var1182 var985 null-var985) ; Statement: $r55 = null 
(assert true) ; Non Conditional
(declare-const var1048!6 var3625)
(assert (not (= var1048!6 null-var3625)))
(assert (= (hasMethodBuilder/1159159905 var1048!6) var1182)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var3966 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3966)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3966!1 String)
(assert (= var3966!1 ""))
(assert true)
(define-const var265 String (append/672562846 var3966!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var3966!2 String)
(assert (= var3966!2 (str.++ var3966!1 "clear")))
(assert true)
(define-const var3096 String (append/672562846 var265 var2573)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var265!1 String)
(assert (= var265!1 (str.++ var265 var2573)))
(assert true)
(define-const var2990 String (toString/-2075883882 var3096)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2789 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var3807 var985 (var3426_access$1000/-414113668 var3822 var2990 var2789)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var1048!7 var3625)
(assert (not (= var1048!7 null-var3625)))
(assert (= (clearMethod/1159159905 var1048!7) var3807)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (= (ite var3321 1 0) 0)) ; Cond: z1 == 0 
(define-const var24 var985 null-var985) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1048!8 var3625)
(assert (not (= var1048!8 null-var3625)))
(assert (= (caseMethod/1159159905 var1048!8) var24)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (= (ite var3321 1 0) 0)) ; Cond: z1 == 0 
(define-const var774 var985 null-var985) ; Statement: $r57 = null 
(assert true) ; Non Conditional
(declare-const var1048!9 var3625)
(assert (not (= var1048!9 null-var3625)))
(assert (= (caseMethodBuilder/1159159905 var1048!9) var774)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3625-to-var2765=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3426_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var3625=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var1048=r0, var2968=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1924=r53, var2573=r3, var337=null_type, var1104=r1, var3822=r9, var3138=r31, var3321=z1, var1677=z0, var2765=java.lang.Object, var2046=$r2, var3490=$r4, var3304=$r5, var3947=$r7, var3737=$r6, var985=java.lang.reflect.Method, var3426=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1344=$r8, var1312=$r10, var487=$r11, var2890=$r12, var2806=$r14, var751=$r13, var3325=$r15, var1526=$r16, var2791=r17, var2154=$r18, var3721=$r19, var1428=$r20, var354=$r22, var1442=$r21, var1388=$r23, var1321=$r48, var1096=$r49, var3467=$r50, var3877=$r52, var1995=$r51, var867=$r54, var1182=$r55, var3966=$r24, var265=$r25, var3096=$r26, var2990=$r28, var2789=$r27, var3807=$r29, var24=$r56, var774=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var3625, r0=var1048, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2968, r53=var1924, r3=var2573, null_type=var337, r1=var1104, r9=var3822, r31=var3138, z1=var3321, z0=var1677, java.lang.Object=var2765, $r2=var2046, $r4=var3490, $r5=var3304, $r7=var3947, $r6=var3737, java.lang.reflect.Method=var985, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3426, $r8=var1344, $r10=var1312, $r11=var487, $r12=var2890, $r14=var2806, $r13=var751, $r15=var3325, $r16=var1526, r17=var2791, $r18=var2154, $r19=var3721, $r20=var1428, $r22=var354, $r21=var1442, $r23=var1388, $r48=var1321, $r49=var1096, $r50=var3467, $r52=var3877, $r51=var1995, $r54=var867, $r55=var1182, $r24=var3966, $r25=var265, $r26=var3096, $r28=var2990, $r27=var2789, $r29=var3807, $r56=var24, $r57=var774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	$r51 = newarray (java.lang.Class)[0];	$r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r55 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r56 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r57 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9