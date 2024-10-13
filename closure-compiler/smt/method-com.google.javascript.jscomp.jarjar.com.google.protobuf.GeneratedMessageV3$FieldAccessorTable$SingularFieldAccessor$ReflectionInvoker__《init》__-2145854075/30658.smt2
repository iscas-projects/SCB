(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1570 0)
(declare-sort var796 0)
(declare-sort var2221 0)
(declare-sort var1797 0)
(declare-sort var3815 0)
(declare-sort var3402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1797) void)
(declare-fun cast-from-var1570-to-var1797 (var1570) var1797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3402_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var3815)
(declare-fun getMethod/1159159905 (var1570) var3815)
(declare-fun getMethodBuilder/1159159905 (var1570) var3815)
(declare-fun getReturnType/-1494237887 (var3815) ClassObject)
(declare-fun setMethod/1159159905 (var1570) var3815)
(declare-fun hasMethod/1159159905 (var1570) var3815)
(declare-fun hasMethodBuilder/1159159905 (var1570) var3815)
(declare-fun clearMethod/1159159905 (var1570) var3815)
(declare-fun caseMethod/1159159905 (var1570) var3815)
(declare-fun caseMethodBuilder/1159159905 (var1570) var3815)
(declare-const null-var1570 var1570)
(declare-const null-var796 var796)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3815 var3815)
(declare-const var3450 var1570) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var3450 null-var1570)))
(declare-const var205 var796) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var205 null-var796)))
(declare-const var908 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var908 null-String)))
(declare-const var580 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var580 null-ClassObject)))
(declare-const var3196 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var3196 null-ClassObject)))
(declare-const var3415 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var3415 null-String)))
(declare-const var549 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var549 null-Bool)))
(declare-const var1612 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var1612 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1570-to-var1797 var3450))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3450!1 var1570)
(define-const var296 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var296)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var296!1 String)
(assert (= var296!1 ""))
(assert true)
(define-const var1534 String (append/672562846 var296!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var296!2 String)
(assert (= var296!2 (str.++ var296!1 "get")))
(assert true)
(define-const var545 String (append/672562846 var1534 var908)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1534!1 String)
(assert (= var1534!1 (str.++ var1534 var908)))
(assert true)
(define-const var2410 String (toString/-2075883882 var545)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1713 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var2657 var3815 (var3402_access$1000/-414113668 var580 var2410 var1713)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var3450!2 var1570)
(assert (not (= var3450!2 null-var1570)))
(assert (= (getMethod/1159159905 var3450!2) var2657)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var91 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var91)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var91!1 String)
(assert (= var91!1 ""))
(assert true)
(define-const var2086 String (append/672562846 var91!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var91!2 String)
(assert (= var91!2 (str.++ var91!1 "get")))
(assert true)
(define-const var648 String (append/672562846 var2086 var908)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2086!1 String)
(assert (= var2086!1 (str.++ var2086 var908)))
(assert true)
(define-const var3009 String (toString/-2075883882 var648)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2606 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var1411 var3815 (var3402_access$1000/-414113668 var3196 var3009 var2606)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var3450!3 var1570)
(assert (not (= var3450!3 null-var1570)))
(assert (= (getMethodBuilder/1159159905 var3450!3) var1411)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var2916 var3815 (getMethod/1159159905 var3450!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var3539 ClassObject (getReturnType/-1494237887 var2916)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var919 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var919)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var919!1 String)
(assert (= var919!1 ""))
(assert true)
(define-const var3904 String (append/672562846 var919!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var919!2 String)
(assert (= var919!2 (str.++ var919!1 "set")))
(assert true)
(define-const var3357 String (append/672562846 var3904 var908)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3904!1 String)
(assert (= var3904!1 (str.++ var3904 var908)))
(assert true)
(define-const var2442 String (toString/-2075883882 var3357)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3562 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var3562!1 (Array Int ClassObject))
(assert (not (= var3562!1 null-__Array__Int__ClassObject__)))
(assert (= (select var3562!1 0) var3539)) ; Statement: $r21[0] = r17 
(define-const var3264 var3815 (var3402_access$1000/-414113668 var3196 var2442 var3562!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var3450!4 var1570)
(assert (not (= var3450!4 null-var1570)))
(assert (= (setMethod/1159159905 var3450!4) var3264)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (= (ite var1612 1 0) 0)) ; Cond: z0 == 0 
(define-const var1427 var3815 null-var3815) ; Statement: $r54 = null 
(assert true) ; Non Conditional
(declare-const var3450!5 var1570)
(assert (not (= var3450!5 null-var1570)))
(assert (= (hasMethod/1159159905 var3450!5) var1427)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (not (= (ite var1612 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3963 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3963)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3963!1 String)
(assert (= var3963!1 ""))
(assert true)
(define-const var1730 String (append/672562846 var3963!1 "has")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var3963!2 String)
(assert (= var3963!2 (str.++ var3963!1 "has")))
(assert true)
(define-const var729 String (append/672562846 var1730 var908)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1730!1 String)
(assert (= var1730!1 (str.++ var1730 var908)))
(assert true)
(define-const var1901 String (toString/-2075883882 var729)) ; Statement: $r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1482 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r46 = newarray (java.lang.Class)[0] 
(define-const var824 var3815 (var3402_access$1000/-414113668 var3196 var1901 var1482)) ; Statement: $r55 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r47, $r46) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55] 
(assert true) ; Non Conditional
(declare-const var3450!6 var1570)
(assert (not (= var3450!6 null-var1570)))
(assert (= (hasMethodBuilder/1159159905 var3450!6) var824)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var3201 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3201)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3201!1 String)
(assert (= var3201!1 ""))
(assert true)
(define-const var3985 String (append/672562846 var3201!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var3201!2 String)
(assert (= var3201!2 (str.++ var3201!1 "clear")))
(assert true)
(define-const var2805 String (append/672562846 var3985 var908)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3985!1 String)
(assert (= var3985!1 (str.++ var3985 var908)))
(assert true)
(define-const var3692 String (toString/-2075883882 var2805)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var611 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var2643 var3815 (var3402_access$1000/-414113668 var3196 var3692 var611)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var3450!7 var1570)
(assert (not (= var3450!7 null-var1570)))
(assert (= (clearMethod/1159159905 var3450!7) var2643)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (= (ite var549 1 0) 0)) ; Cond: z1 == 0 
(define-const var1025 var3815 null-var3815) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3450!8 var1570)
(assert (not (= var3450!8 null-var1570)))
(assert (= (caseMethod/1159159905 var3450!8) var1025)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (= (ite var549 1 0) 0)) ; Cond: z1 == 0 
(define-const var1371 var3815 null-var3815) ; Statement: $r57 = null 
(assert true) ; Non Conditional
(declare-const var3450!9 var1570)
(assert (not (= var3450!9 null-var1570)))
(assert (= (caseMethodBuilder/1159159905 var3450!9) var1371)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1570-to-var1797=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3402_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var1570=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var3450=r0, var796=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var205=r53, var908=r3, var2221=null_type, var580=r1, var3196=r9, var3415=r31, var549=z1, var1612=z0, var1797=java.lang.Object, var296=$r2, var1534=$r4, var545=$r5, var2410=$r7, var1713=$r6, var3815=java.lang.reflect.Method, var3402=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2657=$r8, var91=$r10, var2086=$r11, var648=$r12, var3009=$r14, var2606=$r13, var1411=$r15, var2916=$r16, var3539=r17, var919=$r18, var3904=$r19, var3357=$r20, var2442=$r22, var3562=$r21, var3264=$r23, var1427=$r54, var3963=$r43, var1730=$r44, var729=$r45, var1901=$r47, var1482=$r46, var824=$r55, var3201=$r24, var3985=$r25, var2805=$r26, var3692=$r28, var611=$r27, var2643=$r29, var1025=$r56, var1371=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var1570, r0=var3450, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var796, r53=var205, r3=var908, null_type=var2221, r1=var580, r9=var3196, r31=var3415, z1=var549, z0=var1612, java.lang.Object=var1797, $r2=var296, $r4=var1534, $r5=var545, $r7=var2410, $r6=var1713, java.lang.reflect.Method=var3815, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3402, $r8=var2657, $r10=var91, $r11=var2086, $r12=var648, $r14=var3009, $r13=var2606, $r15=var1411, $r16=var2916, r17=var3539, $r18=var919, $r19=var3904, $r20=var3357, $r22=var2442, $r21=var3562, $r23=var3264, $r54=var1427, $r43=var3963, $r44=var1730, $r45=var729, $r47=var1901, $r46=var1482, $r55=var824, $r24=var3201, $r25=var3985, $r26=var2805, $r28=var3692, $r27=var611, $r29=var2643, $r56=var1025, $r57=var1371}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r54 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	$r46 = newarray (java.lang.Class)[0];	$r55 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r47, $r46);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r56 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r57 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9