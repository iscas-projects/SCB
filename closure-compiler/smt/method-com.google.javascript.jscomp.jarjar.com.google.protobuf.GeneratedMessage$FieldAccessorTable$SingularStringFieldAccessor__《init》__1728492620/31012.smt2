(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var304 0)
(declare-sort var2972 0)
(declare-sort var2377 0)
(declare-sort var1018 0)
(declare-sort var2853 0)
(declare-sort var376 0)
(declare-sort var3263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3263!class ClassObject)
(declare-fun <init>/1239481819 (var1018 var2972 String ClassObject ClassObject String) void)
(declare-fun cast-from-var304-to-var1018 (var304) var1018)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var376_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var2853)
(declare-fun getBytesMethod/220151874 (var304) var2853)
(declare-fun getBytesMethodBuilder/220151874 (var304) var2853)
(declare-fun setBytesMethodBuilder/220151874 (var304) var2853)
(declare-const null-var304 var304)
(declare-const null-var2972 var2972)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3392 var304) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor 
(assert (not (= var3392 null-var304)))
(declare-const var2461 var2972) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2461 null-var2972)))
(declare-const var1789 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1789 null-String)))
(declare-const var1174 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var1174 null-ClassObject)))
(declare-const var2180 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var2180 null-ClassObject)))
(declare-const var3244 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var3244 null-String)))
(assert true)
;(assert (<init>/1239481819 (cast-from-var304-to-var1018 var3392) var2461 var1789 var1174 var2180 var3244)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5) 

(declare-const var3392!1 var304)
(declare-const var2461!1 var2972)
(declare-const var1789!1 String)
(declare-const var1174!1 ClassObject)
(declare-const var2180!1 ClassObject)
(declare-const var3244!1 String)
(define-const var3623 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3623)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3623!1 String)
(assert (= var3623!1 ""))
(assert true)
(define-const var2259 String (append/672562846 var3623!1 "get")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3623!2 String)
(assert (= var3623!2 (str.++ var3623!1 "get")))
(assert true)
(define-const var1251 String (append/672562846 var2259 var1789!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2259!1 String)
(assert (= var2259!1 (str.++ var2259 var1789!1)))
(assert true)
(define-const var202 String (append/672562846 var1251 "Bytes")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes") 
(declare-const var1251!1 String)
(assert (= var1251!1 (str.++ var1251 "Bytes")))
(assert true)
(define-const var2318 String (toString/-2075883882 var202)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2766 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r10 = newarray (java.lang.Class)[0] 
(define-const var3811 var2853 (var376_access$1100/1219209240 var1174!1 var2318 var2766)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r3, $r11, $r10) 
(declare-const var3392!2 var304)
(assert (not (= var3392!2 null-var304)))
(assert (= (getBytesMethod/220151874 var3392!2) var3811)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethod> = $r12 
(define-const var3009 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3009)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3009!1 String)
(assert (= var3009!1 ""))
(assert true)
(define-const var1655 String (append/672562846 var3009!1 "get")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3009!2 String)
(assert (= var3009!2 (str.++ var3009!1 "get")))
(assert true)
(define-const var3467 String (append/672562846 var1655 var1789!1)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1655!1 String)
(assert (= var1655!1 (str.++ var1655 var1789!1)))
(assert true)
(define-const var572 String (append/672562846 var3467 "Bytes")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes") 
(declare-const var3467!1 String)
(assert (= var3467!1 (str.++ var3467 "Bytes")))
(assert true)
(define-const var367 String (toString/-2075883882 var572)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3661 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r17 = newarray (java.lang.Class)[0] 
(define-const var2604 var2853 (var376_access$1100/1219209240 var2180!1 var367 var3661)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r18, $r17) 
(declare-const var3392!3 var304)
(assert (not (= var3392!3 null-var304)))
(assert (= (getBytesMethodBuilder/220151874 var3392!3) var2604)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethodBuilder> = $r19 
(define-const var2913 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2913)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2913!1 String)
(assert (= var2913!1 ""))
(assert true)
(define-const var3260 String (append/672562846 var2913!1 "set")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var2913!2 String)
(assert (= var2913!2 (str.++ var2913!1 "set")))
(assert true)
(define-const var2774 String (append/672562846 var3260 var1789!1)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3260!1 String)
(assert (= var3260!1 (str.++ var3260 var1789!1)))
(assert true)
(define-const var798 String (append/672562846 var2774 "Bytes")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes") 
(declare-const var2774!1 String)
(assert (= var2774!1 (str.++ var2774 "Bytes")))
(assert true)
(define-const var3967 String (toString/-2075883882 var798)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2005 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r24 = newarray (java.lang.Class)[1] 
(declare-const var2005!1 (Array Int ClassObject))
(assert (not (= var2005!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2005!1 0) var3263!class)) ; Statement: $r24[0] = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/ByteString;" 
(define-const var2480 var2853 (var376_access$1100/1219209240 var2180!1 var3967 var2005!1)) ; Statement: $r26 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24) 
(declare-const var3392!4 var304)
(assert (not (= var3392!4 null-var304)))
(assert (= (setBytesMethodBuilder/220151874 var3392!4) var2480)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method setBytesMethodBuilder> = $r26 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1239481819=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, java.lang.String, java.lang.Class, java.lang.Class, java.lang.String], void), cast-from-var304-to-var1018=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var376_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getBytesMethod/220151874=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor], java.lang.reflect.Method), getBytesMethodBuilder/220151874=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor], java.lang.reflect.Method), setBytesMethodBuilder/220151874=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor], java.lang.reflect.Method)}
; {var304=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor, var3392=r0, var2972=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2461=r1, var1789=r2, var2377=null_type, var1174=r3, var2180=r4, var3244=r5, var1018=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, var3623=$r6, var2259=$r7, var1251=$r8, var202=$r9, var2318=$r11, var2766=$r10, var2853=java.lang.reflect.Method, var376=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var3811=$r12, var3009=$r13, var1655=$r14, var3467=$r15, var572=$r16, var367=$r18, var3661=$r17, var2604=$r19, var2913=$r20, var3260=$r21, var2774=$r22, var798=$r23, var3967=$r25, var2005=$r24, var3263=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var2480=$r26}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor=var304, r0=var3392, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2972, r1=var2461, r2=var1789, null_type=var2377, r3=var1174, r4=var2180, r5=var3244, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor=var1018, $r6=var3623, $r7=var2259, $r8=var1251, $r9=var202, $r11=var2318, $r10=var2766, java.lang.reflect.Method=var2853, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var376, $r12=var3811, $r13=var3009, $r14=var1655, $r15=var3467, $r16=var572, $r18=var367, $r17=var3661, $r19=var2604, $r20=var2913, $r21=var3260, $r22=var2774, $r23=var798, $r25=var3967, $r24=var2005, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var3263, $r26=var2480}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Class;	r5 := @parameter4: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = newarray (java.lang.Class)[0];	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r3, $r11, $r10);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethod> = $r12;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes");	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = newarray (java.lang.Class)[0];	$r19 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r18, $r17);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethodBuilder> = $r19;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = newarray (java.lang.Class)[1];	$r24[0] = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/ByteString;";	$r26 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method setBytesMethodBuilder> = $r26;	return
;block_num 1