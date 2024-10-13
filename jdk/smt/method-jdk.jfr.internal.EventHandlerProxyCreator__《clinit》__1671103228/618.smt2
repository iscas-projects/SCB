(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3487 0)
(declare-sort var1030 0)
(declare-sort var1490 0)
(declare-sort var57 0)
(declare-sort var1115 0)
(declare-sort var3853 0)
(declare-sort var988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1030!class ClassObject)
(declare-const var1490!class ClassObject)
(declare-fun var3487_getType/1390316439 (ClassObject) var3487)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDescriptor/42994021 (var3487) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1115-init () var1115)
(declare-fun <init>/-2001940036 (var1115 String String) void)
(declare-fun var3853-init () var3853)
(declare-fun <init>/1540647575 (var3853 Int) void)
(declare-fun var988_getInternalName/246609718 (String) String)
(declare-fun var57_makeEventHandlerProxyClass/-1834103227 () ClassObject)
(declare-const var3487-BOOLEAN_TYPE var3487)
(declare-const var57-TYPE_EVENT_TYPE var3487)
(declare-const var57-TYPE_EVENT_CONTROL var3487)
(declare-const var57-DESCRIPTOR_EVENT_HANDLER String)
(declare-const var3487-LONG_TYPE var3487)
(declare-const var57-DESCRIPTOR_TIME_STAMP String)
(declare-const var57-DESCRIPTOR_DURATION String)
(define-const var809 var3487 (var3487_getType/1390316439 var1030!class)) ; Statement: $r0 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/EventType;") 
(define-const var2097 var3487 var809) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE> = $r0 
(define-const var2657 var3487 (var3487_getType/1390316439 var1490!class)) ; Statement: $r1 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/EventControl;") 
(define-const var936 var3487 var2657) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL> = $r1 
(define-const var324 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var324)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var324!1 String)
(assert (= var324!1 ""))
(assert true)
(define-const var1244 String (append/672562846 var324!1 "(")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var324!2 String)
(assert (= var324!2 (str.++ var324!1 "(")))
(define-const var1934 var3487 var3487-BOOLEAN_TYPE) ; Statement: $r3 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE> 
(assert true)
(define-const var2595 String (getDescriptor/42994021 var1934)) ; Statement: $r4 = virtualinvoke $r3.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3597 String (append/672562846 var1244 var2595)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1244!1 String)
(assert (= var1244!1 (str.++ var1244 var2595)))
(define-const var547 var3487 var57-TYPE_EVENT_TYPE) ; Statement: $r6 = <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE> 
(assert true)
(define-const var517 String (getDescriptor/42994021 var547)) ; Statement: $r7 = virtualinvoke $r6.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1673 String (append/672562846 var3597 var517)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3597!1 String)
(assert (= var3597!1 (str.++ var3597 var517)))
(define-const var949 var3487 var57-TYPE_EVENT_CONTROL) ; Statement: $r9 = <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL> 
(assert true)
(define-const var3005 String (getDescriptor/42994021 var949)) ; Statement: $r10 = virtualinvoke $r9.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3968 String (append/672562846 var1673 var3005)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1673!1 String)
(assert (= var1673!1 (str.++ var1673 var3005)))
(assert true)
(define-const var2526 String (append/672562846 var3968 ")V")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var3968!1 String)
(assert (= var3968!1 (str.++ var3968 ")V")))
(assert true)
(define-const var830 String (toString/-2075883882 var2526)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var262 String var830) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER> = $r14 
(define-const var2428 var1115 var1115-init) ; Statement: $r15 = new jdk.internal.org.objectweb.asm.commons.Method 
(define-const var2530 String var57-DESCRIPTOR_EVENT_HANDLER) ; Statement: $r16 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER> 
(assert true)
;(assert (<init>/-2001940036 var2428 "<init>" var2530)) ; Statement: specialinvoke $r15.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("<init>", $r16) 

(declare-const var2428!1 var1115)
(declare-const var3009 String)
(declare-const var2530!1 String)
(define-const var3163 var1115 var2428!1) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR> = $r15 
(define-const var3148 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3148)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3148!1 String)
(assert (= var3148!1 ""))
(assert true)
(define-const var2949 String (append/672562846 var3148!1 "()")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var3148!2 String)
(assert (= var3148!2 (str.++ var3148!1 "()")))
(define-const var565 var3487 var3487-LONG_TYPE) ; Statement: $r18 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE> 
(assert true)
(define-const var1638 String (getDescriptor/42994021 var565)) ; Statement: $r19 = virtualinvoke $r18.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var168 String (append/672562846 var2949 var1638)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2949!1 String)
(assert (= var2949!1 (str.++ var2949 var1638)))
(assert true)
(define-const var2155 String (toString/-2075883882 var168)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3504 String var2155) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_TIME_STAMP> = $r22 
(define-const var1640 var1115 var1115-init) ; Statement: $r23 = new jdk.internal.org.objectweb.asm.commons.Method 
(define-const var429 String var57-DESCRIPTOR_TIME_STAMP) ; Statement: $r24 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_TIME_STAMP> 
(assert true)
;(assert (<init>/-2001940036 var1640 "timestamp" var429)) ; Statement: specialinvoke $r23.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("timestamp", $r24) 

(declare-const var1640!1 var1115)
(declare-const var178 String)
(declare-const var429!1 String)
(define-const var418 var1115 var1640!1) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_TIME_STAMP> = $r23 
(define-const var3545 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3545)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3545!1 String)
(assert (= var3545!1 ""))
(assert true)
(define-const var1103 String (append/672562846 var3545!1 "(")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3545!2 String)
(assert (= var3545!2 (str.++ var3545!1 "(")))
(define-const var2454 var3487 var3487-LONG_TYPE) ; Statement: $r26 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE> 
(assert true)
(define-const var191 String (getDescriptor/42994021 var2454)) ; Statement: $r27 = virtualinvoke $r26.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1925 String (append/672562846 var1103 var191)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1103!1 String)
(assert (= var1103!1 (str.++ var1103 var191)))
(assert true)
(define-const var2000 String (append/672562846 var1925 ")")) ; Statement: $r32 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1925!1 String)
(assert (= var1925!1 (str.++ var1925 ")")))
(define-const var415 var3487 var3487-LONG_TYPE) ; Statement: $r30 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE> 
(assert true)
(define-const var1059 String (getDescriptor/42994021 var415)) ; Statement: $r31 = virtualinvoke $r30.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var173 String (append/672562846 var2000 var1059)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var2000!1 String)
(assert (= var2000!1 (str.++ var2000 var1059)))
(assert true)
(define-const var23 String (toString/-2075883882 var173)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2758 String var23) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_DURATION> = $r34 
(define-const var869 var1115 var1115-init) ; Statement: $r35 = new jdk.internal.org.objectweb.asm.commons.Method 
(define-const var3889 String var57-DESCRIPTOR_DURATION) ; Statement: $r36 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_DURATION> 
(assert true)
;(assert (<init>/-2001940036 var869 "duration" var3889)) ; Statement: specialinvoke $r35.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("duration", $r36) 

(declare-const var869!1 var1115)
(declare-const var1644 String)
(declare-const var3889!1 String)
(define-const var2183 var1115 var869!1) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_DURATION> = $r35 
(define-const var2872 var3853 var3853-init) ; Statement: $r37 = new jdk.internal.org.objectweb.asm.ClassWriter 
(assert true)
;(assert (<init>/1540647575 var2872 3)) ; Statement: specialinvoke $r37.<jdk.internal.org.objectweb.asm.ClassWriter: void <init>(int)>(3) 

(declare-const var2872!1 var3853)
(declare-const var2401 Int)
(define-const var2154 var3853 var2872!1) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.ClassWriter classWriter> = $r37 
(define-const var708 String (var988_getInternalName/246609718 "jdk.jfr.proxy.internal.EventHandlerProxy")) ; Statement: $r38 = staticinvoke <jdk.jfr.internal.ASMToolkit: java.lang.String getInternalName(java.lang.String)>("jdk.jfr.proxy.internal.EventHandlerProxy") 
(define-const var661 String var708) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String internalClassName> = $r38 
(define-const var2586 ClassObject var57_makeEventHandlerProxyClass/-1834103227) ; Statement: $r39 = staticinvoke <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class makeEventHandlerProxyClass()>() 
(define-const var2367 ClassObject var2586) ; Statement: <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class proxyClass> = $r39 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3487_getType/1390316439=([java.lang.Class], jdk.internal.org.objectweb.asm.Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDescriptor/42994021=([jdk.internal.org.objectweb.asm.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1115-init=([], jdk.internal.org.objectweb.asm.commons.Method), <init>/-2001940036=([jdk.internal.org.objectweb.asm.commons.Method, java.lang.String, java.lang.String], void), var3853-init=([], jdk.internal.org.objectweb.asm.ClassWriter), <init>/1540647575=([jdk.internal.org.objectweb.asm.ClassWriter, int], void), var988_getInternalName/246609718=([java.lang.String], java.lang.String), var57_makeEventHandlerProxyClass/-1834103227=([], java.lang.Class)}
; {var3487=jdk.internal.org.objectweb.asm.Type, var1030=jdk.jfr.EventType, var809=$r0, var2097=<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE>, var1490=jdk.jfr.internal.EventControl, var2657=$r1, var936=<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL>, var324=$r2, var1244=$r5, var1934=$r3, var2595=$r4, var3597=$r8, var57=jdk.jfr.internal.EventHandlerProxyCreator, var547=$r6, var517=$r7, var1673=$r11, var949=$r9, var3005=$r10, var3968=$r12, var2526=$r13, var830=$r14, var262=<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER>, var1115=jdk.internal.org.objectweb.asm.commons.Method, var2428=$r15, var2530=$r16, var3009="<init>", var3163=<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR>, var3148=$r17, var2949=$r20, var565=$r18, var1638=$r19, var168=$r21, var2155=$r22, var3504=<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_TIME_STAMP>, var1640=$r23, var429=$r24, var178="timestamp", var418=<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_TIME_STAMP>, var3545=$r25, var1103=$r28, var2454=$r26, var191=$r27, var1925=$r29, var2000=$r32, var415=$r30, var1059=$r31, var173=$r33, var23=$r34, var2758=<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_DURATION>, var869=$r35, var3889=$r36, var1644="duration", var2183=<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_DURATION>, var3853=jdk.internal.org.objectweb.asm.ClassWriter, var2872=$r37, var2401=3, var2154=<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.ClassWriter classWriter>, var988=jdk.jfr.internal.ASMToolkit, var708=$r38, var661=<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String internalClassName>, var2586=$r39, var2367=<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class proxyClass>}
; {jdk.internal.org.objectweb.asm.Type=var3487, jdk.jfr.EventType=var1030, $r0=var809, <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE>=var2097, jdk.jfr.internal.EventControl=var1490, $r1=var2657, <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL>=var936, $r2=var324, $r5=var1244, $r3=var1934, $r4=var2595, $r8=var3597, jdk.jfr.internal.EventHandlerProxyCreator=var57, $r6=var547, $r7=var517, $r11=var1673, $r9=var949, $r10=var3005, $r12=var3968, $r13=var2526, $r14=var830, <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER>=var262, jdk.internal.org.objectweb.asm.commons.Method=var1115, $r15=var2428, $r16=var2530, "<init>"=var3009, <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR>=var3163, $r17=var3148, $r20=var2949, $r18=var565, $r19=var1638, $r21=var168, $r22=var2155, <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_TIME_STAMP>=var3504, $r23=var1640, $r24=var429, "timestamp"=var178, <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_TIME_STAMP>=var418, $r25=var3545, $r28=var1103, $r26=var2454, $r27=var191, $r29=var1925, $r32=var2000, $r30=var415, $r31=var1059, $r33=var173, $r34=var23, <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_DURATION>=var2758, $r35=var869, $r36=var3889, "duration"=var1644, <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_DURATION>=var2183, jdk.internal.org.objectweb.asm.ClassWriter=var3853, $r37=var2872, 3=var2401, <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.ClassWriter classWriter>=var2154, jdk.jfr.internal.ASMToolkit=var988, $r38=var708, <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String internalClassName>=var661, $r39=var2586, <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class proxyClass>=var2367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts $r0 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/EventType;");	<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE> = $r0;	$r1 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/EventControl;");	<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;	$r4 = virtualinvoke $r3.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE>;	$r7 = virtualinvoke $r6.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = <jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL>;	$r10 = virtualinvoke $r9.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER> = $r14;	$r15 = new jdk.internal.org.objectweb.asm.commons.Method;	$r16 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER>;	specialinvoke $r15.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("<init>", $r16);	<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR> = $r15;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r18 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;	$r19 = virtualinvoke $r18.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_TIME_STAMP> = $r22;	$r23 = new jdk.internal.org.objectweb.asm.commons.Method;	$r24 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_TIME_STAMP>;	specialinvoke $r23.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("timestamp", $r24);	<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_TIME_STAMP> = $r23;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r26 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;	$r27 = virtualinvoke $r26.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r32 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r30 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type LONG_TYPE>;	$r31 = virtualinvoke $r30.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_DURATION> = $r34;	$r35 = new jdk.internal.org.objectweb.asm.commons.Method;	$r36 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String DESCRIPTOR_DURATION>;	specialinvoke $r35.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("duration", $r36);	<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_DURATION> = $r35;	$r37 = new jdk.internal.org.objectweb.asm.ClassWriter;	specialinvoke $r37.<jdk.internal.org.objectweb.asm.ClassWriter: void <init>(int)>(3);	<jdk.jfr.internal.EventHandlerProxyCreator: jdk.internal.org.objectweb.asm.ClassWriter classWriter> = $r37;	$r38 = staticinvoke <jdk.jfr.internal.ASMToolkit: java.lang.String getInternalName(java.lang.String)>("jdk.jfr.proxy.internal.EventHandlerProxy");	<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.String internalClassName> = $r38;	$r39 = staticinvoke <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class makeEventHandlerProxyClass()>();	<jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class proxyClass> = $r39;	return
;block_num 1