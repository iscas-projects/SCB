(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var620 0)
(declare-sort var3016 0)
(declare-sort var1608 0)
(declare-sort var513 0)
(declare-sort var458 0)
(declare-sort var3471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1239481819 (var513 var3016 String ClassObject ClassObject String) void)
(declare-fun cast-from-var620-to-var513 (var620) var513)
(declare-fun type/1564871251 (var513) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3471_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var458)
(declare-fun newBuilderMethod/1960140648 (var620) var458)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getBuilderMethodBuilder/1960140648 (var620) var458)
(declare-const null-var620 var620)
(declare-const null-var3016 var3016)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3687 var620) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor 
(assert (not (= var3687 null-var620)))
(declare-const var744 var3016) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var744 null-var3016)))
(declare-const var879 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var879 null-String)))
(declare-const var3003 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var3003 null-ClassObject)))
(declare-const var2149 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var2149 null-ClassObject)))
(declare-const var875 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var875 null-String)))
(assert true)
;(assert (<init>/1239481819 (cast-from-var620-to-var513 var3687) var744 var879 var3003 var2149 var875)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5) 

(declare-const var3687!1 var620)
(declare-const var744!1 var3016)
(declare-const var879!1 String)
(declare-const var3003!1 ClassObject)
(declare-const var2149!1 ClassObject)
(declare-const var875!1 String)
(define-const var3150 ClassObject (type/1564871251 (cast-from-var620-to-var513 var3687!1))) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.Class type> 
(define-const var2110 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var2699 var458 (var3471_access$1100/1219209240 var3150 "newBuilder" var2110)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>($r7, "newBuilder", $r6) 
(declare-const var3687!2 var620)
(assert (not (= var3687!2 null-var620)))
(assert (= (newBuilderMethod/1960140648 var3687!2) var2699)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r8 
(define-const var3188 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3188)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3188!1 String)
(assert (= var3188!1 ""))
(assert true)
(define-const var1343 String (append/672562846 var3188!1 "get")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3188!2 String)
(assert (= var3188!2 (str.++ var3188!1 "get")))
(assert true)
(define-const var1191 String (append/672562846 var1343 var879!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1343!1 String)
(assert (= var1343!1 (str.++ var1343 var879!1)))
(assert true)
(define-const var119 String (append/672562846 var1191 "Builder")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder") 
(declare-const var1191!1 String)
(assert (= var1191!1 (str.++ var1191 "Builder")))
(assert true)
(define-const var6 String (toString/-2075883882 var119)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3797 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var1467 var458 (var3471_access$1100/1219209240 var2149!1 var6 var3797)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r13) 
(declare-const var3687!3 var620)
(assert (not (= var3687!3 null-var620)))
(assert (= (getBuilderMethodBuilder/1960140648 var3687!3) var1467)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1239481819=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, java.lang.String, java.lang.Class, java.lang.Class, java.lang.String], void), cast-from-var620-to-var513=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor), type/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var3471_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), newBuilderMethod/1960140648=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor], java.lang.reflect.Method), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getBuilderMethodBuilder/1960140648=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor], java.lang.reflect.Method)}
; {var620=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor, var3687=r0, var3016=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var744=r1, var879=r2, var1608=null_type, var3003=r3, var2149=r4, var875=r5, var513=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, var3150=$r7, var2110=$r6, var458=java.lang.reflect.Method, var3471=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var2699=$r8, var3188=$r9, var1343=$r10, var1191=$r11, var119=$r12, var6=$r14, var3797=$r13, var1467=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor=var620, r0=var3687, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3016, r1=var744, r2=var879, null_type=var1608, r3=var3003, r4=var2149, r5=var875, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor=var513, $r7=var3150, $r6=var2110, java.lang.reflect.Method=var458, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var3471, $r8=var2699, $r9=var3188, $r10=var1343, $r11=var1191, $r12=var119, $r14=var6, $r13=var3797, $r15=var1467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Class;	r5 := @parameter4: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class,java.lang.String)>(r1, r2, r3, r4, r5);	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.Class type>;	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>($r7, "newBuilder", $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r8;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15;	return
;block_num 1