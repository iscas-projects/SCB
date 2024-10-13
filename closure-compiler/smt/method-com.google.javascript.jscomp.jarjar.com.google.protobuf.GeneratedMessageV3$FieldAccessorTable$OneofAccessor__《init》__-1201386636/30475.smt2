(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1472 0)
(declare-sort var1621 0)
(declare-sort var3870 0)
(declare-sort var548 0)
(declare-sort var3635 0)
(declare-sort var1272 0)
(declare-sort var2661 0)
(declare-sort var3040 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var548) void)
(declare-fun cast-from-var1472-to-var548 (var1472) var548)
(declare-fun descriptor/-614698256 (var1472) var1621)
(declare-fun getOneofs/-498363370 (var1621) var3635)
(declare-fun var3635_get/-1216255739 (var3635 Int) var548)
(declare-fun cast-from-var548-to-var1272 (var548) var1272)
(declare-fun isSynthetic/-1348733468 (var1272) Bool)
(declare-fun caseMethod/-614698256 (var1472) var2661)
(declare-fun caseMethodBuilder/-614698256 (var1472) var2661)
(declare-fun getFields/-970427034 (var1272) var3635)
(declare-fun cast-from-var548-to-var3040 (var548) var3040)
(declare-fun fieldDescriptor/-614698256 (var1472) var3040)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2075_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var2661)
(declare-fun clearMethod/-614698256 (var1472) var2661)
(declare-const null-var1472 var1472)
(declare-const null-var1621 var1621)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2661 var2661)
(declare-const var3421 var1472) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor 
(assert (not (= var3421 null-var1472)))
(declare-const var2415 var1621) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var2415 null-var1621)))
(declare-const var2417 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2417 null-Int)))
(declare-const var30 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var30 null-String)))
(declare-const var3330 ClassObject) ; Statement: r5 := @parameter3: java.lang.Class 
(assert (not (= var3330 null-ClassObject)))
(declare-const var150 ClassObject) ; Statement: r14 := @parameter4: java.lang.Class 
(assert (not (= var150 null-ClassObject)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1472-to-var548 var3421))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3421!1 var1472)
(declare-const var3421!2 var1472)
(assert (not (= var3421!2 null-var1472)))
(assert (= (descriptor/-614698256 var3421!2) var2415)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> = r1 
(assert true)
(define-const var2728 var3635 (getOneofs/-498363370 var2415)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getOneofs()>() 
(define-const var3803 var548 (var3635_get/-1216255739 var2728 var2417)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var3707 var1272 (cast-from-var548-to-var1272 var3803)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor) $r3 
(assert true)
(define-const var3763 Bool (isSynthetic/-1348733468 var3707)) ; Statement: $z0 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: boolean isSynthetic()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var3763 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3421!3 var1472)
(assert (not (= var3421!3 null-var1472)))
(assert (= (caseMethod/-614698256 var3421!3) null-var2661)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethod> = null 
(declare-const var3421!4 var1472)
(assert (not (= var3421!4 null-var1472)))
(assert (= (caseMethodBuilder/-614698256 var3421!4) null-var2661)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethodBuilder> = null 
(assert true)
(define-const var1165 var3635 (getFields/-970427034 var3707)) ; Statement: $r28 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: java.util.List getFields()>() 
(define-const var3899 var548 (var3635_get/-1216255739 var1165 0)) ; Statement: $r29 = interfaceinvoke $r28.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1942 var3040 (cast-from-var548-to-var3040 var3899)) ; Statement: $r30 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor) $r29 
(declare-const var3421!5 var1472)
(assert (not (= var3421!5 null-var1472)))
(assert (= (fieldDescriptor/-614698256 var3421!5) var1942)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor fieldDescriptor> = $r30 
 ; Statement: goto [?= $r22 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1997 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1997)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1997!1 String)
(assert (= var1997!1 ""))
(assert true)
(define-const var1466 String (append/672562846 var1997!1 "clear")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var1997!2 String)
(assert (= var1997!2 (str.++ var1997!1 "clear")))
(assert true)
(define-const var2679 String (append/672562846 var1466 var30)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1466!1 String)
(assert (= var1466!1 (str.++ var1466 var30)))
(assert true)
(define-const var3394 String (toString/-2075883882 var2679)) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3578 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r25 = newarray (java.lang.Class)[0] 
(define-const var3346 var2661 (var2075_access$1000/-414113668 var150 var3394 var3578)) ; Statement: $r27 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r14, $r26, $r25) 
(declare-const var3421!6 var1472)
(assert (not (= var3421!6 null-var1472)))
(assert (= (clearMethod/-614698256 var3421!6) var3346)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method clearMethod> = $r27 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1472-to-var548=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.Object), descriptor/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getOneofs/-498363370=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.util.List), var3635_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var548-to-var1272=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor), isSynthetic/-1348733468=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor], boolean), caseMethod/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method), caseMethodBuilder/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method), getFields/-970427034=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor], java.util.List), cast-from-var548-to-var3040=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), fieldDescriptor/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var2075_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), clearMethod/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method)}
; {var1472=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor, var3421=r0, var1621=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2415=r1, var2417=i0, var30=r7, var3870=null_type, var3330=r5, var150=r14, var548=java.lang.Object, var3635=java.util.List, var2728=$r2, var3803=$r3, var1272=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var3707=r4, var3763=$z0, var2661=java.lang.reflect.Method, var1165=$r28, var3899=$r29, var3040=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1942=$r30, var1997=$r22, var1466=$r23, var2679=$r24, var3394=$r26, var3578=$r25, var2075=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var3346=$r27}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor=var1472, r0=var3421, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1621, r1=var2415, i0=var2417, r7=var30, null_type=var3870, r5=var3330, r14=var150, java.lang.Object=var548, java.util.List=var3635, $r2=var2728, $r3=var3803, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var1272, r4=var3707, $z0=var3763, java.lang.reflect.Method=var2661, $r28=var1165, $r29=var3899, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3040, $r30=var1942, $r22=var1997, $r23=var1466, $r24=var2679, $r26=var3394, $r25=var3578, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var2075, $r27=var3346}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	i0 := @parameter1: int;	r7 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.Class;	r14 := @parameter4: java.lang.Class;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getOneofs()>();	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>(i0);	r4 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor) $r3;	$z0 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: boolean isSynthetic()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethod> = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethodBuilder> = null;	$r28 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: java.util.List getFields()>();	$r29 = interfaceinvoke $r28.<java.util.List: java.lang.Object get(int)>(0);	$r30 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor) $r29;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor fieldDescriptor> = $r30;	goto [?= $r22 = new java.lang.StringBuilder];	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = newarray (java.lang.Class)[0];	$r27 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r14, $r26, $r25);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method clearMethod> = $r27;	return
;block_num 3