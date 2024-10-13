(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var309 0)
(declare-sort var358 0)
(declare-sort var2187 0)
(declare-sort var3249 0)
(declare-sort var3699 0)
(declare-sort var55 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3249) void)
(declare-fun cast-from-var309-to-var3249 (var309) var3249)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var55_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var3699)
(declare-fun getMethod/1159159905 (var309) var3699)
(declare-fun getMethodBuilder/1159159905 (var309) var3699)
(declare-fun getReturnType/-1494237887 (var3699) ClassObject)
(declare-fun setMethod/1159159905 (var309) var3699)
(declare-fun hasMethod/1159159905 (var309) var3699)
(declare-fun hasMethodBuilder/1159159905 (var309) var3699)
(declare-fun clearMethod/1159159905 (var309) var3699)
(declare-fun caseMethod/1159159905 (var309) var3699)
(declare-fun caseMethodBuilder/1159159905 (var309) var3699)
(declare-const null-var309 var309)
(declare-const null-var358 var358)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3699 var3699)
(declare-const var1993 var309) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var1993 null-var309)))
(declare-const var61 var358) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var61 null-var358)))
(declare-const var1335 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1335 null-String)))
(declare-const var2069 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var2069 null-ClassObject)))
(declare-const var1960 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var1960 null-ClassObject)))
(declare-const var2606 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var2606 null-String)))
(declare-const var1586 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var1586 null-Bool)))
(declare-const var1707 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var1707 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var309-to-var3249 var1993))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1993!1 var309)
(define-const var2455 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2455)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2455!1 String)
(assert (= var2455!1 ""))
(assert true)
(define-const var3445 String (append/672562846 var2455!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2455!2 String)
(assert (= var2455!2 (str.++ var2455!1 "get")))
(assert true)
(define-const var3693 String (append/672562846 var3445 var1335)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3445!1 String)
(assert (= var3445!1 (str.++ var3445 var1335)))
(assert true)
(define-const var3795 String (toString/-2075883882 var3693)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2685 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var2637 var3699 (var55_access$1000/-414113668 var2069 var3795 var2685)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var1993!2 var309)
(assert (not (= var1993!2 null-var309)))
(assert (= (getMethod/1159159905 var1993!2) var2637)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var3686 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3686)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3686!1 String)
(assert (= var3686!1 ""))
(assert true)
(define-const var2929 String (append/672562846 var3686!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3686!2 String)
(assert (= var3686!2 (str.++ var3686!1 "get")))
(assert true)
(define-const var1800 String (append/672562846 var2929 var1335)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2929!1 String)
(assert (= var2929!1 (str.++ var2929 var1335)))
(assert true)
(define-const var1643 String (toString/-2075883882 var1800)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var10 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var1086 var3699 (var55_access$1000/-414113668 var1960 var1643 var10)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var1993!3 var309)
(assert (not (= var1993!3 null-var309)))
(assert (= (getMethodBuilder/1159159905 var1993!3) var1086)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var3856 var3699 (getMethod/1159159905 var1993!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var1540 ClassObject (getReturnType/-1494237887 var3856)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var1363 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1363)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1363!1 String)
(assert (= var1363!1 ""))
(assert true)
(define-const var1548 String (append/672562846 var1363!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var1363!2 String)
(assert (= var1363!2 (str.++ var1363!1 "set")))
(assert true)
(define-const var1787 String (append/672562846 var1548 var1335)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1548!1 String)
(assert (= var1548!1 (str.++ var1548 var1335)))
(assert true)
(define-const var2974 String (toString/-2075883882 var1787)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2266 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var2266!1 (Array Int ClassObject))
(assert (not (= var2266!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2266!1 0) var1540)) ; Statement: $r21[0] = r17 
(define-const var297 var3699 (var55_access$1000/-414113668 var1960 var2974 var2266!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var1993!4 var309)
(assert (not (= var1993!4 null-var309)))
(assert (= (setMethod/1159159905 var1993!4) var297)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (= (ite var1707 1 0) 0)) ; Cond: z0 == 0 
(define-const var864 var3699 null-var3699) ; Statement: $r54 = null 
(assert true) ; Non Conditional
(declare-const var1993!5 var309)
(assert (not (= var1993!5 null-var309)))
(assert (= (hasMethod/1159159905 var1993!5) var864)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (= (ite var1707 1 0) 0)) ; Cond: z0 == 0 
(define-const var1059 var3699 null-var3699) ; Statement: $r55 = null 
(assert true) ; Non Conditional
(declare-const var1993!6 var309)
(assert (not (= var1993!6 null-var309)))
(assert (= (hasMethodBuilder/1159159905 var1993!6) var1059)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var3078 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3078)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3078!1 String)
(assert (= var3078!1 ""))
(assert true)
(define-const var3365 String (append/672562846 var3078!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var3078!2 String)
(assert (= var3078!2 (str.++ var3078!1 "clear")))
(assert true)
(define-const var3593 String (append/672562846 var3365 var1335)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3365!1 String)
(assert (= var3365!1 (str.++ var3365 var1335)))
(assert true)
(define-const var1766 String (toString/-2075883882 var3593)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1657 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var1147 var3699 (var55_access$1000/-414113668 var1960 var1766 var1657)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var1993!7 var309)
(assert (not (= var1993!7 null-var309)))
(assert (= (clearMethod/1159159905 var1993!7) var1147)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (= (ite var1586 1 0) 0)) ; Cond: z1 == 0 
(define-const var2413 var3699 null-var3699) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1993!8 var309)
(assert (not (= var1993!8 null-var309)))
(assert (= (caseMethod/1159159905 var1993!8) var2413)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (= (ite var1586 1 0) 0)) ; Cond: z1 == 0 
(define-const var569 var3699 null-var3699) ; Statement: $r57 = null 
(assert true) ; Non Conditional
(declare-const var1993!9 var309)
(assert (not (= var1993!9 null-var309)))
(assert (= (caseMethodBuilder/1159159905 var1993!9) var569)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var309-to-var3249=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var55_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var309=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var1993=r0, var358=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var61=r53, var1335=r3, var2187=null_type, var2069=r1, var1960=r9, var2606=r31, var1586=z1, var1707=z0, var3249=java.lang.Object, var2455=$r2, var3445=$r4, var3693=$r5, var3795=$r7, var2685=$r6, var3699=java.lang.reflect.Method, var55=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2637=$r8, var3686=$r10, var2929=$r11, var1800=$r12, var1643=$r14, var10=$r13, var1086=$r15, var3856=$r16, var1540=r17, var1363=$r18, var1548=$r19, var1787=$r20, var2974=$r22, var2266=$r21, var297=$r23, var864=$r54, var1059=$r55, var3078=$r24, var3365=$r25, var3593=$r26, var1766=$r28, var1657=$r27, var1147=$r29, var2413=$r56, var569=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var309, r0=var1993, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var358, r53=var61, r3=var1335, null_type=var2187, r1=var2069, r9=var1960, r31=var2606, z1=var1586, z0=var1707, java.lang.Object=var3249, $r2=var2455, $r4=var3445, $r5=var3693, $r7=var3795, $r6=var2685, java.lang.reflect.Method=var3699, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var55, $r8=var2637, $r10=var3686, $r11=var2929, $r12=var1800, $r14=var1643, $r13=var10, $r15=var1086, $r16=var3856, r17=var1540, $r18=var1363, $r19=var1548, $r20=var1787, $r22=var2974, $r21=var2266, $r23=var297, $r54=var864, $r55=var1059, $r24=var3078, $r25=var3365, $r26=var3593, $r28=var1766, $r27=var1657, $r29=var1147, $r56=var2413, $r57=var569}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r54 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r55 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r56 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r57 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9