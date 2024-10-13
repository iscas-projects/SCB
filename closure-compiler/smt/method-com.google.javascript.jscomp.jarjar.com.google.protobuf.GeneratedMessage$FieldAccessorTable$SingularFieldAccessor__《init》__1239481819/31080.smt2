(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1769 0)
(declare-sort var1625 0)
(declare-sort var2714 0)
(declare-sort var3648 0)
(declare-sort var2675 0)
(declare-sort var1385 0)
(declare-sort var606 0)
(declare-sort var1077 0)
(declare-sort var1981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3648) void)
(declare-fun cast-from-var1769-to-var3648 (var1769) var3648)
(declare-fun field/1564871251 (var1769) var1625)
(declare-fun getContainingOneof/-1627669827 (var1625) var2675)
(declare-fun isOneofField/1564871251 (var1769) Bool)
(declare-fun getFile/-1598466931 (var1625) var1385)
(declare-fun var606_access$1300/1114856001 (var1385) Bool)
(declare-fun hasHasMethod/1564871251 (var1769) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1981_access$1100/1219209240 (ClassObject String (Array Int ClassObject)) var1077)
(declare-fun getMethod/1564871251 (var1769) var1077)
(declare-fun getMethodBuilder/1564871251 (var1769) var1077)
(declare-fun getReturnType/-1494237887 (var1077) ClassObject)
(declare-fun type/1564871251 (var1769) ClassObject)
(declare-fun setMethod/1564871251 (var1769) var1077)
(declare-fun hasMethod/1564871251 (var1769) var1077)
(declare-fun hasMethodBuilder/1564871251 (var1769) var1077)
(declare-fun clearMethod/1564871251 (var1769) var1077)
(declare-fun caseMethod/1564871251 (var1769) var1077)
(declare-fun caseMethodBuilder/1564871251 (var1769) var1077)
(declare-const null-var1769 var1769)
(declare-const null-var1625 var1625)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2675 var2675)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1077 var1077)
(declare-const var1132 var1769) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor 
(assert (not (= var1132 null-var1769)))
(declare-const var327 var1625) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var327 null-var1625)))
(declare-const var251 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var251 null-String)))
(declare-const var1922 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var1922 null-ClassObject)))
(declare-const var2512 ClassObject) ; Statement: r6 := @parameter3: java.lang.Class 
(assert (not (= var2512 null-ClassObject)))
(declare-const var288 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var288 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1769-to-var3648 var1132))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1132!1 var1769)
(declare-const var1132!2 var1769)
(assert (not (= var1132!2 null-var1769)))
(assert (= (field/1564871251 var1132!2) var327)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1 
(assert true)
(define-const var358 var2675 (getContainingOneof/-1627669827 var327)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>() 
 ; Statement: if $r2 == null goto $z5 = 0 
(assert (not (= var358 null-var2675))) ; Negate: Cond: $r2 == null  
(define-const var256 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5] 
(assert true) ; Non Conditional
(declare-const var1132!3 var1769)
(assert (not (= var1132!3 null-var1769)))
(assert (= (isOneofField/1564871251 var1132!3) var256)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5 
(assert true)
(define-const var2524 var1385 (getFile/-1598466931 var327)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>() 
(define-const var1868 Bool (var606_access$1300/1114856001 var2524)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var1868 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2929 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6] 
(assert true) ; Non Conditional
(declare-const var1132!4 var1769)
(assert (not (= var1132!4 null-var1769)))
(assert (= (hasHasMethod/1564871251 var1132!4) var2929)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6 
(define-const var990 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var990)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var990!1 String)
(assert (= var990!1 ""))
(assert true)
(define-const var2659 String (append/672562846 var990!1 "get")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var990!2 String)
(assert (= var990!2 (str.++ var990!1 "get")))
(assert true)
(define-const var3940 String (append/672562846 var2659 var251)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2659!1 String)
(assert (= var2659!1 (str.++ var2659 var251)))
(assert true)
(define-const var1384 String (toString/-2075883882 var3940)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1777 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r42 = newarray (java.lang.Class)[0] 
(define-const var3836 var1077 (var1981_access$1100/1219209240 var1922 var1384 var1777)) ; Statement: $r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42) 
(declare-const var1132!5 var1769)
(assert (not (= var1132!5 null-var1769)))
(assert (= (getMethod/1564871251 var1132!5) var3836)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43 
(define-const var3908 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3908)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3908!1 String)
(assert (= var3908!1 ""))
(assert true)
(define-const var890 String (append/672562846 var3908!1 "get")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3908!2 String)
(assert (= var3908!2 (str.++ var3908!1 "get")))
(assert true)
(define-const var652 String (append/672562846 var890 var251)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var890!1 String)
(assert (= var890!1 (str.++ var890 var251)))
(assert true)
(define-const var1594 String (toString/-2075883882 var652)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3935 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r48 = newarray (java.lang.Class)[0] 
(define-const var1664 var1077 (var1981_access$1100/1219209240 var2512 var1594 var3935)) ; Statement: $r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48) 
(declare-const var1132!6 var1769)
(assert (not (= var1132!6 null-var1769)))
(assert (= (getMethodBuilder/1564871251 var1132!6) var1664)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49 
(define-const var1055 var1077 (getMethod/1564871251 var1132!6)) ; Statement: $r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var1417 ClassObject (getReturnType/-1494237887 var1055)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(declare-const var1132!7 var1769)
(assert (not (= var1132!7 null-var1769)))
(assert (= (type/1564871251 var1132!7) var1417)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51 
(define-const var924 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var924)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var924!1 String)
(assert (= var924!1 ""))
(assert true)
(define-const var1876 String (append/672562846 var924!1 "set")) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var924!2 String)
(assert (= var924!2 (str.++ var924!1 "set")))
(assert true)
(define-const var3840 String (append/672562846 var1876 var251)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1876!1 String)
(assert (= var1876!1 (str.++ var1876 var251)))
(assert true)
(define-const var1020 String (toString/-2075883882 var3840)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2533 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r56 = newarray (java.lang.Class)[1] 
(define-const var1935 ClassObject (type/1564871251 var1132!7)) ; Statement: $r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> 
(declare-const var2533!1 (Array Int ClassObject))
(assert (not (= var2533!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2533!1 0) var1935)) ; Statement: $r56[0] = $r57 
(define-const var273 var1077 (var1981_access$1100/1219209240 var2512 var1020 var2533!1)) ; Statement: $r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56) 
(declare-const var1132!8 var1769)
(assert (not (= var1132!8 null-var1769)))
(assert (= (setMethod/1564871251 var1132!8) var273)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58 
(define-const var1965 Bool (hasHasMethod/1564871251 var1132!8)) ; Statement: $z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z7 == 0 goto $r59 = null 
(assert (not (= (ite var1965 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var3184 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3184)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3184!1 String)
(assert (= var3184!1 ""))
(assert true)
(define-const var2016 String (append/672562846 var3184!1 "has")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var3184!2 String)
(assert (= var3184!2 (str.++ var3184!1 "has")))
(assert true)
(define-const var2717 String (append/672562846 var2016 var251)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2016!1 String)
(assert (= var2016!1 (str.++ var2016 var251)))
(assert true)
(define-const var16 String (toString/-2075883882 var2717)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var235 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r34 = newarray (java.lang.Class)[0] 
(define-const var3934 var1077 (var1981_access$1100/1219209240 var1922 var16 var235)) ; Statement: $r59 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r35, $r34) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59] 
(assert true) ; Non Conditional
(declare-const var1132!9 var1769)
(assert (not (= var1132!9 null-var1769)))
(assert (= (hasMethod/1564871251 var1132!9) var3934)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59 
(define-const var1352 Bool (hasHasMethod/1564871251 var1132!9)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> 
 ; Statement: if $z1 == 0 goto $r60 = null 
(assert (not (= (ite var1352 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1065 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1065)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1065!1 String)
(assert (= var1065!1 ""))
(assert true)
(define-const var2982 String (append/672562846 var1065!1 "has")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var1065!2 String)
(assert (= var1065!2 (str.++ var1065!1 "has")))
(assert true)
(define-const var2374 String (append/672562846 var2982 var251)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2982!1 String)
(assert (= var2982!1 (str.++ var2982 var251)))
(assert true)
(define-const var1534 String (toString/-2075883882 var2374)) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3943 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r29 = newarray (java.lang.Class)[0] 
(define-const var434 var1077 (var1981_access$1100/1219209240 var2512 var1534 var3943)) ; Statement: $r60 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r30, $r29) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60] 
(assert true) ; Non Conditional
(declare-const var1132!10 var1769)
(assert (not (= var1132!10 null-var1769)))
(assert (= (hasMethodBuilder/1564871251 var1132!10) var434)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60 
(define-const var2061 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2061)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2061!1 String)
(assert (= var2061!1 ""))
(assert true)
(define-const var3816 String (append/672562846 var2061!1 "clear")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var2061!2 String)
(assert (= var2061!2 (str.++ var2061!1 "clear")))
(assert true)
(define-const var3043 String (append/672562846 var3816 var251)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3816!1 String)
(assert (= var3816!1 (str.++ var3816 var251)))
(assert true)
(define-const var3835 String (toString/-2075883882 var3043)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var474 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r10 = newarray (java.lang.Class)[0] 
(define-const var886 var1077 (var1981_access$1100/1219209240 var2512 var3835 var474)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10) 
(declare-const var1132!11 var1769)
(assert (not (= var1132!11 null-var1769)))
(assert (= (clearMethod/1564871251 var1132!11) var886)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12 
(define-const var892 Bool (isOneofField/1564871251 var1132!11)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z2 == 0 goto $r61 = null 
(assert (not (= (ite var892 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var95 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var95)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var95!1 String)
(assert (= var95!1 ""))
(assert true)
(define-const var2264 String (append/672562846 var95!1 "get")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var95!2 String)
(assert (= var95!2 (str.++ var95!1 "get")))
(assert true)
(define-const var1034 String (append/672562846 var2264 var288)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var2264!1 String)
(assert (= var2264!1 (str.++ var2264 var288)))
(assert true)
(define-const var2336 String (append/672562846 var1034 "Case")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var1034!1 String)
(assert (= var1034!1 (str.++ var1034 "Case")))
(assert true)
(define-const var713 String (toString/-2075883882 var2336)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1185 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r24 = newarray (java.lang.Class)[0] 
(define-const var2097 var1077 (var1981_access$1100/1219209240 var1922 var713 var1185)) ; Statement: $r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61] 
(assert true) ; Non Conditional
(declare-const var1132!12 var1769)
(assert (not (= var1132!12 null-var1769)))
(assert (= (caseMethod/1564871251 var1132!12) var2097)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61 
(define-const var681 Bool (isOneofField/1564871251 var1132!12)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> 
 ; Statement: if $z3 == 0 goto $r62 = null 
(assert (= (ite var681 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2248 var1077 null-var1077) ; Statement: $r62 = null 
(assert true) ; Non Conditional
(declare-const var1132!13 var1769)
(assert (not (= var1132!13 null-var1769)))
(assert (= (caseMethodBuilder/1564871251 var1132!13) var2248)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1769-to-var3648=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Object), field/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingOneof/-1627669827=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor), isOneofField/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), getFile/-1598466931=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var606_access$1300/1114856001=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], boolean), hasHasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1981_access$1100/1219209240=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), type/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.Class), setMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), hasMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), clearMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethod/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method), caseMethodBuilder/1564871251=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor], java.lang.reflect.Method)}
; {var1769=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor, var1132=r0, var1625=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var327=r1, var251=r5, var2714=null_type, var1922=r4, var2512=r6, var288=r14, var3648=java.lang.Object, var2675=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor, var358=$r2, var256=$z5, var1385=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2524=$r3, var606=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable, var1868=$z0, var2929=$z6, var990=$r38, var2659=$r39, var3940=$r40, var1384=$r41, var1777=$r42, var1077=java.lang.reflect.Method, var1981=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var3836=$r43, var3908=$r44, var890=$r45, var652=$r46, var1594=$r47, var3935=$r48, var1664=$r49, var1055=$r50, var1417=$r51, var924=$r52, var1876=$r53, var3840=$r54, var1020=$r55, var2533=$r56, var1935=$r57, var273=$r58, var1965=$z7, var3184=$r31, var2016=$r32, var2717=$r33, var16=$r35, var235=$r34, var3934=$r59, var1352=$z1, var1065=$r26, var2982=$r27, var2374=$r28, var1534=$r30, var3943=$r29, var434=$r60, var2061=$r7, var3816=$r8, var3043=$r9, var3835=$r11, var474=$r10, var886=$r12, var892=$z2, var95=$r20, var2264=$r21, var1034=$r22, var2336=$r23, var713=$r25, var1185=$r24, var2097=$r61, var681=$z3, var2248=$r62}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor=var1769, r0=var1132, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1625, r1=var327, r5=var251, null_type=var2714, r4=var1922, r6=var2512, r14=var288, java.lang.Object=var3648, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor=var2675, $r2=var358, $z5=var256, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1385, $r3=var2524, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable=var606, $z0=var1868, $z6=var2929, $r38=var990, $r39=var2659, $r40=var3940, $r41=var1384, $r42=var1777, java.lang.reflect.Method=var1077, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var1981, $r43=var3836, $r44=var3908, $r45=var890, $r46=var652, $r47=var1594, $r48=var3935, $r49=var1664, $r50=var1055, $r51=var1417, $r52=var924, $r53=var1876, $r54=var3840, $r55=var1020, $r56=var2533, $r57=var1935, $r58=var273, $z7=var1965, $r31=var3184, $r32=var2016, $r33=var2717, $r35=var16, $r34=var235, $r59=var3934, $z1=var1352, $r26=var1065, $r27=var2982, $r28=var2374, $r30=var1534, $r29=var3943, $r60=var434, $r7=var2061, $r8=var3816, $r9=var3043, $r11=var3835, $r10=var474, $r12=var886, $z2=var892, $r20=var95, $r21=var2264, $r22=var1034, $r23=var2336, $r25=var713, $r24=var1185, $r61=var2097, $z3=var681, $r62=var2248}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 15,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r5 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.Class;	r6 := @parameter3: java.lang.Class;	r14 := @parameter4: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor field> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$OneofDescriptor getContainingOneof()>();	if $r2 == null goto $z5 = 0;	$z5 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField> = $z5;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor getFile()>();	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable: boolean access$1300(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3);	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod> = $z6;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r42 = newarray (java.lang.Class)[0];	$r43 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r41, $r42);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod> = $r43;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	$r48 = newarray (java.lang.Class)[0];	$r49 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r47, $r48);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethodBuilder> = $r49;	$r50 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method getMethod>;	$r51 = virtualinvoke $r50.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type> = $r51;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	$r56 = newarray (java.lang.Class)[1];	$r57 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.Class type>;	$r56[0] = $r57;	$r58 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r55, $r56);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method setMethod> = $r58;	$z7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z7 == 0 goto $r59 = null;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = newarray (java.lang.Class)[0];	$r59 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r35, $r34);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethod> = $r59;	$z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean hasHasMethod>;	if $z1 == 0 goto $r60 = null;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = newarray (java.lang.Class)[0];	$r60 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r30, $r29);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method hasMethodBuilder> = $r60;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = newarray (java.lang.Class)[0];	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r6, $r11, $r10);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method clearMethod> = $r12;	$z2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z2 == 0 goto $r61 = null;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = newarray (java.lang.Class)[0];	$r61 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage: java.lang.reflect.Method access$1100(java.lang.Class,java.lang.String,java.lang.Class[])>(r4, $r25, $r24);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethod> = $r61;	$z3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: boolean isOneofField>;	if $z3 == 0 goto $r62 = null;	$r62 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$FieldAccessorTable$SingularFieldAccessor: java.lang.reflect.Method caseMethodBuilder> = $r62;	return
;block_num 13