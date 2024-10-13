(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3208 0)
(declare-sort var1911 0)
(declare-sort var634 0)
(declare-sort var3628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var634!class ClassObject)
(declare-fun var3208-init () var3208)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1911_getType/1390316439 (ClassObject) var1911)
(declare-fun getDescriptor/42994021 (var1911) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1713637760 (var3208 String Int String String String) void)
(declare-fun getName/-2081927433 (var3628) String)
(declare-fun arr-var3208-init () (Array Int var3208))
(declare-const var3628-THREAD var3628)
(declare-const var3628-CLASS var3628)
(declare-const var3628-STRING var3628)
(declare-const var3208-BEGIN_EVENT var3208)
(declare-const null-__Array__Int__var3208__ (Array Int var3208))
(declare-const var3208-END_EVENT var3208)
(declare-const var3208-PUT_BYTE var3208)
(declare-const var3208-PUT_SHORT var3208)
(declare-const var3208-PUT_INT var3208)
(declare-const var3208-PUT_LONG var3208)
(declare-const var3208-PUT_FLOAT var3208)
(declare-const var3208-PUT_DOUBLE var3208)
(declare-const var3208-PUT_CHAR var3208)
(declare-const var3208-PUT_BOOLEAN var3208)
(declare-const var3208-PUT_THREAD var3208)
(declare-const var3208-PUT_CLASS var3208)
(declare-const var3208-PUT_STRING var3208)
(declare-const var3208-PUT_EVENT_THREAD var3208)
(declare-const var3208-PUT_STACK_TRACE var3208)
(define-const var1447 var3208 var3208-init) ; Statement: $r0 = new jdk.jfr.internal.EventWriterMethod 
(define-const var2118 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2118)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2118!1 String)
(assert (= var2118!1 ""))
(assert true)
(define-const var1580 String (append/672562846 var2118!1 "(")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2118!2 String)
(assert (= var2118!2 (str.++ var2118!1 "(")))
(define-const var3831 var1911 (var1911_getType/1390316439 var634!class)) ; Statement: $r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/PlatformEventType;") 
(assert true)
(define-const var2419 String (getDescriptor/42994021 var3831)) ; Statement: $r3 = virtualinvoke $r2.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var2739 String (append/672562846 var1580 var2419)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1580!1 String)
(assert (= var1580!1 (str.++ var1580 var2419)))
(assert true)
(define-const var4 String (append/672562846 var2739 ")Z")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Z") 
(declare-const var2739!1 String)
(assert (= var2739!1 (str.++ var2739 ")Z")))
(assert true)
(define-const var1458 String (toString/-2075883882 var4)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1713637760 var1447 "BEGIN_EVENT" 0 var1458 "???" "beginEvent")) ; Statement: specialinvoke $r0.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("BEGIN_EVENT", 0, $r7, "???", "beginEvent") 

(declare-const var1447!1 var3208)
(declare-const var3244 String)
(declare-const var1930 Int)
(declare-const var1458!1 String)
(declare-const var577 String)
(declare-const var932 String)
(define-const var3221 var3208 var1447!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod BEGIN_EVENT> = $r0 
(define-const var3287 var3208 var3208-init) ; Statement: $r8 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var3287 "END_EVENT" 1 "()Z" "???" "endEvent")) ; Statement: specialinvoke $r8.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("END_EVENT", 1, "()Z", "???", "endEvent") 

(declare-const var3287!1 var3208)
(declare-const var3241 String)
(declare-const var157 Int)
(declare-const var2489 String)
(declare-const var577!1 String)
(declare-const var1388 String)
(define-const var1461 var3208 var3287!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod END_EVENT> = $r8 
(define-const var3732 var3208 var3208-init) ; Statement: $r9 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var3732 "PUT_BYTE" 2 "(B)V" "byte" "putByte")) ; Statement: specialinvoke $r9.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_BYTE", 2, "(B)V", "byte", "putByte") 

(declare-const var3732!1 var3208)
(declare-const var629 String)
(declare-const var2437 Int)
(declare-const var2747 String)
(declare-const var836 String)
(declare-const var2895 String)
(define-const var3400 var3208 var3732!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BYTE> = $r9 
(define-const var2161 var3208 var3208-init) ; Statement: $r10 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var2161 "PUT_SHORT" 3 "(S)V" "short" "putShort")) ; Statement: specialinvoke $r10.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_SHORT", 3, "(S)V", "short", "putShort") 

(declare-const var2161!1 var3208)
(declare-const var3392 String)
(declare-const var842 Int)
(declare-const var519 String)
(declare-const var1923 String)
(declare-const var235 String)
(define-const var1070 var3208 var2161!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_SHORT> = $r10 
(define-const var2650 var3208 var3208-init) ; Statement: $r11 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var2650 "PUT_INT" 4 "(I)V" "int" "putInt")) ; Statement: specialinvoke $r11.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_INT", 4, "(I)V", "int", "putInt") 

(declare-const var2650!1 var3208)
(declare-const var2073 String)
(declare-const var1693 Int)
(declare-const var53 String)
(declare-const var2908 String)
(declare-const var2461 String)
(define-const var915 var3208 var2650!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_INT> = $r11 
(define-const var1183 var3208 var3208-init) ; Statement: $r12 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var1183 "PUT_LONG" 5 "(J)V" "long" "putLong")) ; Statement: specialinvoke $r12.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_LONG", 5, "(J)V", "long", "putLong") 

(declare-const var1183!1 var3208)
(declare-const var3652 String)
(declare-const var2312 Int)
(declare-const var2842 String)
(declare-const var1467 String)
(declare-const var970 String)
(define-const var1313 var3208 var1183!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_LONG> = $r12 
(define-const var3299 var3208 var3208-init) ; Statement: $r13 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var3299 "PUT_FLOAT" 6 "(F)V" "float" "putFloat")) ; Statement: specialinvoke $r13.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_FLOAT", 6, "(F)V", "float", "putFloat") 

(declare-const var3299!1 var3208)
(declare-const var810 String)
(declare-const var159 Int)
(declare-const var2391 String)
(declare-const var2386 String)
(declare-const var3275 String)
(define-const var2170 var3208 var3299!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_FLOAT> = $r13 
(define-const var3956 var3208 var3208-init) ; Statement: $r14 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var3956 "PUT_DOUBLE" 7 "(D)V" "double" "putDouble")) ; Statement: specialinvoke $r14.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_DOUBLE", 7, "(D)V", "double", "putDouble") 

(declare-const var3956!1 var3208)
(declare-const var2280 String)
(declare-const var3065 Int)
(declare-const var2335 String)
(declare-const var267 String)
(declare-const var1570 String)
(define-const var3232 var3208 var3956!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_DOUBLE> = $r14 
(define-const var550 var3208 var3208-init) ; Statement: $r15 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var550 "PUT_CHAR" 8 "(C)V" "char" "putChar")) ; Statement: specialinvoke $r15.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_CHAR", 8, "(C)V", "char", "putChar") 

(declare-const var550!1 var3208)
(declare-const var3948 String)
(declare-const var889 Int)
(declare-const var3600 String)
(declare-const var387 String)
(declare-const var2921 String)
(define-const var1655 var3208 var550!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CHAR> = $r15 
(define-const var2318 var3208 var3208-init) ; Statement: $r16 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var2318 "PUT_BOOLEAN" 9 "(Z)V" "boolean" "putBoolean")) ; Statement: specialinvoke $r16.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_BOOLEAN", 9, "(Z)V", "boolean", "putBoolean") 

(declare-const var2318!1 var3208)
(declare-const var2350 String)
(declare-const var2376 Int)
(declare-const var1707 String)
(declare-const var2694 String)
(declare-const var1456 String)
(define-const var3541 var3208 var2318!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BOOLEAN> = $r16 
(define-const var2576 var3208 var3208-init) ; Statement: $r17 = new jdk.jfr.internal.EventWriterMethod 
(define-const var2720 var3628 var3628-THREAD) ; Statement: $r18 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD> 
(assert true)
(define-const var3441 String (getName/-2081927433 var2720)) ; Statement: $r19 = virtualinvoke $r18.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1713637760 var2576 "PUT_THREAD" 10 "(Ljava/lang/Thread;)V" var3441 "putThread")) ; Statement: specialinvoke $r17.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_THREAD", 10, "(Ljava/lang/Thread;)V", $r19, "putThread") 

(declare-const var2576!1 var3208)
(declare-const var2567 String)
(declare-const var3598 Int)
(declare-const var580 String)
(declare-const var3441!1 String)
(declare-const var285 String)
(define-const var3405 var3208 var2576!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_THREAD> = $r17 
(define-const var3345 var3208 var3208-init) ; Statement: $r20 = new jdk.jfr.internal.EventWriterMethod 
(define-const var5 var3628 var3628-CLASS) ; Statement: $r21 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type CLASS> 
(assert true)
(define-const var3442 String (getName/-2081927433 var5)) ; Statement: $r22 = virtualinvoke $r21.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1713637760 var3345 "PUT_CLASS" 11 "(Ljava/lang/Class;)V" var3442 "putClass")) ; Statement: specialinvoke $r20.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_CLASS", 11, "(Ljava/lang/Class;)V", $r22, "putClass") 

(declare-const var3345!1 var3208)
(declare-const var3681 String)
(declare-const var3790 Int)
(declare-const var3858 String)
(declare-const var3442!1 String)
(declare-const var1591 String)
(define-const var2803 var3208 var3345!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CLASS> = $r20 
(define-const var1479 var3208 var3208-init) ; Statement: $r23 = new jdk.jfr.internal.EventWriterMethod 
(define-const var694 var3628 var3628-STRING) ; Statement: $r24 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type STRING> 
(assert true)
(define-const var1163 String (getName/-2081927433 var694)) ; Statement: $r25 = virtualinvoke $r24.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1713637760 var1479 "PUT_STRING" 12 "(Ljava/lang/String;Ljdk/jfr/internal/StringPool;)V" var1163 "putString")) ; Statement: specialinvoke $r23.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_STRING", 12, "(Ljava/lang/String;Ljdk/jfr/internal/StringPool;)V", $r25, "putString") 

(declare-const var1479!1 var3208)
(declare-const var1349 String)
(declare-const var1973 Int)
(declare-const var2033 String)
(declare-const var1163!1 String)
(declare-const var546 String)
(define-const var1763 var3208 var1479!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STRING> = $r23 
(define-const var3904 var3208 var3208-init) ; Statement: $r26 = new jdk.jfr.internal.EventWriterMethod 
(define-const var2238 var3628 var3628-THREAD) ; Statement: $r27 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD> 
(assert true)
(define-const var381 String (getName/-2081927433 var2238)) ; Statement: $r28 = virtualinvoke $r27.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1713637760 var3904 "PUT_EVENT_THREAD" 13 "()V" var381 "putEventThread")) ; Statement: specialinvoke $r26.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_EVENT_THREAD", 13, "()V", $r28, "putEventThread") 

(declare-const var3904!1 var3208)
(declare-const var2762 String)
(declare-const var1751 Int)
(declare-const var218 String)
(declare-const var381!1 String)
(declare-const var1305 String)
(define-const var3801 var3208 var3904!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD> = $r26 
(define-const var1218 var3208 var3208-init) ; Statement: $r29 = new jdk.jfr.internal.EventWriterMethod 
(assert true)
;(assert (<init>/-1713637760 var1218 "PUT_STACK_TRACE" 14 "()V" "jdk.types.StackTrace" "putStackTrace")) ; Statement: specialinvoke $r29.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_STACK_TRACE", 14, "()V", "jdk.types.StackTrace", "putStackTrace") 

(declare-const var1218!1 var3208)
(declare-const var2213 String)
(declare-const var909 Int)
(declare-const var218!1 String)
(declare-const var1046 String)
(declare-const var3782 String)
(define-const var3788 var3208 var1218!1) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STACK_TRACE> = $r29 
(define-const var211 (Array Int var3208) arr-var3208-init) ; Statement: $r30 = newarray (jdk.jfr.internal.EventWriterMethod)[15] 
(define-const var727 var3208 var3208-BEGIN_EVENT) ; Statement: $r31 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod BEGIN_EVENT> 
(declare-const var211!1 (Array Int var3208))
(assert (not (= var211!1 null-__Array__Int__var3208__)))
(assert (= (select var211!1 0) var727)) ; Statement: $r30[0] = $r31 
(define-const var1378 var3208 var3208-END_EVENT) ; Statement: $r32 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod END_EVENT> 
(declare-const var211!2 (Array Int var3208))
(assert (not (= var211!2 null-__Array__Int__var3208__)))
(assert (= (select var211!2 1) var1378)) ; Statement: $r30[1] = $r32 
(define-const var3861 var3208 var3208-PUT_BYTE) ; Statement: $r33 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BYTE> 
(declare-const var211!3 (Array Int var3208))
(assert (not (= var211!3 null-__Array__Int__var3208__)))
(assert (= (select var211!3 2) var3861)) ; Statement: $r30[2] = $r33 
(define-const var245 var3208 var3208-PUT_SHORT) ; Statement: $r34 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_SHORT> 
(declare-const var211!4 (Array Int var3208))
(assert (not (= var211!4 null-__Array__Int__var3208__)))
(assert (= (select var211!4 3) var245)) ; Statement: $r30[3] = $r34 
(define-const var197 var3208 var3208-PUT_INT) ; Statement: $r35 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_INT> 
(declare-const var211!5 (Array Int var3208))
(assert (not (= var211!5 null-__Array__Int__var3208__)))
(assert (= (select var211!5 4) var197)) ; Statement: $r30[4] = $r35 
(define-const var2979 var3208 var3208-PUT_LONG) ; Statement: $r36 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_LONG> 
(declare-const var211!6 (Array Int var3208))
(assert (not (= var211!6 null-__Array__Int__var3208__)))
(assert (= (select var211!6 5) var2979)) ; Statement: $r30[5] = $r36 
(define-const var2687 var3208 var3208-PUT_FLOAT) ; Statement: $r37 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_FLOAT> 
(declare-const var211!7 (Array Int var3208))
(assert (not (= var211!7 null-__Array__Int__var3208__)))
(assert (= (select var211!7 6) var2687)) ; Statement: $r30[6] = $r37 
(define-const var480 var3208 var3208-PUT_DOUBLE) ; Statement: $r38 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_DOUBLE> 
(declare-const var211!8 (Array Int var3208))
(assert (not (= var211!8 null-__Array__Int__var3208__)))
(assert (= (select var211!8 7) var480)) ; Statement: $r30[7] = $r38 
(define-const var917 var3208 var3208-PUT_CHAR) ; Statement: $r39 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CHAR> 
(declare-const var211!9 (Array Int var3208))
(assert (not (= var211!9 null-__Array__Int__var3208__)))
(assert (= (select var211!9 8) var917)) ; Statement: $r30[8] = $r39 
(define-const var2853 var3208 var3208-PUT_BOOLEAN) ; Statement: $r40 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BOOLEAN> 
(declare-const var211!10 (Array Int var3208))
(assert (not (= var211!10 null-__Array__Int__var3208__)))
(assert (= (select var211!10 9) var2853)) ; Statement: $r30[9] = $r40 
(define-const var881 var3208 var3208-PUT_THREAD) ; Statement: $r41 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_THREAD> 
(declare-const var211!11 (Array Int var3208))
(assert (not (= var211!11 null-__Array__Int__var3208__)))
(assert (= (select var211!11 10) var881)) ; Statement: $r30[10] = $r41 
(define-const var2629 var3208 var3208-PUT_CLASS) ; Statement: $r42 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CLASS> 
(declare-const var211!12 (Array Int var3208))
(assert (not (= var211!12 null-__Array__Int__var3208__)))
(assert (= (select var211!12 11) var2629)) ; Statement: $r30[11] = $r42 
(define-const var362 var3208 var3208-PUT_STRING) ; Statement: $r43 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STRING> 
(declare-const var211!13 (Array Int var3208))
(assert (not (= var211!13 null-__Array__Int__var3208__)))
(assert (= (select var211!13 12) var362)) ; Statement: $r30[12] = $r43 
(define-const var104 var3208 var3208-PUT_EVENT_THREAD) ; Statement: $r44 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD> 
(declare-const var211!14 (Array Int var3208))
(assert (not (= var211!14 null-__Array__Int__var3208__)))
(assert (= (select var211!14 13) var104)) ; Statement: $r30[13] = $r44 
(define-const var1861 var3208 var3208-PUT_STACK_TRACE) ; Statement: $r45 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STACK_TRACE> 
(declare-const var211!15 (Array Int var3208))
(assert (not (= var211!15 null-__Array__Int__var3208__)))
(assert (= (select var211!15 14) var1861)) ; Statement: $r30[14] = $r45 
(define-const var353 (Array Int var3208) var211!15) ; Statement: <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod[] $VALUES> = $r30 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3208-init=([], jdk.jfr.internal.EventWriterMethod), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1911_getType/1390316439=([java.lang.Class], jdk.internal.org.objectweb.asm.Type), getDescriptor/42994021=([jdk.internal.org.objectweb.asm.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1713637760=([jdk.jfr.internal.EventWriterMethod, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String], void), getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), arr-var3208-init=([], jdk.jfr.internal.EventWriterMethod[])}
; {var3208=jdk.jfr.internal.EventWriterMethod, var1447=$r0, var2118=$r1, var1580=$r4, var1911=jdk.internal.org.objectweb.asm.Type, var634=jdk.jfr.internal.PlatformEventType, var3831=$r2, var2419=$r3, var2739=$r5, var4=$r6, var1458=$r7, var3244="BEGIN_EVENT", var1930=0, var577="???", var932="beginEvent", var3221=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod BEGIN_EVENT>, var3287=$r8, var3241="END_EVENT", var157=1, var2489="()Z", var1388="endEvent", var1461=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod END_EVENT>, var3732=$r9, var629="PUT_BYTE", var2437=2, var2747="(B)V", var836="byte", var2895="putByte", var3400=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BYTE>, var2161=$r10, var3392="PUT_SHORT", var842=3, var519="(S)V", var1923="short", var235="putShort", var1070=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_SHORT>, var2650=$r11, var2073="PUT_INT", var1693=4, var53="(I)V", var2908="int", var2461="putInt", var915=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_INT>, var1183=$r12, var3652="PUT_LONG", var2312=5, var2842="(J)V", var1467="long", var970="putLong", var1313=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_LONG>, var3299=$r13, var810="PUT_FLOAT", var159=6, var2391="(F)V", var2386="float", var3275="putFloat", var2170=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_FLOAT>, var3956=$r14, var2280="PUT_DOUBLE", var3065=7, var2335="(D)V", var267="double", var1570="putDouble", var3232=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_DOUBLE>, var550=$r15, var3948="PUT_CHAR", var889=8, var3600="(C)V", var387="char", var2921="putChar", var1655=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CHAR>, var2318=$r16, var2350="PUT_BOOLEAN", var2376=9, var1707="(Z)V", var2694="boolean", var1456="putBoolean", var3541=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BOOLEAN>, var2576=$r17, var3628=jdk.jfr.internal.Type, var2720=$r18, var3441=$r19, var2567="PUT_THREAD", var3598=10, var580="(Ljava/lang/Thread;)V", var285="putThread", var3405=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_THREAD>, var3345=$r20, var5=$r21, var3442=$r22, var3681="PUT_CLASS", var3790=11, var3858="(Ljava/lang/Class;)V", var1591="putClass", var2803=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CLASS>, var1479=$r23, var694=$r24, var1163=$r25, var1349="PUT_STRING", var1973=12, var2033="(Ljava/lang/String;Ljdk/jfr/internal/StringPool;)V", var546="putString", var1763=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STRING>, var3904=$r26, var2238=$r27, var381=$r28, var2762="PUT_EVENT_THREAD", var1751=13, var218="()V", var1305="putEventThread", var3801=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD>, var1218=$r29, var2213="PUT_STACK_TRACE", var909=14, var1046="jdk.types.StackTrace", var3782="putStackTrace", var3788=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STACK_TRACE>, var211=$r30, var727=$r31, var1378=$r32, var3861=$r33, var245=$r34, var197=$r35, var2979=$r36, var2687=$r37, var480=$r38, var917=$r39, var2853=$r40, var881=$r41, var2629=$r42, var362=$r43, var104=$r44, var1861=$r45, var353=<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod[] $VALUES>}
; {jdk.jfr.internal.EventWriterMethod=var3208, $r0=var1447, $r1=var2118, $r4=var1580, jdk.internal.org.objectweb.asm.Type=var1911, jdk.jfr.internal.PlatformEventType=var634, $r2=var3831, $r3=var2419, $r5=var2739, $r6=var4, $r7=var1458, "BEGIN_EVENT"=var3244, 0=var1930, "???"=var577, "beginEvent"=var932, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod BEGIN_EVENT>=var3221, $r8=var3287, "END_EVENT"=var3241, 1=var157, "()Z"=var2489, "endEvent"=var1388, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod END_EVENT>=var1461, $r9=var3732, "PUT_BYTE"=var629, 2=var2437, "(B)V"=var2747, "byte"=var836, "putByte"=var2895, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BYTE>=var3400, $r10=var2161, "PUT_SHORT"=var3392, 3=var842, "(S)V"=var519, "short"=var1923, "putShort"=var235, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_SHORT>=var1070, $r11=var2650, "PUT_INT"=var2073, 4=var1693, "(I)V"=var53, "int"=var2908, "putInt"=var2461, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_INT>=var915, $r12=var1183, "PUT_LONG"=var3652, 5=var2312, "(J)V"=var2842, "long"=var1467, "putLong"=var970, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_LONG>=var1313, $r13=var3299, "PUT_FLOAT"=var810, 6=var159, "(F)V"=var2391, "float"=var2386, "putFloat"=var3275, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_FLOAT>=var2170, $r14=var3956, "PUT_DOUBLE"=var2280, 7=var3065, "(D)V"=var2335, "double"=var267, "putDouble"=var1570, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_DOUBLE>=var3232, $r15=var550, "PUT_CHAR"=var3948, 8=var889, "(C)V"=var3600, "char"=var387, "putChar"=var2921, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CHAR>=var1655, $r16=var2318, "PUT_BOOLEAN"=var2350, 9=var2376, "(Z)V"=var1707, "boolean"=var2694, "putBoolean"=var1456, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BOOLEAN>=var3541, $r17=var2576, jdk.jfr.internal.Type=var3628, $r18=var2720, $r19=var3441, "PUT_THREAD"=var2567, 10=var3598, "(Ljava/lang/Thread;)V"=var580, "putThread"=var285, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_THREAD>=var3405, $r20=var3345, $r21=var5, $r22=var3442, "PUT_CLASS"=var3681, 11=var3790, "(Ljava/lang/Class;)V"=var3858, "putClass"=var1591, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CLASS>=var2803, $r23=var1479, $r24=var694, $r25=var1163, "PUT_STRING"=var1349, 12=var1973, "(Ljava/lang/String;Ljdk/jfr/internal/StringPool;)V"=var2033, "putString"=var546, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STRING>=var1763, $r26=var3904, $r27=var2238, $r28=var381, "PUT_EVENT_THREAD"=var2762, 13=var1751, "()V"=var218, "putEventThread"=var1305, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD>=var3801, $r29=var1218, "PUT_STACK_TRACE"=var2213, 14=var909, "jdk.types.StackTrace"=var1046, "putStackTrace"=var3782, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STACK_TRACE>=var3788, $r30=var211, $r31=var727, $r32=var1378, $r33=var3861, $r34=var245, $r35=var197, $r36=var2979, $r37=var2687, $r38=var480, $r39=var917, $r40=var2853, $r41=var881, $r42=var2629, $r43=var362, $r44=var104, $r45=var1861, <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod[] $VALUES>=var353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new jdk.jfr.internal.EventWriterMethod;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/PlatformEventType;");	$r3 = virtualinvoke $r2.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Z");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("BEGIN_EVENT", 0, $r7, "???", "beginEvent");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod BEGIN_EVENT> = $r0;	$r8 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r8.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("END_EVENT", 1, "()Z", "???", "endEvent");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod END_EVENT> = $r8;	$r9 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r9.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_BYTE", 2, "(B)V", "byte", "putByte");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BYTE> = $r9;	$r10 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r10.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_SHORT", 3, "(S)V", "short", "putShort");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_SHORT> = $r10;	$r11 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r11.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_INT", 4, "(I)V", "int", "putInt");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_INT> = $r11;	$r12 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r12.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_LONG", 5, "(J)V", "long", "putLong");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_LONG> = $r12;	$r13 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r13.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_FLOAT", 6, "(F)V", "float", "putFloat");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_FLOAT> = $r13;	$r14 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r14.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_DOUBLE", 7, "(D)V", "double", "putDouble");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_DOUBLE> = $r14;	$r15 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r15.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_CHAR", 8, "(C)V", "char", "putChar");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CHAR> = $r15;	$r16 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r16.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_BOOLEAN", 9, "(Z)V", "boolean", "putBoolean");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BOOLEAN> = $r16;	$r17 = new jdk.jfr.internal.EventWriterMethod;	$r18 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD>;	$r19 = virtualinvoke $r18.<jdk.jfr.internal.Type: java.lang.String getName()>();	specialinvoke $r17.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_THREAD", 10, "(Ljava/lang/Thread;)V", $r19, "putThread");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_THREAD> = $r17;	$r20 = new jdk.jfr.internal.EventWriterMethod;	$r21 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type CLASS>;	$r22 = virtualinvoke $r21.<jdk.jfr.internal.Type: java.lang.String getName()>();	specialinvoke $r20.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_CLASS", 11, "(Ljava/lang/Class;)V", $r22, "putClass");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CLASS> = $r20;	$r23 = new jdk.jfr.internal.EventWriterMethod;	$r24 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type STRING>;	$r25 = virtualinvoke $r24.<jdk.jfr.internal.Type: java.lang.String getName()>();	specialinvoke $r23.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_STRING", 12, "(Ljava/lang/String;Ljdk/jfr/internal/StringPool;)V", $r25, "putString");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STRING> = $r23;	$r26 = new jdk.jfr.internal.EventWriterMethod;	$r27 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD>;	$r28 = virtualinvoke $r27.<jdk.jfr.internal.Type: java.lang.String getName()>();	specialinvoke $r26.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_EVENT_THREAD", 13, "()V", $r28, "putEventThread");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD> = $r26;	$r29 = new jdk.jfr.internal.EventWriterMethod;	specialinvoke $r29.<jdk.jfr.internal.EventWriterMethod: void <init>(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String)>("PUT_STACK_TRACE", 14, "()V", "jdk.types.StackTrace", "putStackTrace");	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STACK_TRACE> = $r29;	$r30 = newarray (jdk.jfr.internal.EventWriterMethod)[15];	$r31 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod BEGIN_EVENT>;	$r30[0] = $r31;	$r32 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod END_EVENT>;	$r30[1] = $r32;	$r33 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BYTE>;	$r30[2] = $r33;	$r34 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_SHORT>;	$r30[3] = $r34;	$r35 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_INT>;	$r30[4] = $r35;	$r36 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_LONG>;	$r30[5] = $r36;	$r37 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_FLOAT>;	$r30[6] = $r37;	$r38 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_DOUBLE>;	$r30[7] = $r38;	$r39 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CHAR>;	$r30[8] = $r39;	$r40 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_BOOLEAN>;	$r30[9] = $r40;	$r41 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_THREAD>;	$r30[10] = $r41;	$r42 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_CLASS>;	$r30[11] = $r42;	$r43 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STRING>;	$r30[12] = $r43;	$r44 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD>;	$r30[13] = $r44;	$r45 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_STACK_TRACE>;	$r30[14] = $r45;	<jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod[] $VALUES> = $r30;	return
;block_num 1