(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var1117 0)
(declare-sort var2896 0)
(declare-sort var2698 0)
(declare-sort var1909 0)
(declare-sort var119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1796899392 (var2698 var1117 String ClassObject ClassObject) void)
(declare-fun cast-from-var2299-to-var2698 (var2299) var2698)
(declare-fun type/-1929468205 (var2698) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var119_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var1909)
(declare-fun newBuilderMethod/-838094104 (var2299) var1909)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getBuilderMethodBuilder/-838094104 (var2299) var1909)
(declare-const null-var2299 var2299)
(declare-const null-var1117 var1117)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2752 var2299) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor 
(assert (not (= var2752 null-var2299)))
(declare-const var3554 var1117) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var3554 null-var1117)))
(declare-const var106 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var106 null-String)))
(declare-const var2368 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var2368 null-ClassObject)))
(declare-const var2483 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var2483 null-ClassObject)))
(assert true)
;(assert (<init>/-1796899392 (cast-from-var2299-to-var2698 var2752) var3554 var106 var2368 var2483)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class)>(r1, r2, r3, r4) 

(declare-const var2752!1 var2299)
(declare-const var3554!1 var1117)
(declare-const var106!1 String)
(declare-const var2368!1 ClassObject)
(declare-const var2483!1 ClassObject)
(define-const var741 ClassObject (type/-1929468205 (cast-from-var2299-to-var2698 var2752!1))) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.Class type> 
(define-const var791 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r5 = newarray (java.lang.Class)[0] 
(define-const var3104 var1909 (var119_access$1000/-414113668 var741 "newBuilder" var791)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>($r6, "newBuilder", $r5) 
(declare-const var2752!2 var2299)
(assert (not (= var2752!2 null-var2299)))
(assert (= (newBuilderMethod/-838094104 var2752!2) var3104)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r7 
(define-const var889 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var889)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var889!1 String)
(assert (= var889!1 ""))
(assert true)
(define-const var896 String (append/672562846 var889!1 "get")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var889!2 String)
(assert (= var889!2 (str.++ var889!1 "get")))
(assert true)
(define-const var1861 String (append/672562846 var896 var106!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var896!1 String)
(assert (= var896!1 (str.++ var896 var106!1)))
(assert true)
(define-const var662 String (append/672562846 var1861 "Builder")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder") 
(declare-const var1861!1 String)
(assert (= var1861!1 (str.++ var1861 "Builder")))
(assert true)
(define-const var1752 String (toString/-2075883882 var662)) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1903 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r12 = newarray (java.lang.Class)[1] 
(define-const var1321 ClassObject Int-TYPE) ; Statement: $r13 = <java.lang.Integer: java.lang.Class TYPE> 
(declare-const var1903!1 (Array Int ClassObject))
(assert (not (= var1903!1 null-__Array__Int__ClassObject__)))
(assert (= (select var1903!1 0) var1321)) ; Statement: $r12[0] = $r13 
(define-const var1430 var1909 (var119_access$1000/-414113668 var2483!1 var1752 var1903!1)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r12) 
(declare-const var2752!3 var2299)
(assert (not (= var2752!3 null-var2299)))
(assert (= (getBuilderMethodBuilder/-838094104 var2752!3) var1430)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1796899392=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, java.lang.String, java.lang.Class, java.lang.Class], void), cast-from-var2299-to-var2698=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor), type/-1929468205=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var119_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), newBuilderMethod/-838094104=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor], java.lang.reflect.Method), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getBuilderMethodBuilder/-838094104=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor], java.lang.reflect.Method)}
; {var2299=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor, var2752=r0, var1117=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3554=r1, var106=r2, var2896=null_type, var2368=r3, var2483=r4, var2698=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor, var741=$r6, var791=$r5, var1909=java.lang.reflect.Method, var119=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var3104=$r7, var889=$r8, var896=$r9, var1861=$r10, var662=$r11, var1752=$r14, var1903=$r12, var1321=$r13, var1430=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor=var2299, r0=var2752, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1117, r1=var3554, r2=var106, null_type=var2896, r3=var2368, r4=var2483, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor=var2698, $r6=var741, $r5=var791, java.lang.reflect.Method=var1909, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var119, $r7=var3104, $r8=var889, $r9=var896, $r10=var1861, $r11=var662, $r14=var1752, $r12=var1903, $r13=var1321, $r15=var1430}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Class;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class)>(r1, r2, r3, r4);	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.Class type>;	$r5 = newarray (java.lang.Class)[0];	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>($r6, "newBuilder", $r5);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r7;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder");	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = newarray (java.lang.Class)[1];	$r13 = <java.lang.Integer: java.lang.Class TYPE>;	$r12[0] = $r13;	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r12);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15;	return
;block_num 1