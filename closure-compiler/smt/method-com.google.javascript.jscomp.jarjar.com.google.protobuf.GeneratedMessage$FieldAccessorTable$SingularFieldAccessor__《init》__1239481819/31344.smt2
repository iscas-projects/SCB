(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var352 0)
(declare-sort var2774 0)
(declare-sort var2213 0)
(declare-sort var3363 0)
(declare-sort var3268 0)
(declare-sort var3888 0)
(declare-sort var3938 0)
(declare-sort var1741 0)
(declare-sort var1873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3363) void)
(declare-fun cast-from-var352-to-var3363 (var352) var3363)
(declare-fun field/1564871251 (var352) var2774)
(declare-fun getContainingOneof/-1627669827 (var2774) var3268)
(declare-fun isOneofField/1564871251 (var352) Bool)
(declare-fun getFile/-1598466931 (var2774) var3888)
(declare-fun var3938_access$1300/1114856001 (var3888) Bool)
(declare-fun hasHasMethod/1564871251 (var352) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1873_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var1741)
(declare-fun getMethod/1564871251 (var352) var1741)
(declare-fun getMethodBuilder/1564871251 (var352) var1741)
(declare-fun getReturnType/-1494237887 (var1741) ClassObject)
(declare-fun type/1564871251 (var352) ClassObject)
(declare-fun setMethod/1564871251 (var352) var1741)
(declare-fun hasMethod/1564871251 (var352) var1741)
(declare-fun hasMethodBuilder/1564871251 (var352) var1741)
(declare-fun clearMethod/1564871251 (var352) var1741)
(declare-fun caseMethod/1564871251 (var352) var1741)
(declare-fun caseMethodBuilder/1564871251 (var352) var1741)
(declare-const null-var352 var352)
(declare-const null-var2774 var2774)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3268 var3268)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1741 var1741)
(declare-const var3652 var352) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor 
(assert (not (= var3652 null-var352)))
(declare-const var1740 var2774) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var1740 null-var2774)))
(declare-const var3978 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3978 null-String)))
(declare-const var2193 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var2193 null-ClassObject)))
(declare-const var195 ClassObject) ; Statement: r6 := @parameter3: java.lang.Class 
(assert (not (= var195 null-ClassObject)))
(declare-const var2621 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var2621 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var352-to-var3363 var3652))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3652!1 var352)
(declare-const var3652!2 var352)
(assert (not (= var3652!2 null-var352)))
(assert (= (field/1564871251 var3652!2) var1740)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1 
(assert true)
(define-const var137 var3268 (getContainingOneof/-1627669827 var1740)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>() 
 ; Statement: if $r2 == null goto $z5 = 0 
(assert (= var137 null-var3268)) ; Cond: $r2 == null 
(define-const var1197 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(declare-const var3652!3 var352)
(assert (not (= var3652!3 null-var352)))
(assert (= (isOneofField/1564871251 var3652!3) var1197)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5 
(assert true)
(define-const var2635 var3888 (getFile/-1598466931 var1740)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>() 
(define-const var2088 Bool (var3938_access$1300/1114856001 var2635)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var2088 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2134 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6] 
(assert true) ; Non Conditional
(declare-const var3652!4 var352)
(assert (not (= var3652!4 null-var352)))
(assert (= (hasHasMethod/1564871251 var3652!4) var2134)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6 
(define-const var2024 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2024)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2024!1 String)
(assert (= var2024!1 ""))
(assert true)
(define-const var718 String (append/672562846 var2024!1 "get")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2024!2 String)
(assert (= var2024!2 (str.++ var2024!1 "get")))
(assert true)
(define-const var1782 String (append/672562846 var718 var3978)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var718!1 String)
(assert (= var718!1 (str.++ var718 var3978)))
(assert true)
(define-const var3607 String (toString/-2075883882 var1782)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3457 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r42 = newarray (java.lang.Class)[0] 
(define-const var1446 var1741 (var1873_access$1100/1219209240 var2193 var3607 var3457)) ; Statement: $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42) 
(declare-const var3652!5 var352)
(assert (not (= var3652!5 null-var352)))
(assert (= (getMethod/1564871251 var3652!5) var1446)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43 
(define-const var2708 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2708)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2708!1 String)
(assert (= var2708!1 ""))
(assert true)
(define-const var669 String (append/672562846 var2708!1 "get")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2708!2 String)
(assert (= var2708!2 (str.++ var2708!1 "get")))
(assert true)
(define-const var1818 String (append/672562846 var669 var3978)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 var3978)))
(assert true)
(define-const var2150 String (toString/-2075883882 var1818)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3276 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r48 = newarray (java.lang.Class)[0] 
(define-const var128 var1741 (var1873_access$1100/1219209240 var195 var2150 var3276)) ; Statement: $r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48) 
(declare-const var3652!6 var352)
(assert (not (= var3652!6 null-var352)))
(assert (= (getMethodBuilder/1564871251 var3652!6) var128)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49 
(define-const var130 var1741 (getMethod/1564871251 var3652!6)) ; Statement: $r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var1850 ClassObject (getReturnType/-1494237887 var130)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(declare-const var3652!7 var352)
(assert (not (= var3652!7 null-var352)))
(assert (= (type/1564871251 var3652!7) var1850)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51 
(define-const var13 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var13)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var13!1 String)
(assert (= var13!1 ""))
(assert true)
(define-const var3021 String (append/672562846 var13!1 "set")) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var13!2 String)
(assert (= var13!2 (str.++ var13!1 "set")))
(assert true)
(define-const var2119 String (append/672562846 var3021 var3978)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3021!1 String)
(assert (= var3021!1 (str.++ var3021 var3978)))
(assert true)
(define-const var2518 String (toString/-2075883882 var2119)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2501 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r56 = newarray (java.lang.Class)[1] 
(define-const var3183 ClassObject (type/1564871251 var3652!7)) ; Statement: $r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> 
(declare-const var2501!1 (Array Int ClassObject))
(assert (not (= var2501!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2501!1 0) var3183)) ; Statement: $r56[0] = $r57 
(define-const var3793 var1741 (var1873_access$1100/1219209240 var195 var2518 var2501!1)) ; Statement: $r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56) 
(declare-const var3652!8 var352)
(assert (not (= var3652!8 null-var352)))
(assert (= (setMethod/1564871251 var3652!8) var3793)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58 
(define-const var2662 Bool (hasHasMethod/1564871251 var3652!8)) ; Statement: $z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z7 == 0 goto $r59 = null 
(assert (not (= (ite var2662 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var3366 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3366)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3366!1 String)
(assert (= var3366!1 ""))
(assert true)
(define-const var1200 String (append/672562846 var3366!1 "has")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var3366!2 String)
(assert (= var3366!2 (str.++ var3366!1 "has")))
(assert true)
(define-const var1225 String (append/672562846 var1200 var3978)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1200!1 String)
(assert (= var1200!1 (str.++ var1200 var3978)))
(assert true)
(define-const var3399 String (toString/-2075883882 var1225)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1962 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r34 = newarray (java.lang.Class)[0] 
(define-const var1612 var1741 (var1873_access$1100/1219209240 var2193 var3399 var1962)) ; Statement: $r59 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r35, $r34) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59] 
(assert true) ; Non Conditional
(declare-const var3652!9 var352)
(assert (not (= var3652!9 null-var352)))
(assert (= (hasMethod/1564871251 var3652!9) var1612)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59 
(define-const var2452 Bool (hasHasMethod/1564871251 var3652!9)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z1 == 0 goto $r60 = null 
(assert (not (= (ite var2452 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2228 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2228)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2228!1 String)
(assert (= var2228!1 ""))
(assert true)
(define-const var1172 String (append/672562846 var2228!1 "has")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var2228!2 String)
(assert (= var2228!2 (str.++ var2228!1 "has")))
(assert true)
(define-const var1211 String (append/672562846 var1172 var3978)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1172!1 String)
(assert (= var1172!1 (str.++ var1172 var3978)))
(assert true)
(define-const var2901 String (toString/-2075883882 var1211)) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3390 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r29 = newarray (java.lang.Class)[0] 
(define-const var581 var1741 (var1873_access$1100/1219209240 var195 var2901 var3390)) ; Statement: $r60 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r30, $r29) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60] 
(assert true) ; Non Conditional
(declare-const var3652!10 var352)
(assert (not (= var3652!10 null-var352)))
(assert (= (hasMethodBuilder/1564871251 var3652!10) var581)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60 
(define-const var2777 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2777)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2777!1 String)
(assert (= var2777!1 ""))
(assert true)
(define-const var1358 String (append/672562846 var2777!1 "clear")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var2777!2 String)
(assert (= var2777!2 (str.++ var2777!1 "clear")))
(assert true)
(define-const var3398 String (append/672562846 var1358 var3978)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1358!1 String)
(assert (= var1358!1 (str.++ var1358 var3978)))
(assert true)
(define-const var849 String (toString/-2075883882 var3398)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var358 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r10 = newarray (java.lang.Class)[0] 
(define-const var1662 var1741 (var1873_access$1100/1219209240 var195 var849 var358)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10) 
(declare-const var3652!11 var352)
(assert (not (= var3652!11 null-var352)))
(assert (= (clearMethod/1564871251 var3652!11) var1662)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12 
(define-const var1134 Bool (isOneofField/1564871251 var3652!11)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z2 == 0 goto $r61 = null 
(assert (not (= (ite var1134 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3845 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3845)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3845!1 String)
(assert (= var3845!1 ""))
(assert true)
(define-const var1066 String (append/672562846 var3845!1 "get")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3845!2 String)
(assert (= var3845!2 (str.++ var3845!1 "get")))
(assert true)
(define-const var1593 String (append/672562846 var1066 var2621)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1066!1 String)
(assert (= var1066!1 (str.++ var1066 var2621)))
(assert true)
(define-const var1853 String (append/672562846 var1593 "Case")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var1593!1 String)
(assert (= var1593!1 (str.++ var1593 "Case")))
(assert true)
(define-const var940 String (toString/-2075883882 var1853)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2370 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r24 = newarray (java.lang.Class)[0] 
(define-const var2834 var1741 (var1873_access$1100/1219209240 var2193 var940 var2370)) ; Statement: $r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61] 
(assert true) ; Non Conditional
(declare-const var3652!12 var352)
(assert (not (= var3652!12 null-var352)))
(assert (= (caseMethod/1564871251 var3652!12) var2834)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61 
(define-const var1499 Bool (isOneofField/1564871251 var3652!12)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z3 == 0 goto $r62 = null 
(assert (= (ite var1499 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3858 var1741 null-var1741) ; Statement: $r62 = null 
(assert true) ; Non Conditional
(declare-const var3652!13 var352)
(assert (not (= var3652!13 null-var352)))
(assert (= (caseMethodBuilder/1564871251 var3652!13) var3858)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var352-to-var3363=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Object), field/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingOneof/-1627669827=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor), isOneofField/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), getFile/-1598466931=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var3938_access$1300/1114856001=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], boolean), hasHasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1873_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), type/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Class), setMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), clearMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method)}
; {var352=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, var3652=r0, var2774=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1740=r1, var3978=r5, var2213=null_type, var2193=r4, var195=r6, var2621=r14, var3363=java.lang.Object, var3268=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var137=$r2, var1197=$z5, var3888=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2635=$r3, var3938=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable, var2088=$z0, var2134=$z6, var2024=$r38, var718=$r39, var1782=$r40, var3607=$r41, var3457=$r42, var1741=java.lang.reflect.Method, var1873=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var1446=$r43, var2708=$r44, var669=$r45, var1818=$r46, var2150=$r47, var3276=$r48, var128=$r49, var130=$r50, var1850=$r51, var13=$r52, var3021=$r53, var2119=$r54, var2518=$r55, var2501=$r56, var3183=$r57, var3793=$r58, var2662=$z7, var3366=$r31, var1200=$r32, var1225=$r33, var3399=$r35, var1962=$r34, var1612=$r59, var2452=$z1, var2228=$r26, var1172=$r27, var1211=$r28, var2901=$r30, var3390=$r29, var581=$r60, var2777=$r7, var1358=$r8, var3398=$r9, var849=$r11, var358=$r10, var1662=$r12, var1134=$z2, var3845=$r20, var1066=$r21, var1593=$r22, var1853=$r23, var940=$r25, var2370=$r24, var2834=$r61, var1499=$z3, var3858=$r62}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor=var352, r0=var3652, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2774, r1=var1740, r5=var3978, null_type=var2213, r4=var2193, r6=var195, r14=var2621, java.lang.Object=var3363, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var3268, $r2=var137, $z5=var1197, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3888, $r3=var2635, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable=var3938, $z0=var2088, $z6=var2134, $r38=var2024, $r39=var718, $r40=var1782, $r41=var3607, $r42=var3457, java.lang.reflect.Method=var1741, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var1873, $r43=var1446, $r44=var2708, $r45=var669, $r46=var1818, $r47=var2150, $r48=var3276, $r49=var128, $r50=var130, $r51=var1850, $r52=var13, $r53=var3021, $r54=var2119, $r55=var2518, $r56=var2501, $r57=var3183, $r58=var3793, $z7=var2662, $r31=var3366, $r32=var1200, $r33=var1225, $r35=var3399, $r34=var1962, $r59=var1612, $z1=var2452, $r26=var2228, $r27=var1172, $r28=var1211, $r30=var2901, $r29=var3390, $r60=var581, $r7=var2777, $r8=var1358, $r9=var3398, $r11=var849, $r10=var358, $r12=var1662, $z2=var1134, $r20=var3845, $r21=var1066, $r22=var1593, $r23=var1853, $r25=var940, $r24=var2370, $r61=var2834, $z3=var1499, $r62=var3858}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 15,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r5 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.Class;	r6 := @parameter3: java.lang.Class;	r14 := @parameter4: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>();	if $r2 == null goto $z5 = 0;	$z5 = 0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>();	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3);	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r42 = newarray (java.lang.Class)[0];	$r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	$r48 = newarray (java.lang.Class)[0];	$r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49;	$r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod>;	$r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	$r56 = newarray (java.lang.Class)[1];	$r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type>;	$r56[0] = $r57;	$r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58;	$z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z7 == 0 goto $r59 = null;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = newarray (java.lang.Class)[0];	$r59 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r35, $r34);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59;	$z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z1 == 0 goto $r60 = null;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = newarray (java.lang.Class)[0];	$r60 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r30, $r29);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = newarray (java.lang.Class)[0];	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12;	$z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z2 == 0 goto $r61 = null;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = newarray (java.lang.Class)[0];	$r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61;	$z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z3 == 0 goto $r62 = null;	$r62 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62;	return
;block_num 13