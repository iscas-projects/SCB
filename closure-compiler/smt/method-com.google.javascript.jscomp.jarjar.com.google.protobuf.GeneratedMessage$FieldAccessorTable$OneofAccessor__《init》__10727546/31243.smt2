(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var3673 0)
(declare-sort var298 0)
(declare-sort var3799 0)
(declare-sort var2931 0)
(declare-sort var791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3799) void)
(declare-fun cast-from-var1499-to-var3799 (var1499) var3799)
(declare-fun descriptor/911346925 (var1499) var3673)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var791_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var2931)
(declare-fun caseMethod/911346925 (var1499) var2931)
(declare-fun caseMethodBuilder/911346925 (var1499) var2931)
(declare-fun clearMethod/911346925 (var1499) var2931)
(declare-const null-var1499 var1499)
(declare-const null-var3673 var3673)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2191 var1499) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor 
(assert (not (= var2191 null-var1499)))
(declare-const var1187 var3673) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var1187 null-var3673)))
(declare-const var2112 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2112 null-String)))
(declare-const var3407 ClassObject) ; Statement: r2 := @parameter2: java.lang.Class 
(assert (not (= var3407 null-ClassObject)))
(declare-const var3456 ClassObject) ; Statement: r11 := @parameter3: java.lang.Class 
(assert (not (= var3456 null-ClassObject)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1499-to-var3799 var2191))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2191!1 var1499)
(declare-const var2191!2 var1499)
(assert (not (= var2191!2 null-var1499)))
(assert (= (descriptor/911346925 var2191!2) var1187)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> = r1 
(define-const var164 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var164)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var164!1 String)
(assert (= var164!1 ""))
(assert true)
(define-const var3554 String (append/672562846 var164!1 "get")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var164!2 String)
(assert (= var164!2 (str.++ var164!1 "get")))
(assert true)
(define-const var1622 String (append/672562846 var3554 var2112)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3554!1 String)
(assert (= var3554!1 (str.++ var3554 var2112)))
(assert true)
(define-const var2767 String (append/672562846 var1622 "Case")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var1622!1 String)
(assert (= var1622!1 (str.++ var1622 "Case")))
(assert true)
(define-const var1269 String (toString/-2075883882 var2767)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2158 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r8 = newarray (java.lang.Class)[0] 
(define-const var3767 var2931 (var791_access$1100/1219209240 var3407 var1269 var2158)) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r2, $r9, $r8) 
(declare-const var2191!3 var1499)
(assert (not (= var2191!3 null-var1499)))
(assert (= (caseMethod/911346925 var2191!3) var3767)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethod> = $r10 
(define-const var3491 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3491)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3491!1 String)
(assert (= var3491!1 ""))
(assert true)
(define-const var296 String (append/672562846 var3491!1 "get")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3491!2 String)
(assert (= var3491!2 (str.++ var3491!1 "get")))
(assert true)
(define-const var2699 String (append/672562846 var296 var2112)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var296!1 String)
(assert (= var296!1 (str.++ var296 var2112)))
(assert true)
(define-const var2017 String (append/672562846 var2699 "Case")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var2699!1 String)
(assert (= var2699!1 (str.++ var2699 "Case")))
(assert true)
(define-const var2241 String (toString/-2075883882 var2017)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2087 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r16 = newarray (java.lang.Class)[0] 
(define-const var1835 var2931 (var791_access$1100/1219209240 var3456 var2241 var2087)) ; Statement: $r18 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r11, $r17, $r16) 
(declare-const var2191!4 var1499)
(assert (not (= var2191!4 null-var1499)))
(assert (= (caseMethodBuilder/911346925 var2191!4) var1835)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethodBuilder> = $r18 
(define-const var2375 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2375)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2375!1 String)
(assert (= var2375!1 ""))
(assert true)
(define-const var1803 String (append/672562846 var2375!1 "clear")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var2375!2 String)
(assert (= var2375!2 (str.++ var2375!1 "clear")))
(assert true)
(define-const var700 String (append/672562846 var1803 var2112)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1803!1 String)
(assert (= var1803!1 (str.++ var1803 var2112)))
(assert true)
(define-const var2428 String (toString/-2075883882 var700)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3396 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r22 = newarray (java.lang.Class)[0] 
(define-const var3486 var2931 (var791_access$1100/1219209240 var3456 var2428 var3396)) ; Statement: $r24 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r11, $r23, $r22) 
(declare-const var2191!5 var1499)
(assert (not (= var2191!5 null-var1499)))
(assert (= (clearMethod/911346925 var2191!5) var3486)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method clearMethod> = $r24 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1499-to-var3799=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor], java.lang.Object), descriptor/911346925=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var791_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), caseMethod/911346925=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method), caseMethodBuilder/911346925=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method), clearMethod/911346925=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor], java.lang.reflect.Method)}
; {var1499=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor, var2191=r0, var3673=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1187=r1, var2112=r4, var298=null_type, var3407=r2, var3456=r11, var3799=java.lang.Object, var164=$r3, var3554=$r5, var1622=$r6, var2767=$r7, var1269=$r9, var2158=$r8, var2931=java.lang.reflect.Method, var791=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var3767=$r10, var3491=$r12, var296=$r13, var2699=$r14, var2017=$r15, var2241=$r17, var2087=$r16, var1835=$r18, var2375=$r19, var1803=$r20, var700=$r21, var2428=$r23, var3396=$r22, var3486=$r24}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor=var1499, r0=var2191, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3673, r1=var1187, r4=var2112, null_type=var298, r2=var3407, r11=var3456, java.lang.Object=var3799, $r3=var164, $r5=var3554, $r6=var1622, $r7=var2767, $r9=var1269, $r8=var2158, java.lang.reflect.Method=var2931, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var791, $r10=var3767, $r12=var3491, $r13=var296, $r14=var2699, $r15=var2017, $r17=var2241, $r16=var2087, $r18=var1835, $r19=var2375, $r20=var1803, $r21=var700, $r23=var2428, $r22=var3396, $r24=var3486}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r4 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class;	r11 := @parameter3: java.lang.Class;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> = r1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = newarray (java.lang.Class)[0];	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r2, $r9, $r8);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethod> = $r10;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = newarray (java.lang.Class)[0];	$r18 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r11, $r17, $r16);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method caseMethodBuilder> = $r18;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = newarray (java.lang.Class)[0];	$r24 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r11, $r23, $r22);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$OneofAccessor: java.lang.reflect.Method clearMethod> = $r24;	return
;block_num 1