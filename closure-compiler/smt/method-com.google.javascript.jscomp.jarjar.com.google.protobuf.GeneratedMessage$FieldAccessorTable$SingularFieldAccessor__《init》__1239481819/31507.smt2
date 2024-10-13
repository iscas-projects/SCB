(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2920 0)
(declare-sort var3068 0)
(declare-sort var2820 0)
(declare-sort var3064 0)
(declare-sort var2253 0)
(declare-sort var3481 0)
(declare-sort var3819 0)
(declare-sort var2887 0)
(declare-sort var2728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3064) void)
(declare-fun cast-from-var2920-to-var3064 (var2920) var3064)
(declare-fun field/1564871251 (var2920) var3068)
(declare-fun getContainingOneof/-1627669827 (var3068) var2253)
(declare-fun isOneofField/1564871251 (var2920) Bool)
(declare-fun getFile/-1598466931 (var3068) var3481)
(declare-fun var3819_access$1300/1114856001 (var3481) Bool)
(declare-fun hasHasMethod/1564871251 (var2920) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2728_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var2887)
(declare-fun getMethod/1564871251 (var2920) var2887)
(declare-fun getMethodBuilder/1564871251 (var2920) var2887)
(declare-fun getReturnType/-1494237887 (var2887) ClassObject)
(declare-fun type/1564871251 (var2920) ClassObject)
(declare-fun setMethod/1564871251 (var2920) var2887)
(declare-fun hasMethod/1564871251 (var2920) var2887)
(declare-fun hasMethodBuilder/1564871251 (var2920) var2887)
(declare-fun clearMethod/1564871251 (var2920) var2887)
(declare-fun caseMethod/1564871251 (var2920) var2887)
(declare-fun caseMethodBuilder/1564871251 (var2920) var2887)
(declare-const null-var2920 var2920)
(declare-const null-var3068 var3068)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2253 var2253)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2887 var2887)
(declare-const var2189 var2920) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor 
(assert (not (= var2189 null-var2920)))
(declare-const var929 var3068) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var929 null-var3068)))
(declare-const var2810 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2810 null-String)))
(declare-const var10 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var10 null-ClassObject)))
(declare-const var453 ClassObject) ; Statement: r6 := @parameter3: java.lang.Class 
(assert (not (= var453 null-ClassObject)))
(declare-const var3844 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var3844 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2920-to-var3064 var2189))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2189!1 var2920)
(declare-const var2189!2 var2920)
(assert (not (= var2189!2 null-var2920)))
(assert (= (field/1564871251 var2189!2) var929)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1 
(assert true)
(define-const var1070 var2253 (getContainingOneof/-1627669827 var929)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>() 
 ; Statement: if $r2 == null goto $z5 = 0 
(assert (= var1070 null-var2253)) ; Cond: $r2 == null 
(define-const var3012 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(declare-const var2189!3 var2920)
(assert (not (= var2189!3 null-var2920)))
(assert (= (isOneofField/1564871251 var2189!3) var3012)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5 
(assert true)
(define-const var3121 var3481 (getFile/-1598466931 var929)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>() 
(define-const var2695 Bool (var3819_access$1300/1114856001 var3121)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var2695 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2213 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6] 
(assert true) ; Non Conditional
(declare-const var2189!4 var2920)
(assert (not (= var2189!4 null-var2920)))
(assert (= (hasHasMethod/1564871251 var2189!4) var2213)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6 
(define-const var2984 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2984)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2984!1 String)
(assert (= var2984!1 ""))
(assert true)
(define-const var1338 String (append/672562846 var2984!1 "get")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2984!2 String)
(assert (= var2984!2 (str.++ var2984!1 "get")))
(assert true)
(define-const var140 String (append/672562846 var1338 var2810)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1338!1 String)
(assert (= var1338!1 (str.++ var1338 var2810)))
(assert true)
(define-const var160 String (toString/-2075883882 var140)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3263 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r42 = newarray (java.lang.Class)[0] 
(define-const var1673 var2887 (var2728_access$1100/1219209240 var10 var160 var3263)) ; Statement: $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42) 
(declare-const var2189!5 var2920)
(assert (not (= var2189!5 null-var2920)))
(assert (= (getMethod/1564871251 var2189!5) var1673)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43 
(define-const var470 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var470)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var470!1 String)
(assert (= var470!1 ""))
(assert true)
(define-const var3444 String (append/672562846 var470!1 "get")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var470!2 String)
(assert (= var470!2 (str.++ var470!1 "get")))
(assert true)
(define-const var377 String (append/672562846 var3444 var2810)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3444!1 String)
(assert (= var3444!1 (str.++ var3444 var2810)))
(assert true)
(define-const var335 String (toString/-2075883882 var377)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3115 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r48 = newarray (java.lang.Class)[0] 
(define-const var793 var2887 (var2728_access$1100/1219209240 var453 var335 var3115)) ; Statement: $r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48) 
(declare-const var2189!6 var2920)
(assert (not (= var2189!6 null-var2920)))
(assert (= (getMethodBuilder/1564871251 var2189!6) var793)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49 
(define-const var1221 var2887 (getMethod/1564871251 var2189!6)) ; Statement: $r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var1168 ClassObject (getReturnType/-1494237887 var1221)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(declare-const var2189!7 var2920)
(assert (not (= var2189!7 null-var2920)))
(assert (= (type/1564871251 var2189!7) var1168)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51 
(define-const var1227 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1227)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1227!1 String)
(assert (= var1227!1 ""))
(assert true)
(define-const var834 String (append/672562846 var1227!1 "set")) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var1227!2 String)
(assert (= var1227!2 (str.++ var1227!1 "set")))
(assert true)
(define-const var661 String (append/672562846 var834 var2810)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var834!1 String)
(assert (= var834!1 (str.++ var834 var2810)))
(assert true)
(define-const var2387 String (toString/-2075883882 var661)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var201 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r56 = newarray (java.lang.Class)[1] 
(define-const var3740 ClassObject (type/1564871251 var2189!7)) ; Statement: $r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> 
(declare-const var201!1 (Array Int ClassObject))
(assert (not (= var201!1 null-__Array__Int__ClassObject__)))
(assert (= (select var201!1 0) var3740)) ; Statement: $r56[0] = $r57 
(define-const var2930 var2887 (var2728_access$1100/1219209240 var453 var2387 var201!1)) ; Statement: $r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56) 
(declare-const var2189!8 var2920)
(assert (not (= var2189!8 null-var2920)))
(assert (= (setMethod/1564871251 var2189!8) var2930)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58 
(define-const var1865 Bool (hasHasMethod/1564871251 var2189!8)) ; Statement: $z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z7 == 0 goto $r59 = null 
(assert (= (ite var1865 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3843 var2887 null-var2887) ; Statement: $r59 = null 
(assert true) ; Non Conditional
(declare-const var2189!9 var2920)
(assert (not (= var2189!9 null-var2920)))
(assert (= (hasMethod/1564871251 var2189!9) var3843)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59 
(define-const var110 Bool (hasHasMethod/1564871251 var2189!9)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z1 == 0 goto $r60 = null 
(assert (= (ite var110 1 0) 0)) ; Cond: $z1 == 0 
(define-const var534 var2887 null-var2887) ; Statement: $r60 = null 
(assert true) ; Non Conditional
(declare-const var2189!10 var2920)
(assert (not (= var2189!10 null-var2920)))
(assert (= (hasMethodBuilder/1564871251 var2189!10) var534)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60 
(define-const var1502 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1502)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1502!1 String)
(assert (= var1502!1 ""))
(assert true)
(define-const var3729 String (append/672562846 var1502!1 "clear")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var1502!2 String)
(assert (= var1502!2 (str.++ var1502!1 "clear")))
(assert true)
(define-const var2957 String (append/672562846 var3729 var2810)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3729!1 String)
(assert (= var3729!1 (str.++ var3729 var2810)))
(assert true)
(define-const var228 String (toString/-2075883882 var2957)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var976 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r10 = newarray (java.lang.Class)[0] 
(define-const var3363 var2887 (var2728_access$1100/1219209240 var453 var228 var976)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10) 
(declare-const var2189!11 var2920)
(assert (not (= var2189!11 null-var2920)))
(assert (= (clearMethod/1564871251 var2189!11) var3363)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12 
(define-const var2134 Bool (isOneofField/1564871251 var2189!11)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z2 == 0 goto $r61 = null 
(assert (not (= (ite var2134 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var617 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var617)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var617!1 String)
(assert (= var617!1 ""))
(assert true)
(define-const var658 String (append/672562846 var617!1 "get")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var617!2 String)
(assert (= var617!2 (str.++ var617!1 "get")))
(assert true)
(define-const var134 String (append/672562846 var658 var3844)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var658!1 String)
(assert (= var658!1 (str.++ var658 var3844)))
(assert true)
(define-const var708 String (append/672562846 var134 "Case")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var134!1 String)
(assert (= var134!1 (str.++ var134 "Case")))
(assert true)
(define-const var80 String (toString/-2075883882 var708)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3957 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r24 = newarray (java.lang.Class)[0] 
(define-const var1704 var2887 (var2728_access$1100/1219209240 var10 var80 var3957)) ; Statement: $r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61] 
(assert true) ; Non Conditional
(declare-const var2189!12 var2920)
(assert (not (= var2189!12 null-var2920)))
(assert (= (caseMethod/1564871251 var2189!12) var1704)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61 
(define-const var1842 Bool (isOneofField/1564871251 var2189!12)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z3 == 0 goto $r62 = null 
(assert (not (= (ite var1842 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var355 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var355)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var355!1 String)
(assert (= var355!1 ""))
(assert true)
(define-const var1981 String (append/672562846 var355!1 "get")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var355!2 String)
(assert (= var355!2 (str.++ var355!1 "get")))
(assert true)
(define-const var2202 String (append/672562846 var1981 var3844)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1981!1 String)
(assert (= var1981!1 (str.++ var1981 var3844)))
(assert true)
(define-const var3900 String (append/672562846 var2202 "Case")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var2202!1 String)
(assert (= var2202!1 (str.++ var2202 "Case")))
(assert true)
(define-const var2979 String (toString/-2075883882 var3900)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2081 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r18 = newarray (java.lang.Class)[0] 
(define-const var3475 var2887 (var2728_access$1100/1219209240 var453 var2979 var2081)) ; Statement: $r62 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r19, $r18) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62] 
(assert true) ; Non Conditional
(declare-const var2189!13 var2920)
(assert (not (= var2189!13 null-var2920)))
(assert (= (caseMethodBuilder/1564871251 var2189!13) var3475)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2920-to-var3064=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Object), field/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingOneof/-1627669827=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor), isOneofField/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), getFile/-1598466931=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var3819_access$1300/1114856001=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], boolean), hasHasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var2728_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), type/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Class), setMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), clearMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method)}
; {var2920=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, var2189=r0, var3068=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var929=r1, var2810=r5, var2820=null_type, var10=r4, var453=r6, var3844=r14, var3064=java.lang.Object, var2253=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var1070=$r2, var3012=$z5, var3481=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3121=$r3, var3819=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable, var2695=$z0, var2213=$z6, var2984=$r38, var1338=$r39, var140=$r40, var160=$r41, var3263=$r42, var2887=java.lang.reflect.Method, var2728=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var1673=$r43, var470=$r44, var3444=$r45, var377=$r46, var335=$r47, var3115=$r48, var793=$r49, var1221=$r50, var1168=$r51, var1227=$r52, var834=$r53, var661=$r54, var2387=$r55, var201=$r56, var3740=$r57, var2930=$r58, var1865=$z7, var3843=$r59, var110=$z1, var534=$r60, var1502=$r7, var3729=$r8, var2957=$r9, var228=$r11, var976=$r10, var3363=$r12, var2134=$z2, var617=$r20, var658=$r21, var134=$r22, var708=$r23, var80=$r25, var3957=$r24, var1704=$r61, var1842=$z3, var355=$r13, var1981=$r15, var2202=$r16, var3900=$r17, var2979=$r19, var2081=$r18, var3475=$r62}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor=var2920, r0=var2189, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3068, r1=var929, r5=var2810, null_type=var2820, r4=var10, r6=var453, r14=var3844, java.lang.Object=var3064, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var2253, $r2=var1070, $z5=var3012, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3481, $r3=var3121, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable=var3819, $z0=var2695, $z6=var2213, $r38=var2984, $r39=var1338, $r40=var140, $r41=var160, $r42=var3263, java.lang.reflect.Method=var2887, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var2728, $r43=var1673, $r44=var470, $r45=var3444, $r46=var377, $r47=var335, $r48=var3115, $r49=var793, $r50=var1221, $r51=var1168, $r52=var1227, $r53=var834, $r54=var661, $r55=var2387, $r56=var201, $r57=var3740, $r58=var2930, $z7=var1865, $r59=var3843, $z1=var110, $r60=var534, $r7=var1502, $r8=var3729, $r9=var2957, $r11=var228, $r10=var976, $r12=var3363, $z2=var2134, $r20=var617, $r21=var658, $r22=var134, $r23=var708, $r25=var80, $r24=var3957, $r61=var1704, $z3=var1842, $r13=var355, $r15=var1981, $r16=var2202, $r17=var3900, $r19=var2979, $r18=var2081, $r62=var3475}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.String toString()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r5 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.Class;	r6 := @parameter3: java.lang.Class;	r14 := @parameter4: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>();	if $r2 == null goto $z5 = 0;	$z5 = 0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>();	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3);	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r42 = newarray (java.lang.Class)[0];	$r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	$r48 = newarray (java.lang.Class)[0];	$r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49;	$r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod>;	$r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	$r56 = newarray (java.lang.Class)[1];	$r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type>;	$r56[0] = $r57;	$r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58;	$z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z7 == 0 goto $r59 = null;	$r59 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59;	$z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z1 == 0 goto $r60 = null;	$r60 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = newarray (java.lang.Class)[0];	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12;	$z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z2 == 0 goto $r61 = null;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = newarray (java.lang.Class)[0];	$r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61;	$z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z3 == 0 goto $r62 = null;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = newarray (java.lang.Class)[0];	$r62 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r19, $r18);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62;	return
;block_num 13