(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var642 0)
(declare-sort var1374 0)
(declare-sort var2167 0)
(declare-sort var3086 0)
(declare-sort var1473 0)
(declare-sort var715 0)
(declare-sort var1580 0)
(declare-sort var2054 0)
(declare-sort var594 0)
(declare-sort var735 0)
(declare-sort var584 0)
(declare-sort var3275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1473!class ClassObject)
(declare-const var715!class ClassObject)
(declare-const var1580!class ClassObject)
(declare-const var594!class ClassObject)
(declare-const var735!class ClassObject)
(declare-const var584!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var642_currentTimeMillis/630293680 () Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1374_getJVM/-984596898 () var1374)
(declare-fun getPid/817457972 (var1374) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3086_getType/1390316439 (ClassObject) var3086)
(declare-fun getDescriptor/42994021 (var3086) String)
(declare-fun var3275-init () var3275)
(declare-fun <init>/-2001940036 (var3275 String String) void)
(declare-const var2167-proxyClass ClassObject)
(declare-const var2054-eventHandlerProxy ClassObject)
(declare-const var3086-BOOLEAN_TYPE var3086)
(declare-const var2054-TYPE_EVENT_TYPE var3086)
(declare-const var2054-TYPE_EVENT_CONTROL var3086)
(declare-const var2054-TYPE_EVENT_WRITER var3086)
(declare-const var2054-DESCRIPTOR_EVENT_HANDLER String)
(define-const var1067 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1067)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1067!1 String)
(assert (= var1067!1 ""))
(assert true)
(define-const var59 String (append/672562846 var1067!1 "_")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1067!2 String)
(assert (= var1067!2 (str.++ var1067!1 "_")))
(define-const var395 Int var642_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
(define-const var3096 String (append/-901862667 var59 var395)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var59!1 String)
(assert (str.prefixof var59 var59!1))
(assert true)
(define-const var1287 String (append/672562846 var3096 "-")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3096!1 String)
(assert (= var3096!1 (str.++ var3096 "-")))
(define-const var983 var1374 var1374_getJVM/-984596898) ; Statement: $r3 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>() 
(assert true)
(define-const var58 String (getPid/817457972 var983)) ; Statement: $r4 = virtualinvoke $r3.<jdk.jfr.internal.JVM: java.lang.String getPid()>() 
(assert true)
(define-const var404 String (append/672562846 var1287 var58)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1287!1 String)
(assert (= var1287!1 (str.++ var1287 var58)))
(assert true)
(define-const var937 String (toString/-2075883882 var404)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3831 String var937) ; Statement: <jdk.jfr.internal.EventHandlerCreator: java.lang.String SUFFIX> = $r7 
(define-const var1246 ClassObject var2167-proxyClass) ; Statement: $r8 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class proxyClass> 
(define-const var514 ClassObject var1246) ; Statement: <jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy> = $r8 
(define-const var1547 var3086 (var3086_getType/1390316439 var1473!class)) ; Statement: $r9 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/StringPool;") 
(define-const var3353 var3086 var1547) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_STRING_POOL> = $r9 
(define-const var1660 var3086 (var3086_getType/1390316439 var715!class)) ; Statement: $r10 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/EventWriter;") 
(define-const var3225 var3086 var1660) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_WRITER> = $r10 
(define-const var3940 var3086 (var3086_getType/1390316439 var1580!class)) ; Statement: $r11 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/PlatformEventType;") 
(define-const var1291 var3086 var3940) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_PLATFORM_EVENT_TYPE> = $r11 
(define-const var573 ClassObject var2054-eventHandlerProxy) ; Statement: $r12 = <jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy> 
(define-const var102 var3086 (var3086_getType/1390316439 var573)) ; Statement: $r13 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>($r12) 
(define-const var1005 var3086 var102) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_HANDLER> = $r13 
(define-const var530 var3086 (var3086_getType/1390316439 var594!class)) ; Statement: $r14 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/SettingControl;") 
(define-const var2552 var3086 var530) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_SETTING_CONTROL> = $r14 
(define-const var2187 var3086 (var3086_getType/1390316439 var735!class)) ; Statement: $r15 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/EventType;") 
(define-const var1421 var3086 var2187) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE> = $r15 
(define-const var3556 var3086 (var3086_getType/1390316439 var584!class)) ; Statement: $r16 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/EventControl;") 
(define-const var1854 var3086 var3556) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL> = $r16 
(define-const var1248 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1248)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1248!1 String)
(assert (= var1248!1 ""))
(assert true)
(define-const var97 String (append/672562846 var1248!1 "(")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1248!2 String)
(assert (= var1248!2 (str.++ var1248!1 "(")))
(define-const var617 var3086 var3086-BOOLEAN_TYPE) ; Statement: $r18 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE> 
(assert true)
(define-const var78 String (getDescriptor/42994021 var617)) ; Statement: $r19 = virtualinvoke $r18.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var2283 String (append/672562846 var97 var78)) ; Statement: $r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var97!1 String)
(assert (= var97!1 (str.++ var97 var78)))
(define-const var1326 var3086 var2054-TYPE_EVENT_TYPE) ; Statement: $r21 = <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE> 
(assert true)
(define-const var416 String (getDescriptor/42994021 var1326)) ; Statement: $r22 = virtualinvoke $r21.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3767 String (append/672562846 var2283 var416)) ; Statement: $r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2283!1 String)
(assert (= var2283!1 (str.++ var2283 var416)))
(define-const var1973 var3086 var2054-TYPE_EVENT_CONTROL) ; Statement: $r24 = <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL> 
(assert true)
(define-const var1886 String (getDescriptor/42994021 var1973)) ; Statement: $r25 = virtualinvoke $r24.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1730 String (append/672562846 var3767 var1886)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3767!1 String)
(assert (= var3767!1 (str.++ var3767 var1886)))
(assert true)
(define-const var205 String (append/672562846 var1730 ")V")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var1730!1 String)
(assert (= var1730!1 (str.++ var1730 ")V")))
(assert true)
(define-const var1297 String (toString/-2075883882 var205)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var620 String var1297) ; Statement: <jdk.jfr.internal.EventHandlerCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER> = $r29 
(define-const var2849 var3275 var3275-init) ; Statement: $r30 = new jdk.internal.org.objectweb.asm.commons.Method 
(define-const var1300 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1300)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1300!1 String)
(assert (= var1300!1 ""))
(assert true)
(define-const var175 String (append/672562846 var1300!1 "()")) ; Statement: $r34 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var1300!2 String)
(assert (= var1300!2 (str.++ var1300!1 "()")))
(define-const var1711 var3086 var2054-TYPE_EVENT_WRITER) ; Statement: $r32 = <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_WRITER> 
(assert true)
(define-const var2807 String (getDescriptor/42994021 var1711)) ; Statement: $r33 = virtualinvoke $r32.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var462 String (append/672562846 var175 var2807)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33) 
(declare-const var175!1 String)
(assert (= var175!1 (str.++ var175 var2807)))
(assert true)
(define-const var1076 String (toString/-2075883882 var462)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2001940036 var2849 "getEventWriter" var1076)) ; Statement: specialinvoke $r30.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("getEventWriter", $r36) 

(declare-const var2849!1 var3275)
(declare-const var2239 String)
(declare-const var1076!1 String)
(define-const var2229 var3275 var2849!1) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_GET_EVENT_WRITER> = $r30 
(define-const var3937 var3275 var3275-init) ; Statement: $r37 = new jdk.internal.org.objectweb.asm.commons.Method 
(define-const var3510 String var2054-DESCRIPTOR_EVENT_HANDLER) ; Statement: $r38 = <jdk.jfr.internal.EventHandlerCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER> 
(assert true)
;(assert (<init>/-2001940036 var3937 "<init>" var3510)) ; Statement: specialinvoke $r37.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("<init>", $r38) 

(declare-const var3937!1 var3275)
(declare-const var3000 String)
(declare-const var3510!1 String)
(define-const var3139 var3275 var3937!1) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR> = $r37 
(define-const var1710 var3275 var3275-init) ; Statement: $r39 = new jdk.internal.org.objectweb.asm.commons.Method 
(assert true)
;(assert (<init>/-2001940036 var1710 "reset" "()V")) ; Statement: specialinvoke $r39.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("reset", "()V") 

(declare-const var1710!1 var3275)
(declare-const var2649 String)
(declare-const var3995 String)
(define-const var2381 var3275 var1710!1) ; Statement: <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_RESET> = $r39 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var642_currentTimeMillis/630293680=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1374_getJVM/-984596898=([], jdk.jfr.internal.JVM), getPid/817457972=([jdk.jfr.internal.JVM], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3086_getType/1390316439=([java.lang.Class], jdk.internal.org.objectweb.asm.Type), getDescriptor/42994021=([jdk.internal.org.objectweb.asm.Type], java.lang.String), var3275-init=([], jdk.internal.org.objectweb.asm.commons.Method), <init>/-2001940036=([jdk.internal.org.objectweb.asm.commons.Method, java.lang.String, java.lang.String], void)}
; {var1067=$r0, var59=$r1, var642=java.lang.System, var395=$l0, var3096=$r2, var1287=$r5, var1374=jdk.jfr.internal.JVM, var983=$r3, var58=$r4, var404=$r6, var937=$r7, var3831=<jdk.jfr.internal.EventHandlerCreator: java.lang.String SUFFIX>, var2167=jdk.jfr.internal.EventHandlerProxyCreator, var1246=$r8, var514=<jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy>, var3086=jdk.internal.org.objectweb.asm.Type, var1473=jdk.jfr.internal.StringPool, var1547=$r9, var3353=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_STRING_POOL>, var715=jdk.jfr.internal.EventWriter, var1660=$r10, var3225=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_WRITER>, var1580=jdk.jfr.internal.PlatformEventType, var3940=$r11, var1291=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_PLATFORM_EVENT_TYPE>, var2054=jdk.jfr.internal.EventHandlerCreator, var573=$r12, var102=$r13, var1005=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_HANDLER>, var594=jdk.jfr.SettingControl, var530=$r14, var2552=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_SETTING_CONTROL>, var735=jdk.jfr.EventType, var2187=$r15, var1421=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE>, var584=jdk.jfr.internal.EventControl, var3556=$r16, var1854=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL>, var1248=$r17, var97=$r20, var617=$r18, var78=$r19, var2283=$r23, var1326=$r21, var416=$r22, var3767=$r26, var1973=$r24, var1886=$r25, var1730=$r27, var205=$r28, var1297=$r29, var620=<jdk.jfr.internal.EventHandlerCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER>, var3275=jdk.internal.org.objectweb.asm.commons.Method, var2849=$r30, var1300=$r31, var175=$r34, var1711=$r32, var2807=$r33, var462=$r35, var1076=$r36, var2239="getEventWriter", var2229=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_GET_EVENT_WRITER>, var3937=$r37, var3510=$r38, var3000="<init>", var3139=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR>, var1710=$r39, var2649="reset", var3995="()V", var2381=<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_RESET>}
; {$r0=var1067, $r1=var59, java.lang.System=var642, $l0=var395, $r2=var3096, $r5=var1287, jdk.jfr.internal.JVM=var1374, $r3=var983, $r4=var58, $r6=var404, $r7=var937, <jdk.jfr.internal.EventHandlerCreator: java.lang.String SUFFIX>=var3831, jdk.jfr.internal.EventHandlerProxyCreator=var2167, $r8=var1246, <jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy>=var514, jdk.internal.org.objectweb.asm.Type=var3086, jdk.jfr.internal.StringPool=var1473, $r9=var1547, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_STRING_POOL>=var3353, jdk.jfr.internal.EventWriter=var715, $r10=var1660, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_WRITER>=var3225, jdk.jfr.internal.PlatformEventType=var1580, $r11=var3940, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_PLATFORM_EVENT_TYPE>=var1291, jdk.jfr.internal.EventHandlerCreator=var2054, $r12=var573, $r13=var102, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_HANDLER>=var1005, jdk.jfr.SettingControl=var594, $r14=var530, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_SETTING_CONTROL>=var2552, jdk.jfr.EventType=var735, $r15=var2187, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE>=var1421, jdk.jfr.internal.EventControl=var584, $r16=var3556, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL>=var1854, $r17=var1248, $r20=var97, $r18=var617, $r19=var78, $r23=var2283, $r21=var1326, $r22=var416, $r26=var3767, $r24=var1973, $r25=var1886, $r27=var1730, $r28=var205, $r29=var1297, <jdk.jfr.internal.EventHandlerCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER>=var620, jdk.internal.org.objectweb.asm.commons.Method=var3275, $r30=var2849, $r31=var1300, $r34=var175, $r32=var1711, $r33=var2807, $r35=var462, $r36=var1076, "getEventWriter"=var2239, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_GET_EVENT_WRITER>=var2229, $r37=var3937, $r38=var3510, "<init>"=var3000, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR>=var3139, $r39=var1710, "reset"=var2649, "()V"=var3995, <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_RESET>=var2381}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r3 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>();	$r4 = virtualinvoke $r3.<jdk.jfr.internal.JVM: java.lang.String getPid()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.jfr.internal.EventHandlerCreator: java.lang.String SUFFIX> = $r7;	$r8 = <jdk.jfr.internal.EventHandlerProxyCreator: java.lang.Class proxyClass>;	<jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy> = $r8;	$r9 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/StringPool;");	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_STRING_POOL> = $r9;	$r10 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/EventWriter;");	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_WRITER> = $r10;	$r11 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/PlatformEventType;");	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_PLATFORM_EVENT_TYPE> = $r11;	$r12 = <jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy>;	$r13 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>($r12);	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_HANDLER> = $r13;	$r14 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/SettingControl;");	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_SETTING_CONTROL> = $r14;	$r15 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/EventType;");	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE> = $r15;	$r16 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.Class)>(class "Ljdk/jfr/internal/EventControl;");	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL> = $r16;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r18 = <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type BOOLEAN_TYPE>;	$r19 = virtualinvoke $r18.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r21 = <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_TYPE>;	$r22 = virtualinvoke $r21.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r24 = <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_CONTROL>;	$r25 = virtualinvoke $r24.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.jfr.internal.EventHandlerCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER> = $r29;	$r30 = new jdk.internal.org.objectweb.asm.commons.Method;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r32 = <jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.Type TYPE_EVENT_WRITER>;	$r33 = virtualinvoke $r32.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("getEventWriter", $r36);	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_GET_EVENT_WRITER> = $r30;	$r37 = new jdk.internal.org.objectweb.asm.commons.Method;	$r38 = <jdk.jfr.internal.EventHandlerCreator: java.lang.String DESCRIPTOR_EVENT_HANDLER>;	specialinvoke $r37.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("<init>", $r38);	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_EVENT_HANDLER_CONSTRUCTOR> = $r37;	$r39 = new jdk.internal.org.objectweb.asm.commons.Method;	specialinvoke $r39.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("reset", "()V");	<jdk.jfr.internal.EventHandlerCreator: jdk.internal.org.objectweb.asm.commons.Method METHOD_RESET> = $r39;	return
;block_num 1