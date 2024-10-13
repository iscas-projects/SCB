(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3717 0)
(declare-sort var2212 0)
(declare-sort var423 0)
(declare-sort var2937 0)
(declare-sort var3751 0)
(declare-sort var1530 0)
(declare-sort var2724 0)
(declare-sort var1948 0)
(declare-sort var1092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2937) void)
(declare-fun cast-from-var3717-to-var2937 (var3717) var2937)
(declare-fun field/1564871251 (var3717) var2212)
(declare-fun getContainingOneof/-1627669827 (var2212) var3751)
(declare-fun isOneofField/1564871251 (var3717) Bool)
(declare-fun getFile/-1598466931 (var2212) var1530)
(declare-fun var2724_access$1300/1114856001 (var1530) Bool)
(declare-fun hasHasMethod/1564871251 (var3717) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1092_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var1948)
(declare-fun getMethod/1564871251 (var3717) var1948)
(declare-fun getMethodBuilder/1564871251 (var3717) var1948)
(declare-fun getReturnType/-1494237887 (var1948) ClassObject)
(declare-fun type/1564871251 (var3717) ClassObject)
(declare-fun setMethod/1564871251 (var3717) var1948)
(declare-fun hasMethod/1564871251 (var3717) var1948)
(declare-fun hasMethodBuilder/1564871251 (var3717) var1948)
(declare-fun clearMethod/1564871251 (var3717) var1948)
(declare-fun caseMethod/1564871251 (var3717) var1948)
(declare-fun caseMethodBuilder/1564871251 (var3717) var1948)
(declare-const null-var3717 var3717)
(declare-const null-var2212 var2212)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3751 var3751)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1948 var1948)
(declare-const var1490 var3717) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor 
(assert (not (= var1490 null-var3717)))
(declare-const var954 var2212) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var954 null-var2212)))
(declare-const var3190 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3190 null-String)))
(declare-const var1545 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var1545 null-ClassObject)))
(declare-const var3376 ClassObject) ; Statement: r6 := @parameter3: java.lang.Class 
(assert (not (= var3376 null-ClassObject)))
(declare-const var3755 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var3755 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3717-to-var2937 var1490))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1490!1 var3717)
(declare-const var1490!2 var3717)
(assert (not (= var1490!2 null-var3717)))
(assert (= (field/1564871251 var1490!2) var954)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1 
(assert true)
(define-const var1642 var3751 (getContainingOneof/-1627669827 var954)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>() 
 ; Statement: if $r2 == null goto $z5 = 0 
(assert (not (= var1642 null-var3751))) ; Negate: Cond: $r2 == null  
(define-const var1658 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5] 
(assert true) ; Non Conditional
(declare-const var1490!3 var3717)
(assert (not (= var1490!3 null-var3717)))
(assert (= (isOneofField/1564871251 var1490!3) var1658)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5 
(assert true)
(define-const var2394 var1530 (getFile/-1598466931 var954)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>() 
(define-const var161 Bool (var2724_access$1300/1114856001 var2394)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var161 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1673 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6] 
(assert true) ; Non Conditional
(declare-const var1490!4 var3717)
(assert (not (= var1490!4 null-var3717)))
(assert (= (hasHasMethod/1564871251 var1490!4) var1673)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6 
(define-const var3470 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3470)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3470!1 String)
(assert (= var3470!1 ""))
(assert true)
(define-const var2698 String (append/672562846 var3470!1 "get")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3470!2 String)
(assert (= var3470!2 (str.++ var3470!1 "get")))
(assert true)
(define-const var218 String (append/672562846 var2698 var3190)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2698!1 String)
(assert (= var2698!1 (str.++ var2698 var3190)))
(assert true)
(define-const var750 String (toString/-2075883882 var218)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3892 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r42 = newarray (java.lang.Class)[0] 
(define-const var3038 var1948 (var1092_access$1100/1219209240 var1545 var750 var3892)) ; Statement: $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42) 
(declare-const var1490!5 var3717)
(assert (not (= var1490!5 null-var3717)))
(assert (= (getMethod/1564871251 var1490!5) var3038)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43 
(define-const var3714 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3714)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3714!1 String)
(assert (= var3714!1 ""))
(assert true)
(define-const var975 String (append/672562846 var3714!1 "get")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3714!2 String)
(assert (= var3714!2 (str.++ var3714!1 "get")))
(assert true)
(define-const var1348 String (append/672562846 var975 var3190)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var975!1 String)
(assert (= var975!1 (str.++ var975 var3190)))
(assert true)
(define-const var250 String (toString/-2075883882 var1348)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3364 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r48 = newarray (java.lang.Class)[0] 
(define-const var854 var1948 (var1092_access$1100/1219209240 var3376 var250 var3364)) ; Statement: $r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48) 
(declare-const var1490!6 var3717)
(assert (not (= var1490!6 null-var3717)))
(assert (= (getMethodBuilder/1564871251 var1490!6) var854)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49 
(define-const var3965 var1948 (getMethod/1564871251 var1490!6)) ; Statement: $r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var891 ClassObject (getReturnType/-1494237887 var3965)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(declare-const var1490!7 var3717)
(assert (not (= var1490!7 null-var3717)))
(assert (= (type/1564871251 var1490!7) var891)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51 
(define-const var1262 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1262)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1262!1 String)
(assert (= var1262!1 ""))
(assert true)
(define-const var2696 String (append/672562846 var1262!1 "set")) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var1262!2 String)
(assert (= var1262!2 (str.++ var1262!1 "set")))
(assert true)
(define-const var2234 String (append/672562846 var2696 var3190)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2696!1 String)
(assert (= var2696!1 (str.++ var2696 var3190)))
(assert true)
(define-const var2058 String (toString/-2075883882 var2234)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var974 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r56 = newarray (java.lang.Class)[1] 
(define-const var314 ClassObject (type/1564871251 var1490!7)) ; Statement: $r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> 
(declare-const var974!1 (Array Int ClassObject))
(assert (not (= var974!1 null-__Array__Int__ClassObject__)))
(assert (= (select var974!1 0) var314)) ; Statement: $r56[0] = $r57 
(define-const var3694 var1948 (var1092_access$1100/1219209240 var3376 var2058 var974!1)) ; Statement: $r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56) 
(declare-const var1490!8 var3717)
(assert (not (= var1490!8 null-var3717)))
(assert (= (setMethod/1564871251 var1490!8) var3694)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58 
(define-const var103 Bool (hasHasMethod/1564871251 var1490!8)) ; Statement: $z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z7 == 0 goto $r59 = null 
(assert (not (= (ite var103 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var900 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var900)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var900!1 String)
(assert (= var900!1 ""))
(assert true)
(define-const var1711 String (append/672562846 var900!1 "has")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var900!2 String)
(assert (= var900!2 (str.++ var900!1 "has")))
(assert true)
(define-const var731 String (append/672562846 var1711 var3190)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1711!1 String)
(assert (= var1711!1 (str.++ var1711 var3190)))
(assert true)
(define-const var91 String (toString/-2075883882 var731)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3948 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r34 = newarray (java.lang.Class)[0] 
(define-const var1253 var1948 (var1092_access$1100/1219209240 var1545 var91 var3948)) ; Statement: $r59 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r35, $r34) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59] 
(assert true) ; Non Conditional
(declare-const var1490!9 var3717)
(assert (not (= var1490!9 null-var3717)))
(assert (= (hasMethod/1564871251 var1490!9) var1253)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59 
(define-const var541 Bool (hasHasMethod/1564871251 var1490!9)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z1 == 0 goto $r60 = null 
(assert (= (ite var541 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2976 var1948 null-var1948) ; Statement: $r60 = null 
(assert true) ; Non Conditional
(declare-const var1490!10 var3717)
(assert (not (= var1490!10 null-var3717)))
(assert (= (hasMethodBuilder/1564871251 var1490!10) var2976)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60 
(define-const var3397 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3397)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3397!1 String)
(assert (= var3397!1 ""))
(assert true)
(define-const var335 String (append/672562846 var3397!1 "clear")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var3397!2 String)
(assert (= var3397!2 (str.++ var3397!1 "clear")))
(assert true)
(define-const var3383 String (append/672562846 var335 var3190)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var335!1 String)
(assert (= var335!1 (str.++ var335 var3190)))
(assert true)
(define-const var2872 String (toString/-2075883882 var3383)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3975 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r10 = newarray (java.lang.Class)[0] 
(define-const var1151 var1948 (var1092_access$1100/1219209240 var3376 var2872 var3975)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10) 
(declare-const var1490!11 var3717)
(assert (not (= var1490!11 null-var3717)))
(assert (= (clearMethod/1564871251 var1490!11) var1151)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12 
(define-const var2876 Bool (isOneofField/1564871251 var1490!11)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z2 == 0 goto $r61 = null 
(assert (not (= (ite var2876 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3485 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3485)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3485!1 String)
(assert (= var3485!1 ""))
(assert true)
(define-const var3437 String (append/672562846 var3485!1 "get")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3485!2 String)
(assert (= var3485!2 (str.++ var3485!1 "get")))
(assert true)
(define-const var767 String (append/672562846 var3437 var3755)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var3437!1 String)
(assert (= var3437!1 (str.++ var3437 var3755)))
(assert true)
(define-const var3898 String (append/672562846 var767 "Case")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var767!1 String)
(assert (= var767!1 (str.++ var767 "Case")))
(assert true)
(define-const var2257 String (toString/-2075883882 var3898)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1228 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r24 = newarray (java.lang.Class)[0] 
(define-const var3939 var1948 (var1092_access$1100/1219209240 var1545 var2257 var1228)) ; Statement: $r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61] 
(assert true) ; Non Conditional
(declare-const var1490!12 var3717)
(assert (not (= var1490!12 null-var3717)))
(assert (= (caseMethod/1564871251 var1490!12) var3939)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61 
(define-const var3445 Bool (isOneofField/1564871251 var1490!12)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z3 == 0 goto $r62 = null 
(assert (not (= (ite var3445 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3511 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3511)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3511!1 String)
(assert (= var3511!1 ""))
(assert true)
(define-const var2672 String (append/672562846 var3511!1 "get")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3511!2 String)
(assert (= var3511!2 (str.++ var3511!1 "get")))
(assert true)
(define-const var326 String (append/672562846 var2672 var3755)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var2672!1 String)
(assert (= var2672!1 (str.++ var2672 var3755)))
(assert true)
(define-const var2773 String (append/672562846 var326 "Case")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var326!1 String)
(assert (= var326!1 (str.++ var326 "Case")))
(assert true)
(define-const var706 String (toString/-2075883882 var2773)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var127 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r18 = newarray (java.lang.Class)[0] 
(define-const var3221 var1948 (var1092_access$1100/1219209240 var3376 var706 var127)) ; Statement: $r62 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r19, $r18) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62] 
(assert true) ; Non Conditional
(declare-const var1490!13 var3717)
(assert (not (= var1490!13 null-var3717)))
(assert (= (caseMethodBuilder/1564871251 var1490!13) var3221)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3717-to-var2937=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Object), field/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingOneof/-1627669827=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor), isOneofField/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), getFile/-1598466931=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var2724_access$1300/1114856001=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], boolean), hasHasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1092_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), type/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Class), setMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), clearMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method)}
; {var3717=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, var1490=r0, var2212=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var954=r1, var3190=r5, var423=null_type, var1545=r4, var3376=r6, var3755=r14, var2937=java.lang.Object, var3751=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var1642=$r2, var1658=$z5, var1530=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2394=$r3, var2724=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable, var161=$z0, var1673=$z6, var3470=$r38, var2698=$r39, var218=$r40, var750=$r41, var3892=$r42, var1948=java.lang.reflect.Method, var1092=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var3038=$r43, var3714=$r44, var975=$r45, var1348=$r46, var250=$r47, var3364=$r48, var854=$r49, var3965=$r50, var891=$r51, var1262=$r52, var2696=$r53, var2234=$r54, var2058=$r55, var974=$r56, var314=$r57, var3694=$r58, var103=$z7, var900=$r31, var1711=$r32, var731=$r33, var91=$r35, var3948=$r34, var1253=$r59, var541=$z1, var2976=$r60, var3397=$r7, var335=$r8, var3383=$r9, var2872=$r11, var3975=$r10, var1151=$r12, var2876=$z2, var3485=$r20, var3437=$r21, var767=$r22, var3898=$r23, var2257=$r25, var1228=$r24, var3939=$r61, var3445=$z3, var3511=$r13, var2672=$r15, var326=$r16, var2773=$r17, var706=$r19, var127=$r18, var3221=$r62}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor=var3717, r0=var1490, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2212, r1=var954, r5=var3190, null_type=var423, r4=var1545, r6=var3376, r14=var3755, java.lang.Object=var2937, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var3751, $r2=var1642, $z5=var1658, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1530, $r3=var2394, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable=var2724, $z0=var161, $z6=var1673, $r38=var3470, $r39=var2698, $r40=var218, $r41=var750, $r42=var3892, java.lang.reflect.Method=var1948, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var1092, $r43=var3038, $r44=var3714, $r45=var975, $r46=var1348, $r47=var250, $r48=var3364, $r49=var854, $r50=var3965, $r51=var891, $r52=var1262, $r53=var2696, $r54=var2234, $r55=var2058, $r56=var974, $r57=var314, $r58=var3694, $z7=var103, $r31=var900, $r32=var1711, $r33=var731, $r35=var91, $r34=var3948, $r59=var1253, $z1=var541, $r60=var2976, $r7=var3397, $r8=var335, $r9=var3383, $r11=var2872, $r10=var3975, $r12=var1151, $z2=var2876, $r20=var3485, $r21=var3437, $r22=var767, $r23=var3898, $r25=var2257, $r24=var1228, $r61=var3939, $z3=var3445, $r13=var3511, $r15=var2672, $r16=var326, $r17=var2773, $r19=var706, $r18=var127, $r62=var3221}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 16,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r5 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.Class;	r6 := @parameter3: java.lang.Class;	r14 := @parameter4: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>();	if $r2 == null goto $z5 = 0;	$z5 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>();	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3);	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r42 = newarray (java.lang.Class)[0];	$r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	$r48 = newarray (java.lang.Class)[0];	$r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49;	$r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod>;	$r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	$r56 = newarray (java.lang.Class)[1];	$r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type>;	$r56[0] = $r57;	$r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58;	$z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z7 == 0 goto $r59 = null;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = newarray (java.lang.Class)[0];	$r59 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r35, $r34);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59;	$z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z1 == 0 goto $r60 = null;	$r60 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = newarray (java.lang.Class)[0];	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12;	$z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z2 == 0 goto $r61 = null;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = newarray (java.lang.Class)[0];	$r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61;	$z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z3 == 0 goto $r62 = null;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = newarray (java.lang.Class)[0];	$r62 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r19, $r18);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62;	return
;block_num 13