(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3750 0)
(declare-sort var2521 0)
(declare-sort var77 0)
(declare-sort var3537 0)
(declare-sort var139 0)
(declare-sort var3305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/657609144 (var3537 var2521 String ClassObject ClassObject String) void)
(declare-fun cast-from-var3750-to-var3537 (var3750) var3537)
(declare-fun type/1498922326 (var3537) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3305_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var139)
(declare-fun newBuilderMethod/-1649945851 (var3750) var139)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getBuilderMethodBuilder/-1649945851 (var3750) var139)
(declare-const null-var3750 var3750)
(declare-const null-var2521 var2521)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1601 var3750) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor 
(assert (not (= var1601 null-var3750)))
(declare-const var3321 var2521) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var3321 null-var2521)))
(declare-const var3810 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3810 null-String)))
(declare-const var670 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var670 null-ClassObject)))
(declare-const var1894 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var1894 null-ClassObject)))
(declare-const var197 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var197 null-String)))
(assert true)
;(assert (<init>/657609144 (cast-from-var3750-to-var3537 var1601) var3321 var3810 var670 var1894 var197)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5) 

(declare-const var1601!1 var3750)
(declare-const var3321!1 var2521)
(declare-const var3810!1 String)
(declare-const var670!1 ClassObject)
(declare-const var1894!1 ClassObject)
(declare-const var197!1 String)
(define-const var3737 ClassObject (type/1498922326 (cast-from-var3750-to-var3537 var1601!1))) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.Class type> 
(define-const var1226 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var1479 var139 (var3305_access$1000/-414113668 var3737 "newBuilder" var1226)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>($r7, "newBuilder", $r6) 
(declare-const var1601!2 var3750)
(assert (not (= var1601!2 null-var3750)))
(assert (= (newBuilderMethod/-1649945851 var1601!2) var1479)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r8 
(define-const var1003 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1003)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1003!1 String)
(assert (= var1003!1 ""))
(assert true)
(define-const var428 String (append/672562846 var1003!1 "get")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1003!2 String)
(assert (= var1003!2 (str.++ var1003!1 "get")))
(assert true)
(define-const var696 String (append/672562846 var428 var3810!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var428!1 String)
(assert (= var428!1 (str.++ var428 var3810!1)))
(assert true)
(define-const var466 String (append/672562846 var696 "Builder")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder") 
(declare-const var696!1 String)
(assert (= var696!1 (str.++ var696 "Builder")))
(assert true)
(define-const var1512 String (toString/-2075883882 var466)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3315 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var1078 var139 (var3305_access$1000/-414113668 var1894!1 var1512 var3315)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r13) 
(declare-const var1601!3 var3750)
(assert (not (= var1601!3 null-var3750)))
(assert (= (getBuilderMethodBuilder/-1649945851 var1601!3) var1078)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/657609144=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, java.lang.String, java.lang.Class, java.lang.Class, java.lang.String], void), cast-from-var3750-to-var3537=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor), type/1498922326=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var3305_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), newBuilderMethod/-1649945851=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor], java.lang.reflect.Method), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getBuilderMethodBuilder/-1649945851=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor], java.lang.reflect.Method)}
; {var3750=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor, var1601=r0, var2521=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3321=r1, var3810=r2, var77=null_type, var670=r3, var1894=r4, var197=r5, var3537=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor, var3737=$r7, var1226=$r6, var139=java.lang.reflect.Method, var3305=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1479=$r8, var1003=$r9, var428=$r10, var696=$r11, var466=$r12, var1512=$r14, var3315=$r13, var1078=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor=var3750, r0=var1601, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2521, r1=var3321, r2=var3810, null_type=var77, r3=var670, r4=var1894, r5=var197, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor=var3537, $r7=var3737, $r6=var1226, java.lang.reflect.Method=var139, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3305, $r8=var1479, $r9=var1003, $r10=var428, $r11=var696, $r12=var466, $r14=var1512, $r13=var3315, $r15=var1078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Class;	r5 := @parameter4: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5);	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.Class type>;	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>($r7, "newBuilder", $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r8;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15;	return
;block_num 1