(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3143 0)
(declare-sort var1151 0)
(declare-sort var3766 0)
(declare-sort var922 0)
(declare-sort var1693 0)
(declare-sort var1084 0)
(declare-sort var3424 0)
(declare-sort var3009 0)
(declare-sort var2526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var922) void)
(declare-fun cast-from-var3143-to-var922 (var3143) var922)
(declare-fun field/1564871251 (var3143) var1151)
(declare-fun getContainingOneof/-1627669827 (var1151) var1693)
(declare-fun isOneofField/1564871251 (var3143) Bool)
(declare-fun getFile/-1598466931 (var1151) var1084)
(declare-fun var3424_access$1300/1114856001 (var1084) Bool)
(declare-fun hasHasMethod/1564871251 (var3143) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2526_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var3009)
(declare-fun getMethod/1564871251 (var3143) var3009)
(declare-fun getMethodBuilder/1564871251 (var3143) var3009)
(declare-fun getReturnType/-1494237887 (var3009) ClassObject)
(declare-fun type/1564871251 (var3143) ClassObject)
(declare-fun setMethod/1564871251 (var3143) var3009)
(declare-fun hasMethod/1564871251 (var3143) var3009)
(declare-fun hasMethodBuilder/1564871251 (var3143) var3009)
(declare-fun clearMethod/1564871251 (var3143) var3009)
(declare-fun caseMethod/1564871251 (var3143) var3009)
(declare-fun caseMethodBuilder/1564871251 (var3143) var3009)
(declare-const null-var3143 var3143)
(declare-const null-var1151 var1151)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1693 var1693)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3009 var3009)
(declare-const var2730 var3143) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor 
(assert (not (= var2730 null-var3143)))
(declare-const var603 var1151) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var603 null-var1151)))
(declare-const var1249 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1249 null-String)))
(declare-const var868 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var868 null-ClassObject)))
(declare-const var2660 ClassObject) ; Statement: r6 := @parameter3: java.lang.Class 
(assert (not (= var2660 null-ClassObject)))
(declare-const var3952 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var3952 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3143-to-var922 var2730))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2730!1 var3143)
(declare-const var2730!2 var3143)
(assert (not (= var2730!2 null-var3143)))
(assert (= (field/1564871251 var2730!2) var603)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1 
(assert true)
(define-const var3011 var1693 (getContainingOneof/-1627669827 var603)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>() 
 ; Statement: if $r2 == null goto $z5 = 0 
(assert (not (= var3011 null-var1693))) ; Negate: Cond: $r2 == null  
(define-const var212 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5] 
(assert true) ; Non Conditional
(declare-const var2730!3 var3143)
(assert (not (= var2730!3 null-var3143)))
(assert (= (isOneofField/1564871251 var2730!3) var212)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5 
(assert true)
(define-const var3798 var1084 (getFile/-1598466931 var603)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>() 
(define-const var2060 Bool (var3424_access$1300/1114856001 var3798)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var2060 1 0) 0))) ; Cond: $z0 != 0 
(define-const var611 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6] 
(assert true) ; Non Conditional
(declare-const var2730!4 var3143)
(assert (not (= var2730!4 null-var3143)))
(assert (= (hasHasMethod/1564871251 var2730!4) var611)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6 
(define-const var3256 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3256)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3256!1 String)
(assert (= var3256!1 ""))
(assert true)
(define-const var3697 String (append/672562846 var3256!1 "get")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3256!2 String)
(assert (= var3256!2 (str.++ var3256!1 "get")))
(assert true)
(define-const var1396 String (append/672562846 var3697 var1249)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3697!1 String)
(assert (= var3697!1 (str.++ var3697 var1249)))
(assert true)
(define-const var2363 String (toString/-2075883882 var1396)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3443 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r42 = newarray (java.lang.Class)[0] 
(define-const var3522 var3009 (var2526_access$1100/1219209240 var868 var2363 var3443)) ; Statement: $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42) 
(declare-const var2730!5 var3143)
(assert (not (= var2730!5 null-var3143)))
(assert (= (getMethod/1564871251 var2730!5) var3522)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43 
(define-const var1527 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1527)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1527!1 String)
(assert (= var1527!1 ""))
(assert true)
(define-const var2848 String (append/672562846 var1527!1 "get")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1527!2 String)
(assert (= var1527!2 (str.++ var1527!1 "get")))
(assert true)
(define-const var2358 String (append/672562846 var2848 var1249)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2848!1 String)
(assert (= var2848!1 (str.++ var2848 var1249)))
(assert true)
(define-const var3168 String (toString/-2075883882 var2358)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1822 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r48 = newarray (java.lang.Class)[0] 
(define-const var1256 var3009 (var2526_access$1100/1219209240 var2660 var3168 var1822)) ; Statement: $r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48) 
(declare-const var2730!6 var3143)
(assert (not (= var2730!6 null-var3143)))
(assert (= (getMethodBuilder/1564871251 var2730!6) var1256)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49 
(define-const var2922 var3009 (getMethod/1564871251 var2730!6)) ; Statement: $r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var414 ClassObject (getReturnType/-1494237887 var2922)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(declare-const var2730!7 var3143)
(assert (not (= var2730!7 null-var3143)))
(assert (= (type/1564871251 var2730!7) var414)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51 
(define-const var3060 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3060)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3060!1 String)
(assert (= var3060!1 ""))
(assert true)
(define-const var3082 String (append/672562846 var3060!1 "set")) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var3060!2 String)
(assert (= var3060!2 (str.++ var3060!1 "set")))
(assert true)
(define-const var3701 String (append/672562846 var3082 var1249)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3082!1 String)
(assert (= var3082!1 (str.++ var3082 var1249)))
(assert true)
(define-const var2940 String (toString/-2075883882 var3701)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2058 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r56 = newarray (java.lang.Class)[1] 
(define-const var2982 ClassObject (type/1564871251 var2730!7)) ; Statement: $r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> 
(declare-const var2058!1 (Array Int ClassObject))
(assert (not (= var2058!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2058!1 0) var2982)) ; Statement: $r56[0] = $r57 
(define-const var2260 var3009 (var2526_access$1100/1219209240 var2660 var2940 var2058!1)) ; Statement: $r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56) 
(declare-const var2730!8 var3143)
(assert (not (= var2730!8 null-var3143)))
(assert (= (setMethod/1564871251 var2730!8) var2260)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58 
(define-const var1874 Bool (hasHasMethod/1564871251 var2730!8)) ; Statement: $z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z7 == 0 goto $r59 = null 
(assert (= (ite var1874 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3786 var3009 null-var3009) ; Statement: $r59 = null 
(assert true) ; Non Conditional
(declare-const var2730!9 var3143)
(assert (not (= var2730!9 null-var3143)))
(assert (= (hasMethod/1564871251 var2730!9) var3786)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59 
(define-const var3117 Bool (hasHasMethod/1564871251 var2730!9)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z1 == 0 goto $r60 = null 
(assert (not (= (ite var3117 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var218 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var218)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var218!1 String)
(assert (= var218!1 ""))
(assert true)
(define-const var3503 String (append/672562846 var218!1 "has")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var218!2 String)
(assert (= var218!2 (str.++ var218!1 "has")))
(assert true)
(define-const var1797 String (append/672562846 var3503 var1249)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3503!1 String)
(assert (= var3503!1 (str.++ var3503 var1249)))
(assert true)
(define-const var946 String (toString/-2075883882 var1797)) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var433 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r29 = newarray (java.lang.Class)[0] 
(define-const var2400 var3009 (var2526_access$1100/1219209240 var2660 var946 var433)) ; Statement: $r60 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r30, $r29) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60] 
(assert true) ; Non Conditional
(declare-const var2730!10 var3143)
(assert (not (= var2730!10 null-var3143)))
(assert (= (hasMethodBuilder/1564871251 var2730!10) var2400)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60 
(define-const var771 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var771)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var771!1 String)
(assert (= var771!1 ""))
(assert true)
(define-const var2390 String (append/672562846 var771!1 "clear")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var771!2 String)
(assert (= var771!2 (str.++ var771!1 "clear")))
(assert true)
(define-const var2238 String (append/672562846 var2390 var1249)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2390!1 String)
(assert (= var2390!1 (str.++ var2390 var1249)))
(assert true)
(define-const var2134 String (toString/-2075883882 var2238)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3438 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r10 = newarray (java.lang.Class)[0] 
(define-const var2523 var3009 (var2526_access$1100/1219209240 var2660 var2134 var3438)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10) 
(declare-const var2730!11 var3143)
(assert (not (= var2730!11 null-var3143)))
(assert (= (clearMethod/1564871251 var2730!11) var2523)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12 
(define-const var2381 Bool (isOneofField/1564871251 var2730!11)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z2 == 0 goto $r61 = null 
(assert (not (= (ite var2381 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3629 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3629)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3629!1 String)
(assert (= var3629!1 ""))
(assert true)
(define-const var1916 String (append/672562846 var3629!1 "get")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3629!2 String)
(assert (= var3629!2 (str.++ var3629!1 "get")))
(assert true)
(define-const var2758 String (append/672562846 var1916 var3952)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1916!1 String)
(assert (= var1916!1 (str.++ var1916 var3952)))
(assert true)
(define-const var3819 String (append/672562846 var2758 "Case")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var2758!1 String)
(assert (= var2758!1 (str.++ var2758 "Case")))
(assert true)
(define-const var3709 String (toString/-2075883882 var3819)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1760 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r24 = newarray (java.lang.Class)[0] 
(define-const var970 var3009 (var2526_access$1100/1219209240 var868 var3709 var1760)) ; Statement: $r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61] 
(assert true) ; Non Conditional
(declare-const var2730!12 var3143)
(assert (not (= var2730!12 null-var3143)))
(assert (= (caseMethod/1564871251 var2730!12) var970)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61 
(define-const var689 Bool (isOneofField/1564871251 var2730!12)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z3 == 0 goto $r62 = null 
(assert (= (ite var689 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3411 var3009 null-var3009) ; Statement: $r62 = null 
(assert true) ; Non Conditional
(declare-const var2730!13 var3143)
(assert (not (= var2730!13 null-var3143)))
(assert (= (caseMethodBuilder/1564871251 var2730!13) var3411)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3143-to-var922=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Object), field/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingOneof/-1627669827=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor), isOneofField/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), getFile/-1598466931=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var3424_access$1300/1114856001=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], boolean), hasHasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var2526_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), type/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Class), setMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), clearMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method)}
; {var3143=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, var2730=r0, var1151=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var603=r1, var1249=r5, var3766=null_type, var868=r4, var2660=r6, var3952=r14, var922=java.lang.Object, var1693=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var3011=$r2, var212=$z5, var1084=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3798=$r3, var3424=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable, var2060=$z0, var611=$z6, var3256=$r38, var3697=$r39, var1396=$r40, var2363=$r41, var3443=$r42, var3009=java.lang.reflect.Method, var2526=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var3522=$r43, var1527=$r44, var2848=$r45, var2358=$r46, var3168=$r47, var1822=$r48, var1256=$r49, var2922=$r50, var414=$r51, var3060=$r52, var3082=$r53, var3701=$r54, var2940=$r55, var2058=$r56, var2982=$r57, var2260=$r58, var1874=$z7, var3786=$r59, var3117=$z1, var218=$r26, var3503=$r27, var1797=$r28, var946=$r30, var433=$r29, var2400=$r60, var771=$r7, var2390=$r8, var2238=$r9, var2134=$r11, var3438=$r10, var2523=$r12, var2381=$z2, var3629=$r20, var1916=$r21, var2758=$r22, var3819=$r23, var3709=$r25, var1760=$r24, var970=$r61, var689=$z3, var3411=$r62}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor=var3143, r0=var2730, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1151, r1=var603, r5=var1249, null_type=var3766, r4=var868, r6=var2660, r14=var3952, java.lang.Object=var922, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var1693, $r2=var3011, $z5=var212, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1084, $r3=var3798, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable=var3424, $z0=var2060, $z6=var611, $r38=var3256, $r39=var3697, $r40=var1396, $r41=var2363, $r42=var3443, java.lang.reflect.Method=var3009, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var2526, $r43=var3522, $r44=var1527, $r45=var2848, $r46=var2358, $r47=var3168, $r48=var1822, $r49=var1256, $r50=var2922, $r51=var414, $r52=var3060, $r53=var3082, $r54=var3701, $r55=var2940, $r56=var2058, $r57=var2982, $r58=var2260, $z7=var1874, $r59=var3786, $z1=var3117, $r26=var218, $r27=var3503, $r28=var1797, $r30=var946, $r29=var433, $r60=var2400, $r7=var771, $r8=var2390, $r9=var2238, $r11=var2134, $r10=var3438, $r12=var2523, $z2=var2381, $r20=var3629, $r21=var1916, $r22=var2758, $r23=var3819, $r25=var3709, $r24=var1760, $r61=var970, $z3=var689, $r62=var3411}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 13,"<java.lang.StringBuilder: java.lang.String toString()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r5 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.Class;	r6 := @parameter3: java.lang.Class;	r14 := @parameter4: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>();	if $r2 == null goto $z5 = 0;	$z5 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>();	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3);	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r42 = newarray (java.lang.Class)[0];	$r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	$r48 = newarray (java.lang.Class)[0];	$r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49;	$r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod>;	$r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	$r56 = newarray (java.lang.Class)[1];	$r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type>;	$r56[0] = $r57;	$r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58;	$z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z7 == 0 goto $r59 = null;	$r59 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59;	$z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z1 == 0 goto $r60 = null;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = newarray (java.lang.Class)[0];	$r60 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r30, $r29);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = newarray (java.lang.Class)[0];	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12;	$z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z2 == 0 goto $r61 = null;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = newarray (java.lang.Class)[0];	$r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61;	$z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z3 == 0 goto $r62 = null;	$r62 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62;	return
;block_num 13