(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var121 0)
(declare-sort var1496 0)
(declare-sort var2332 0)
(declare-sort var1642 0)
(declare-sort var2840 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1322769213 (var1642 var1496 String ClassObject ClassObject) void)
(declare-fun cast-from-var121-to-var1642 (var121) var1642)
(declare-fun type/-1863519280 (var1642) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3168_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var2840)
(declare-fun newBuilderMethod/-1522974901 (var121) var2840)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getBuilderMethodBuilder/-1522974901 (var121) var2840)
(declare-const null-var121 var121)
(declare-const null-var1496 var1496)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2006 var121) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor 
(assert (not (= var2006 null-var121)))
(declare-const var2261 var1496) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2261 null-var1496)))
(declare-const var1639 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1639 null-String)))
(declare-const var452 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var452 null-ClassObject)))
(declare-const var3202 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var3202 null-ClassObject)))
(assert true)
;(assert (<init>/1322769213 (cast-from-var121-to-var1642 var2006) var2261 var1639 var452 var3202)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class)>(r1, r2, r3, r4) 

(declare-const var2006!1 var121)
(declare-const var2261!1 var1496)
(declare-const var1639!1 String)
(declare-const var452!1 ClassObject)
(declare-const var3202!1 ClassObject)
(define-const var3450 ClassObject (type/-1863519280 (cast-from-var121-to-var1642 var2006!1))) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.Class type> 
(define-const var826 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r5 = newarray (java.lang.Class)[0] 
(define-const var2720 var2840 (var3168_access$1100/1219209240 var3450 "newBuilder" var826)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>($r6, "newBuilder", $r5) 
(declare-const var2006!2 var121)
(assert (not (= var2006!2 null-var121)))
(assert (= (newBuilderMethod/-1522974901 var2006!2) var2720)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r7 
(define-const var2628 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2628)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2628!1 String)
(assert (= var2628!1 ""))
(assert true)
(define-const var589 String (append/672562846 var2628!1 "get")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2628!2 String)
(assert (= var2628!2 (str.++ var2628!1 "get")))
(assert true)
(define-const var863 String (append/672562846 var589 var1639!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var589!1 String)
(assert (= var589!1 (str.++ var589 var1639!1)))
(assert true)
(define-const var1245 String (append/672562846 var863 "Builder")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder") 
(declare-const var863!1 String)
(assert (= var863!1 (str.++ var863 "Builder")))
(assert true)
(define-const var3237 String (toString/-2075883882 var1245)) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var559 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r12 = newarray (java.lang.Class)[1] 
(define-const var3818 ClassObject Int-TYPE) ; Statement: $r13 = <java.lang.Integer: java.lang.Class TYPE> 
(declare-const var559!1 (Array Int ClassObject))
(assert (not (= var559!1 null-__Array__Int__ClassObject__)))
(assert (= (select var559!1 0) var3818)) ; Statement: $r12[0] = $r13 
(define-const var501 var2840 (var3168_access$1100/1219209240 var3202!1 var3237 var559!1)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r12) 
(declare-const var2006!3 var121)
(assert (not (= var2006!3 null-var121)))
(assert (= (getBuilderMethodBuilder/-1522974901 var2006!3) var501)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1322769213=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, java.lang.String, java.lang.Class, java.lang.Class], void), cast-from-var121-to-var1642=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor), type/-1863519280=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var3168_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), newBuilderMethod/-1522974901=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor], java.lang.reflect.Method), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getBuilderMethodBuilder/-1522974901=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor], java.lang.reflect.Method)}
; {var121=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor, var2006=r0, var1496=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2261=r1, var1639=r2, var2332=null_type, var452=r3, var3202=r4, var1642=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor, var3450=$r6, var826=$r5, var2840=java.lang.reflect.Method, var3168=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var2720=$r7, var2628=$r8, var589=$r9, var863=$r10, var1245=$r11, var3237=$r14, var559=$r12, var3818=$r13, var501=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor=var121, r0=var2006, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1496, r1=var2261, r2=var1639, null_type=var2332, r3=var452, r4=var3202, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor=var1642, $r6=var3450, $r5=var826, java.lang.reflect.Method=var2840, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var3168, $r7=var2720, $r8=var2628, $r9=var589, $r10=var863, $r11=var1245, $r14=var3237, $r12=var559, $r13=var3818, $r15=var501}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Class;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor,java.lang.String,java.lang.Class,java.lang.Class)>(r1, r2, r3, r4);	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.Class type>;	$r5 = newarray (java.lang.Class)[0];	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>($r6, "newBuilder", $r5);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method newBuilderMethod> = $r7;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builder");	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = newarray (java.lang.Class)[1];	$r13 = <java.lang.Integer: java.lang.Class TYPE>;	$r12[0] = $r13;	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r14, $r12);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor: java.lang.reflect.Method getBuilderMethodBuilder> = $r15;	return
;block_num 1