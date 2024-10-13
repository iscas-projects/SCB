(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2841 0)
(declare-sort var182 0)
(declare-sort var268 0)
(declare-sort var2740 0)
(declare-sort var1662 0)
(declare-sort var3970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2740) void)
(declare-fun cast-from-var2841-to-var2740 (var2841) var2740)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3970_access$1000/-414113668 (ClassObject String (Array Int ClassObject)) var1662)
(declare-fun getMethod/1159159905 (var2841) var1662)
(declare-fun getMethodBuilder/1159159905 (var2841) var1662)
(declare-fun getReturnType/-1494237887 (var1662) ClassObject)
(declare-fun setMethod/1159159905 (var2841) var1662)
(declare-fun hasMethod/1159159905 (var2841) var1662)
(declare-fun hasMethodBuilder/1159159905 (var2841) var1662)
(declare-fun clearMethod/1159159905 (var2841) var1662)
(declare-fun caseMethod/1159159905 (var2841) var1662)
(declare-fun caseMethodBuilder/1159159905 (var2841) var1662)
(declare-const null-var2841 var2841)
(declare-const null-var182 var182)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1662 var1662)
(declare-const var1912 var2841) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker 
(assert (not (= var1912 null-var2841)))
(declare-const var2984 var182) ; Statement: r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2984 null-var182)))
(declare-const var2685 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2685 null-String)))
(declare-const var1323 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var1323 null-ClassObject)))
(declare-const var2954 ClassObject) ; Statement: r9 := @parameter3: java.lang.Class 
(assert (not (= var2954 null-ClassObject)))
(declare-const var3915 String) ; Statement: r31 := @parameter4: java.lang.String 
(assert (not (= var3915 null-String)))
(declare-const var2323 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var2323 null-Bool)))
(declare-const var3 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var3 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2841-to-var2740 var1912))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1912!1 var2841)
(define-const var2123 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2123)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2123!1 String)
(assert (= var2123!1 ""))
(assert true)
(define-const var2862 String (append/672562846 var2123!1 "get")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2123!2 String)
(assert (= var2123!2 (str.++ var2123!1 "get")))
(assert true)
(define-const var831 String (append/672562846 var2862 var2685)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2862!1 String)
(assert (= var2862!1 (str.++ var2862 var2685)))
(assert true)
(define-const var1150 String (toString/-2075883882 var831)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1556 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(define-const var2879 var1662 (var3970_access$1000/-414113668 var1323 var1150 var1556)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6) 
(declare-const var1912!2 var2841)
(assert (not (= var1912!2 null-var2841)))
(assert (= (getMethod/1159159905 var1912!2) var2879)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8 
(define-const var1622 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1622)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1622!1 String)
(assert (= var1622!1 ""))
(assert true)
(define-const var3877 String (append/672562846 var1622!1 "get")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1622!2 String)
(assert (= var1622!2 (str.++ var1622!1 "get")))
(assert true)
(define-const var321 String (append/672562846 var3877 var2685)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3877!1 String)
(assert (= var3877!1 (str.++ var3877 var2685)))
(assert true)
(define-const var1788 String (toString/-2075883882 var321)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3867 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[0] 
(define-const var2149 var1662 (var3970_access$1000/-414113668 var2954 var1788 var3867)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13) 
(declare-const var1912!3 var2841)
(assert (not (= var1912!3 null-var2841)))
(assert (= (getMethodBuilder/1159159905 var1912!3) var2149)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15 
(define-const var3635 var1662 (getMethod/1159159905 var1912!3)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> 
(assert true)
(define-const var832 ClassObject (getReturnType/-1494237887 var3635)) ; Statement: r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var2950 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2950)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2950!1 String)
(assert (= var2950!1 ""))
(assert true)
(define-const var2888 String (append/672562846 var2950!1 "set")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var2950!2 String)
(assert (= var2950!2 (str.++ var2950!1 "set")))
(assert true)
(define-const var1790 String (append/672562846 var2888 var2685)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 var2685)))
(assert true)
(define-const var3387 String (toString/-2075883882 var1790)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1846 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[1] 
(declare-const var1846!1 (Array Int ClassObject))
(assert (not (= var1846!1 null-__Array__Int__ClassObject__)))
(assert (= (select var1846!1 0) var832)) ; Statement: $r21[0] = r17 
(define-const var288 var1662 (var3970_access$1000/-414113668 var2954 var3387 var1846!1)) ; Statement: $r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21) 
(declare-const var1912!4 var2841)
(assert (not (= var1912!4 null-var2841)))
(assert (= (setMethod/1159159905 var1912!4) var288)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23 
 ; Statement: if z0 == 0 goto $r54 = null 
(assert (not (= (ite var3 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1290 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1290)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1290!1 String)
(assert (= var1290!1 ""))
(assert true)
(define-const var1432 String (append/672562846 var1290!1 "has")) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has") 
(declare-const var1290!2 String)
(assert (= var1290!2 (str.++ var1290!1 "has")))
(assert true)
(define-const var3434 String (append/672562846 var1432 var2685)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1432!1 String)
(assert (= var1432!1 (str.++ var1432 var2685)))
(assert true)
(define-const var2964 String (toString/-2075883882 var3434)) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3983 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r51 = newarray (java.lang.Class)[0] 
(define-const var2902 var1662 (var3970_access$1000/-414113668 var1323 var2964 var3983)) ; Statement: $r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54] 
(assert true) ; Non Conditional
(declare-const var1912!5 var2841)
(assert (not (= var1912!5 null-var2841)))
(assert (= (hasMethod/1159159905 var1912!5) var2902)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54 
 ; Statement: if z0 == 0 goto $r55 = null 
(assert (= (ite var3 1 0) 0)) ; Cond: z0 == 0 
(define-const var1585 var1662 null-var1662) ; Statement: $r55 = null 
(assert true) ; Non Conditional
(declare-const var1912!6 var2841)
(assert (not (= var1912!6 null-var2841)))
(assert (= (hasMethodBuilder/1159159905 var1912!6) var1585)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55 
(define-const var3503 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3503)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3503!1 String)
(assert (= var3503!1 ""))
(assert true)
(define-const var1047 String (append/672562846 var3503!1 "clear")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear") 
(declare-const var3503!2 String)
(assert (= var3503!2 (str.++ var3503!1 "clear")))
(assert true)
(define-const var3498 String (append/672562846 var1047 var2685)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1047!1 String)
(assert (= var1047!1 (str.++ var1047 var2685)))
(assert true)
(define-const var1043 String (toString/-2075883882 var3498)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2725 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r27 = newarray (java.lang.Class)[0] 
(define-const var518 var1662 (var3970_access$1000/-414113668 var2954 var1043 var2725)) ; Statement: $r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27) 
(declare-const var1912!7 var2841)
(assert (not (= var1912!7 null-var2841)))
(assert (= (clearMethod/1159159905 var1912!7) var518)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29 
 ; Statement: if z1 == 0 goto $r56 = null 
(assert (not (= (ite var2323 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1339 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1339)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1339!1 String)
(assert (= var1339!1 ""))
(assert true)
(define-const var591 String (append/672562846 var1339!1 "get")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1339!2 String)
(assert (= var1339!2 (str.++ var1339!1 "get")))
(assert true)
(define-const var2146 String (append/672562846 var591 var3915)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var591!1 String)
(assert (= var591!1 (str.++ var591 var3915)))
(assert true)
(define-const var910 String (append/672562846 var2146 "Case")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var2146!1 String)
(assert (= var2146!1 (str.++ var2146 "Case")))
(assert true)
(define-const var57 String (toString/-2075883882 var910)) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2424 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r41 = newarray (java.lang.Class)[0] 
(define-const var3913 var1662 (var3970_access$1000/-414113668 var1323 var57 var2424)) ; Statement: $r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56] 
(assert true) ; Non Conditional
(declare-const var1912!8 var2841)
(assert (not (= var1912!8 null-var2841)))
(assert (= (caseMethod/1159159905 var1912!8) var3913)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56 
 ; Statement: if z1 == 0 goto $r57 = null 
(assert (not (= (ite var2323 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var949 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var949)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var949!1 String)
(assert (= var949!1 ""))
(assert true)
(define-const var3289 String (append/672562846 var949!1 "get")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var949!2 String)
(assert (= var949!2 (str.++ var949!1 "get")))
(assert true)
(define-const var2121 String (append/672562846 var3289 var3915)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 var3915)))
(assert true)
(define-const var3370 String (append/672562846 var2121 "Case")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case") 
(declare-const var2121!1 String)
(assert (= var2121!1 (str.++ var2121 "Case")))
(assert true)
(define-const var1995 String (toString/-2075883882 var3370)) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2993 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r35 = newarray (java.lang.Class)[0] 
(define-const var254 var1662 (var3970_access$1000/-414113668 var2954 var1995 var2993)) ; Statement: $r57 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r36, $r35) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57] 
(assert true) ; Non Conditional
(declare-const var1912!9 var2841)
(assert (not (= var1912!9 null-var2841)))
(assert (= (caseMethodBuilder/1159159905 var1912!9) var254)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2841-to-var2740=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3970_access$1000/-414113668=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), getMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), setMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), hasMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), clearMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethod/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method), caseMethodBuilder/1159159905=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker], java.lang.reflect.Method)}
; {var2841=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker, var1912=r0, var182=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2984=r53, var2685=r3, var268=null_type, var1323=r1, var2954=r9, var3915=r31, var2323=z1, var3=z0, var2740=java.lang.Object, var2123=$r2, var2862=$r4, var831=$r5, var1150=$r7, var1556=$r6, var1662=java.lang.reflect.Method, var3970=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2879=$r8, var1622=$r10, var3877=$r11, var321=$r12, var1788=$r14, var3867=$r13, var2149=$r15, var3635=$r16, var832=r17, var2950=$r18, var2888=$r19, var1790=$r20, var3387=$r22, var1846=$r21, var288=$r23, var1290=$r48, var1432=$r49, var3434=$r50, var2964=$r52, var3983=$r51, var2902=$r54, var1585=$r55, var3503=$r24, var1047=$r25, var3498=$r26, var1043=$r28, var2725=$r27, var518=$r29, var1339=$r37, var591=$r38, var2146=$r39, var910=$r40, var57=$r42, var2424=$r41, var3913=$r56, var949=$r30, var3289=$r32, var2121=$r33, var3370=$r34, var1995=$r36, var2993=$r35, var254=$r57}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker=var2841, r0=var1912, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var182, r53=var2984, r3=var2685, null_type=var268, r1=var1323, r9=var2954, r31=var3915, z1=var2323, z0=var3, java.lang.Object=var2740, $r2=var2123, $r4=var2862, $r5=var831, $r7=var1150, $r6=var1556, java.lang.reflect.Method=var1662, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3970, $r8=var2879, $r10=var1622, $r11=var3877, $r12=var321, $r14=var1788, $r13=var3867, $r15=var2149, $r16=var3635, r17=var832, $r18=var2950, $r19=var2888, $r20=var1790, $r22=var3387, $r21=var1846, $r23=var288, $r48=var1290, $r49=var1432, $r50=var3434, $r52=var2964, $r51=var3983, $r54=var2902, $r55=var1585, $r24=var3503, $r25=var1047, $r26=var3498, $r28=var1043, $r27=var2725, $r29=var518, $r37=var1339, $r38=var591, $r39=var2146, $r40=var910, $r42=var57, $r41=var2424, $r56=var3913, $r30=var949, $r32=var3289, $r33=var2121, $r34=var3370, $r36=var1995, $r35=var2993, $r57=var254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 16,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker;	r53 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class;	r31 := @parameter4: java.lang.String;	z1 := @parameter5: boolean;	z0 := @parameter6: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Class)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r7, $r6);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod> = $r8;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.Class)[0];	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r14, $r13);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethodBuilder> = $r15;	$r16 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method getMethod>;	r17 = virtualinvoke $r16.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = newarray (java.lang.Class)[1];	$r21[0] = r17;	$r23 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r22, $r21);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method setMethod> = $r23;	if z0 == 0 goto $r54 = null;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("has");	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	$r51 = newarray (java.lang.Class)[0];	$r54 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r52, $r51);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethod> = $r54;	if z0 == 0 goto $r55 = null;	$r55 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method hasMethodBuilder> = $r55;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clear");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = newarray (java.lang.Class)[0];	$r29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r28, $r27);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method clearMethod> = $r29;	if z1 == 0 goto $r56 = null;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = newarray (java.lang.Class)[0];	$r56 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, $r42, $r41);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethod> = $r56;	if z1 == 0 goto $r57 = null;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Case");	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = newarray (java.lang.Class)[0];	$r57 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3: java.lang.reflect.Method access$1000(java.lang.Class,java.lang.String,java.lang.Class[])>(r9, $r36, $r35);	goto [?= r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57];	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$ReflectionInvoker: java.lang.reflect.Method caseMethodBuilder> = $r57;	return
;block_num 9