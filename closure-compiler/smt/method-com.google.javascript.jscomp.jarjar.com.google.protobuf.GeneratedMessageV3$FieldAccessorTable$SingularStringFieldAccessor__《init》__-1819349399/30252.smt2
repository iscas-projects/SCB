(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var261 0)
(declare-sort var2872 0)
(declare-sort var1139 0)
(declare-sort var3266 0)
(declare-sort var2490 0)
(declare-sort var3556 0)
(declare-sort var2515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2515!class ClassObject)
(declare-fun <init>/657609144 (var3266 var2872 String ClassObject ClassObject String) void)
(declare-fun cast-from-var261-to-var3266 (var261) var3266)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3556_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var2490)
(declare-fun getBytesMethod/-1835965179 (var261) var2490)
(declare-fun getBytesMethodBuilder/-1835965179 (var261) var2490)
(declare-fun setBytesMethodBuilder/-1835965179 (var261) var2490)
(declare-const null-var261 var261)
(declare-const null-var2872 var2872)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var907 var261) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor 
(assert (not (= var907 null-var261)))
(declare-const var3742 var2872) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var3742 null-var2872)))
(declare-const var1562 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1562 null-String)))
(declare-const var1204 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var1204 null-ClassObject)))
(declare-const var3626 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var3626 null-ClassObject)))
(declare-const var2464 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var2464 null-String)))
(assert true)
;(assert (<init>/657609144 (cast-from-var261-to-var3266 var907) var3742 var1562 var1204 var3626 var2464)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5) 

(declare-const var907!1 var261)
(declare-const var3742!1 var2872)
(declare-const var1562!1 String)
(declare-const var1204!1 ClassObject)
(declare-const var3626!1 ClassObject)
(declare-const var2464!1 String)
(define-const var2577 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2577)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2577!1 String)
(assert (= var2577!1 ""))
(assert true)
(define-const var2157 String (append/672562846 var2577!1 "get")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2577!2 String)
(assert (= var2577!2 (str.++ var2577!1 "get")))
(assert true)
(define-const var3289 String (append/672562846 var2157 var1562!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2157!1 String)
(assert (= var2157!1 (str.++ var2157 var1562!1)))
(assert true)
(define-const var777 String (append/672562846 var3289 "Bytes")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes") 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 "Bytes")))
(assert true)
(define-const var280 String (toString/-2075883882 var777)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var960 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r10 = newarray (java.lang.Class)[0] 
(define-const var1352 var2490 (var3556_access$1000/-414113668 var1204!1 var280 var960)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r3, $r11, $r10) 
(declare-const var907!2 var261)
(assert (not (= var907!2 null-var261)))
(assert (= (getBytesMethod/-1835965179 var907!2) var1352)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethod> = $r12 
(define-const var2088 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2088)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2088!1 String)
(assert (= var2088!1 ""))
(assert true)
(define-const var873 String (append/672562846 var2088!1 "get")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2088!2 String)
(assert (= var2088!2 (str.++ var2088!1 "get")))
(assert true)
(define-const var2251 String (append/672562846 var873 var1562!1)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var873!1 String)
(assert (= var873!1 (str.++ var873 var1562!1)))
(assert true)
(define-const var3939 String (append/672562846 var2251 "Bytes")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes") 
(declare-const var2251!1 String)
(assert (= var2251!1 (str.++ var2251 "Bytes")))
(assert true)
(define-const var163 String (toString/-2075883882 var3939)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var137 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r17 = newarray (java.lang.Class)[0] 
(define-const var2676 var2490 (var3556_access$1000/-414113668 var3626!1 var163 var137)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r18, $r17) 
(declare-const var907!3 var261)
(assert (not (= var907!3 null-var261)))
(assert (= (getBytesMethodBuilder/-1835965179 var907!3) var2676)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethodBuilder> = $r19 
(define-const var2762 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2762)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2762!1 String)
(assert (= var2762!1 ""))
(assert true)
(define-const var2365 String (append/672562846 var2762!1 "set")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var2762!2 String)
(assert (= var2762!2 (str.++ var2762!1 "set")))
(assert true)
(define-const var1132 String (append/672562846 var2365 var1562!1)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2365!1 String)
(assert (= var2365!1 (str.++ var2365 var1562!1)))
(assert true)
(define-const var1793 String (append/672562846 var1132 "Bytes")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes") 
(declare-const var1132!1 String)
(assert (= var1132!1 (str.++ var1132 "Bytes")))
(assert true)
(define-const var3602 String (toString/-2075883882 var1793)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var719 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r24 = newarray (java.lang.Class)[1] 
(declare-const var719!1 (Array Int ClassObject))
(assert (not (= var719!1 null-__Array__Int__ClassObject__)))
(assert (= (select var719!1 0) var2515!class)) ; Statement: $r24[0] = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/ByteString;" 
(define-const var826 var2490 (var3556_access$1000/-414113668 var3626!1 var3602 var719!1)) ; Statement: $r26 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24) 
(declare-const var907!4 var261)
(assert (not (= var907!4 null-var261)))
(assert (= (setBytesMethodBuilder/-1835965179 var907!4) var826)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method setBytesMethodBuilder> = $r26 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/657609144=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, java.lang.String, java.lang.Class, java.lang.Class, java.lang.String], void), cast-from-var261-to-var3266=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3556_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getBytesMethod/-1835965179=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor], java.lang.reflect.Method), getBytesMethodBuilder/-1835965179=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor], java.lang.reflect.Method), setBytesMethodBuilder/-1835965179=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor], java.lang.reflect.Method)}
; {var261=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor, var907=r0, var2872=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3742=r1, var1562=r2, var1139=null_type, var1204=r3, var3626=r4, var2464=r5, var3266=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor, var2577=$r6, var2157=$r7, var3289=$r8, var777=$r9, var280=$r11, var960=$r10, var2490=java.lang.reflect.Method, var3556=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1352=$r12, var2088=$r13, var873=$r14, var2251=$r15, var3939=$r16, var163=$r18, var137=$r17, var2676=$r19, var2762=$r20, var2365=$r21, var1132=$r22, var1793=$r23, var3602=$r25, var719=$r24, var2515=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var826=$r26}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor=var261, r0=var907, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2872, r1=var3742, r2=var1562, null_type=var1139, r3=var1204, r4=var3626, r5=var2464, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor=var3266, $r6=var2577, $r7=var2157, $r8=var3289, $r9=var777, $r11=var280, $r10=var960, java.lang.reflect.Method=var2490, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3556, $r12=var1352, $r13=var2088, $r14=var873, $r15=var2251, $r16=var3939, $r18=var163, $r17=var137, $r19=var2676, $r20=var2762, $r21=var2365, $r22=var1132, $r23=var1793, $r25=var3602, $r24=var719, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2515, $r26=var826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Class;	r5 := @parameter4: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = newarray (java.lang.Class)[0];	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r3, $r11, $r10);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethod> = $r12;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes");	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = newarray (java.lang.Class)[0];	$r19 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r18, $r17);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method getBytesMethodBuilder> = $r19;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = newarray (java.lang.Class)[1];	$r24[0] = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/ByteString;";	$r26 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor: java.lang.reflect.Method setBytesMethodBuilder> = $r26;	return
;block_num 1