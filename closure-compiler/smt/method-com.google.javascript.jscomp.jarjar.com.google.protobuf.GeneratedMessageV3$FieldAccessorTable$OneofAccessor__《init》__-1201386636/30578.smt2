(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2973 0)
(declare-sort var3714 0)
(declare-sort var2198 0)
(declare-sort var470 0)
(declare-sort var2883 0)
(declare-sort var2727 0)
(declare-sort var2455 0)
(declare-sort var1810 0)
(declare-sort var1435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var470) void)
(declare-fun cast-from-var2973-to-var470 (var2973) var470)
(declare-fun descriptor/-614698256 (var2973) var3714)
(declare-fun getOneofs/-498363370 (var3714) var2883)
(declare-fun var2883_get/-1216255739 (var2883 Int) var470)
(declare-fun cast-from-var470-to-var2727 (var470) var2727)
(declare-fun isSynthetic/-1348733468 (var2727) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1810_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var2455)
(declare-fun caseMethod/-614698256 (var2973) var2455)
(declare-fun caseMethodBuilder/-614698256 (var2973) var2455)
(declare-fun fieldDescriptor/-614698256 (var2973) var1435)
(declare-fun clearMethod/-614698256 (var2973) var2455)
(declare-const null-var2973 var2973)
(declare-const null-var3714 var3714)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1435 var1435)
(declare-const var777 var2973) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor 
(assert (not (= var777 null-var2973)))
(declare-const var2322 var3714) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var2322 null-var3714)))
(declare-const var415 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var415 null-Int)))
(declare-const var3609 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var3609 null-String)))
(declare-const var3122 ClassObject) ; Statement: r5 := @parameter3: java.lang.Class 
(assert (not (= var3122 null-ClassObject)))
(declare-const var2885 ClassObject) ; Statement: r14 := @parameter4: java.lang.Class 
(assert (not (= var2885 null-ClassObject)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2973-to-var470 var777))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var777!1 var2973)
(declare-const var777!2 var2973)
(assert (not (= var777!2 null-var2973)))
(assert (= (descriptor/-614698256 var777!2) var2322)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> = r1 
(assert true)
(define-const var1857 var2883 (getOneofs/-498363370 var2322)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getOneofs()>() 
(define-const var1696 var470 (var2883_get/-1216255739 var1857 var415)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var2917 var2727 (cast-from-var470-to-var2727 var1696)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor) $r3 
(assert true)
(define-const var1123 Bool (isSynthetic/-1348733468 var2917)) ; Statement: $z0 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: boolean isSynthetic()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var1123 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1643 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1643)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1643!1 String)
(assert (= var1643!1 ""))
(assert true)
(define-const var1293 String (append/672562846 var1643!1 "get")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1643!2 String)
(assert (= var1643!2 (str.++ var1643!1 "get")))
(assert true)
(define-const var2291 String (append/672562846 var1293 var3609)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1293!1 String)
(assert (= var1293!1 (str.++ var1293 var3609)))
(assert true)
(define-const var984 String (append/672562846 var2291 "Case")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var2291!1 String)
(assert (= var2291!1 (str.++ var2291 "Case")))
(assert true)
(define-const var1597 String (toString/-2075883882 var984)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var893 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r11 = newarray (java.lang.Class)[0] 
(define-const var2183 var2455 (var1810_access$1000/-414113668 var3122 var1597 var893)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r5, $r12, $r11) 
(declare-const var777!3 var2973)
(assert (not (= var777!3 null-var2973)))
(assert (= (caseMethod/-614698256 var777!3) var2183)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethod> = $r13 
(define-const var3726 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3726)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3726!1 String)
(assert (= var3726!1 ""))
(assert true)
(define-const var2523 String (append/672562846 var3726!1 "get")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3726!2 String)
(assert (= var3726!2 (str.++ var3726!1 "get")))
(assert true)
(define-const var3842 String (append/672562846 var2523 var3609)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2523!1 String)
(assert (= var2523!1 (str.++ var2523 var3609)))
(assert true)
(define-const var2104 String (append/672562846 var3842 "Case")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var3842!1 String)
(assert (= var3842!1 (str.++ var3842 "Case")))
(assert true)
(define-const var2346 String (toString/-2075883882 var2104)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var689 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r19 = newarray (java.lang.Class)[0] 
(define-const var2365 var2455 (var1810_access$1000/-414113668 var2885 var2346 var689)) ; Statement: $r21 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r14, $r20, $r19) 
(declare-const var777!4 var2973)
(assert (not (= var777!4 null-var2973)))
(assert (= (caseMethodBuilder/-614698256 var777!4) var2365)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethodBuilder> = $r21 
(declare-const var777!5 var2973)
(assert (not (= var777!5 null-var2973)))
(assert (= (fieldDescriptor/-614698256 var777!5) null-var1435)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor fieldDescriptor> = null 
(assert true) ; Non Conditional
(define-const var74 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var74)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var74!1 String)
(assert (= var74!1 ""))
(assert true)
(define-const var3207 String (append/672562846 var74!1 "clear")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var74!2 String)
(assert (= var74!2 (str.++ var74!1 "clear")))
(assert true)
(define-const var2402 String (append/672562846 var3207 var3609)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3207!1 String)
(assert (= var3207!1 (str.++ var3207 var3609)))
(assert true)
(define-const var721 String (toString/-2075883882 var2402)) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1798 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r25 = newarray (java.lang.Class)[0] 
(define-const var3821 var2455 (var1810_access$1000/-414113668 var2885 var721 var1798)) ; Statement: $r27 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r14, $r26, $r25) 
(declare-const var777!6 var2973)
(assert (not (= var777!6 null-var2973)))
(assert (= (clearMethod/-614698256 var777!6) var3821)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method clearMethod> = $r27 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2973-to-var470=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.Object), descriptor/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getOneofs/-498363370=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.util.List), var2883_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var470-to-var2727=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor), isSynthetic/-1348733468=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1810_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), caseMethod/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method), caseMethodBuilder/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method), fieldDescriptor/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), clearMethod/-614698256=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method)}
; {var2973=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor, var777=r0, var3714=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2322=r1, var415=i0, var3609=r7, var2198=null_type, var3122=r5, var2885=r14, var470=java.lang.Object, var2883=java.util.List, var1857=$r2, var1696=$r3, var2727=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var2917=r4, var1123=$z0, var1643=$r6, var1293=$r8, var2291=$r9, var984=$r10, var1597=$r12, var893=$r11, var2455=java.lang.reflect.Method, var1810=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2183=$r13, var3726=$r15, var2523=$r16, var3842=$r17, var2104=$r18, var2346=$r20, var689=$r19, var2365=$r21, var1435=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var74=$r22, var3207=$r23, var2402=$r24, var721=$r26, var1798=$r25, var3821=$r27}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor=var2973, r0=var777, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3714, r1=var2322, i0=var415, r7=var3609, null_type=var2198, r5=var3122, r14=var2885, java.lang.Object=var470, java.util.List=var2883, $r2=var1857, $r3=var1696, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var2727, r4=var2917, $z0=var1123, $r6=var1643, $r8=var1293, $r9=var2291, $r10=var984, $r12=var1597, $r11=var893, java.lang.reflect.Method=var2455, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1810, $r13=var2183, $r15=var3726, $r16=var2523, $r17=var3842, $r18=var2104, $r20=var2346, $r19=var689, $r21=var2365, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1435, $r22=var74, $r23=var3207, $r24=var2402, $r26=var721, $r25=var1798, $r27=var3821}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	i0 := @parameter1: int;	r7 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.Class;	r14 := @parameter4: java.lang.Class;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getOneofs()>();	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>(i0);	r4 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor) $r3;	$z0 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor: boolean isSynthetic()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = newarray (java.lang.Class)[0];	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r5, $r12, $r11);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethod> = $r13;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = newarray (java.lang.Class)[0];	$r21 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r14, $r20, $r19);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethodBuilder> = $r21;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor fieldDescriptor> = null;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = newarray (java.lang.Class)[0];	$r27 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r14, $r26, $r25);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method clearMethod> = $r27;	return
;block_num 3