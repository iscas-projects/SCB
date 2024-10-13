(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var3608 0)
(declare-sort var29 0)
(declare-sort var2037 0)
(declare-sort var1410 0)
(declare-sort var3146 0)
(declare-sort var2555 0)
(declare-sort var1272 0)
(declare-sort var1903 0)
(declare-sort var3628 0)
(declare-sort var293 0)
(declare-sort var3632 0)
(declare-sort var706 0)
(declare-sort var2031 0)
(declare-sort var675 0)
(declare-sort var273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var29_addHandlerExport/2144816133 (ClassObject) void)
(declare-fun var1410_createType/971393592 (ClassObject var3608 var3608) var2037)
(declare-fun cast-from-var2037-to-var3146 (var2037) var3146)
(declare-fun var2555_getInstance/1606271130 () var2555)
(declare-fun newEventType/1616693664 (var2555 var3146) var1272)
(declare-fun var1903-init () var1903)
(declare-fun <init>/1358670757 (var1903 var3146 ClassObject) void)
(declare-fun var293-init () var293)
(declare-fun getId/-288332313 (var1272) Int)
(declare-fun getSettingInfos/-213925941 (var1903) var3608)
(declare-fun <init>/954208226 (var293 Int var3608 var1272 ClassObject) void)
(declare-fun makeEventHandlerClass/-669463615 (var293) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/614227758 (var1272) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2031_log/979489950 (var3632 var706 String) void)
(declare-fun var293_instantiateEventHandler/1659539112 (ClassObject Bool var1272 var1903) var675)
(declare-fun var273_setHandler/448517729 (ClassObject var675) void)
(declare-const null-var1984 var1984)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3608 var3608)
(declare-const null-var3628 var3628)
(declare-const var3632-JFR_SYSTEM var3632)
(declare-const var706-DEBUG var706)
(declare-const var3141 var1984) ; Statement: r29 := @this: jdk.jfr.internal.MetadataRepository 
(assert (not (= var3141 null-var1984)))
(declare-const var214 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var214 null-ClassObject)))
(declare-const var3068 var3608) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var3068 null-var3608)))
(declare-const var3604 var3608) ; Statement: r2 := @parameter2: java.util.List 
(assert (not (= var3604 null-var3608)))
;(assert (var29_addHandlerExport/2144816133 var214)) ; Statement: staticinvoke <jdk.jfr.internal.SecuritySupport: void addHandlerExport(java.lang.Class)>(r0) 

(declare-const var214!1 ClassObject)
(define-const var3098 var2037 (var1410_createType/971393592 var214!1 var3068 var3604)) ; Statement: $r3 = staticinvoke <jdk.jfr.internal.TypeLibrary: jdk.jfr.internal.Type createType(java.lang.Class,java.util.List,java.util.List)>(r0, r1, r2) 
(define-const var1689 var3146 (cast-from-var2037-to-var3146 var3098)) ; Statement: r4 = (jdk.jfr.internal.PlatformEventType) $r3 
(define-const var921 var2555 var2555_getInstance/1606271130) ; Statement: $r5 = staticinvoke <jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PrivateAccess getInstance()>() 
(assert true)
(define-const var1206 var1272 (newEventType/1616693664 var921 var1689)) ; Statement: r6 = virtualinvoke $r5.<jdk.jfr.internal.PrivateAccess: jdk.jfr.EventType newEventType(jdk.jfr.internal.PlatformEventType)>(r4) 
(define-const var297 var1903 var1903-init) ; Statement: $r7 = new jdk.jfr.internal.EventControl 
(assert true)
;(assert (<init>/1358670757 var297 var1689 var214!1)) ; Statement: specialinvoke $r7.<jdk.jfr.internal.EventControl: void <init>(jdk.jfr.internal.PlatformEventType,java.lang.Class)>(r4, r0) 

(declare-const var297!1 var1903)
(declare-const var1689!1 var3146)
(declare-const var214!2 ClassObject)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2685 var3628) ; Statement: $r18 := @caughtexception 
(assert (not (= var2685 null-var3628)))
(define-const var1956 var293 var293-init) ; Statement: $r19 = new jdk.jfr.internal.EventHandlerCreator 
(assert true)
(define-const var1023 Int (getId/-288332313 var1206)) ; Statement: $l1 = virtualinvoke r6.<jdk.jfr.EventType: long getId()>() 
(assert true)
(define-const var126 var3608 (getSettingInfos/-213925941 var297!1)) ; Statement: $r20 = virtualinvoke $r7.<jdk.jfr.internal.EventControl: java.util.List getSettingInfos()>() 
(assert true)
;(assert (<init>/954208226 var1956 var1023 var126 var1206 var214!2)) ; Statement: specialinvoke $r19.<jdk.jfr.internal.EventHandlerCreator: void <init>(long,java.util.List,jdk.jfr.EventType,java.lang.Class)>($l1, $r20, r6, r0) 

(declare-const var1956!1 var293)
(declare-const var1023!1 Int)
(declare-const var126!1 var3608)
(declare-const var1206!1 var1272)
(declare-const var214!3 ClassObject)
(assert true)
(define-const var2874 ClassObject (makeEventHandlerClass/-669463615 var1956!1)) ; Statement: r31 = virtualinvoke $r19.<jdk.jfr.internal.EventHandlerCreator: java.lang.Class makeEventHandlerClass()>() 
(define-const var2458 var3632 var3632-JFR_SYSTEM) ; Statement: $r22 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM> 
(define-const var2835 var706 var706-DEBUG) ; Statement: $r23 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG> 
(define-const var1732 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1732)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1732!1 String)
(assert (= var1732!1 ""))
(assert true)
(define-const var677 String (append/672562846 var1732!1 "Created event handler for ")) ; Statement: $r25 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created event handler for ") 
(declare-const var1732!2 String)
(assert (= var1732!2 (str.++ var1732!1 "Created event handler for ")))
(assert true)
(define-const var256 String (getName/614227758 var1206!1)) ; Statement: $r24 = virtualinvoke r6.<jdk.jfr.EventType: java.lang.String getName()>() 
(assert true)
(define-const var2058 String (append/672562846 var677 var256)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var677!1 String)
(assert (= var677!1 (str.++ var677 var256)))
(assert true)
(define-const var927 String (toString/-2075883882 var2058)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2031_log/979489950 var2458 var2835 var927)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r22, $r23, $r27) 

(declare-const var2458!1 var3632)
(declare-const var2835!1 var706)
(declare-const var927!1 String)
(assert true) ; Non Conditional
(define-const var1684 var675 (var293_instantiateEventHandler/1659539112 var2874 (ite (= 1 1) true false) var1206!1 var297!1)) ; Statement: $r28 = staticinvoke <jdk.jfr.internal.EventHandlerCreator: jdk.jfr.internal.handlers.EventHandler instantiateEventHandler(java.lang.Class,boolean,jdk.jfr.EventType,jdk.jfr.internal.EventControl)>(r31, 1, r6, $r7) 
;(assert (var273_setHandler/448517729 var214!3 var1684)) ; Statement: staticinvoke <jdk.jfr.internal.Utils: void setHandler(java.lang.Class,jdk.jfr.internal.handlers.EventHandler)>(r0, $r28) 

(declare-const var214!4 ClassObject)
(declare-const var1684!1 var675)
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var29_addHandlerExport/2144816133=([java.lang.Class], void), var1410_createType/971393592=([java.lang.Class, java.util.List, java.util.List], jdk.jfr.internal.Type), cast-from-var2037-to-var3146=([jdk.jfr.internal.Type], jdk.jfr.internal.PlatformEventType), var2555_getInstance/1606271130=([], jdk.jfr.internal.PrivateAccess), newEventType/1616693664=([jdk.jfr.internal.PrivateAccess, jdk.jfr.internal.PlatformEventType], jdk.jfr.EventType), var1903-init=([], jdk.jfr.internal.EventControl), <init>/1358670757=([jdk.jfr.internal.EventControl, jdk.jfr.internal.PlatformEventType, java.lang.Class], void), var293-init=([], jdk.jfr.internal.EventHandlerCreator), getId/-288332313=([jdk.jfr.EventType], long), getSettingInfos/-213925941=([jdk.jfr.internal.EventControl], java.util.List), <init>/954208226=([jdk.jfr.internal.EventHandlerCreator, long, java.util.List, jdk.jfr.EventType, java.lang.Class], void), makeEventHandlerClass/-669463615=([jdk.jfr.internal.EventHandlerCreator], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/614227758=([jdk.jfr.EventType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2031_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), var293_instantiateEventHandler/1659539112=([java.lang.Class, boolean, jdk.jfr.EventType, jdk.jfr.internal.EventControl], jdk.jfr.internal.handlers.EventHandler), var273_setHandler/448517729=([java.lang.Class, jdk.jfr.internal.handlers.EventHandler], void)}
; {var1984=jdk.jfr.internal.MetadataRepository, var3141=r29, var214=r0, var3608=java.util.List, var3068=r1, var3604=r2, var29=jdk.jfr.internal.SecuritySupport, var2037=jdk.jfr.internal.Type, var1410=jdk.jfr.internal.TypeLibrary, var3098=$r3, var3146=jdk.jfr.internal.PlatformEventType, var1689=r4, var2555=jdk.jfr.internal.PrivateAccess, var921=$r5, var1272=jdk.jfr.EventType, var1206=r6, var1903=jdk.jfr.internal.EventControl, var297=$r7, var3628=java.lang.ClassNotFoundException, var2685=$r18, var293=jdk.jfr.internal.EventHandlerCreator, var1956=$r19, var1023=$l1, var126=$r20, var2874=r31, var3632=jdk.jfr.internal.LogTag, var2458=$r22, var706=jdk.jfr.internal.LogLevel, var2835=$r23, var1732=$r21, var677=$r25, var256=$r24, var2058=$r26, var927=$r27, var2031=jdk.jfr.internal.Logger, var675=jdk.jfr.internal.handlers.EventHandler, var1684=$r28, var273=jdk.jfr.internal.Utils}
; {jdk.jfr.internal.MetadataRepository=var1984, r29=var3141, r0=var214, java.util.List=var3608, r1=var3068, r2=var3604, jdk.jfr.internal.SecuritySupport=var29, jdk.jfr.internal.Type=var2037, jdk.jfr.internal.TypeLibrary=var1410, $r3=var3098, jdk.jfr.internal.PlatformEventType=var3146, r4=var1689, jdk.jfr.internal.PrivateAccess=var2555, $r5=var921, jdk.jfr.EventType=var1272, r6=var1206, jdk.jfr.internal.EventControl=var1903, $r7=var297, java.lang.ClassNotFoundException=var3628, $r18=var2685, jdk.jfr.internal.EventHandlerCreator=var293, $r19=var1956, $l1=var1023, $r20=var126, r31=var2874, jdk.jfr.internal.LogTag=var3632, $r22=var2458, jdk.jfr.internal.LogLevel=var706, $r23=var2835, $r21=var1732, $r25=var677, $r24=var256, $r26=var2058, $r27=var927, jdk.jfr.internal.Logger=var2031, jdk.jfr.internal.handlers.EventHandler=var675, $r28=var1684, jdk.jfr.internal.Utils=var273}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r29 := @this: jdk.jfr.internal.MetadataRepository;	r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.util.List;	r2 := @parameter2: java.util.List;	staticinvoke <jdk.jfr.internal.SecuritySupport: void addHandlerExport(java.lang.Class)>(r0);	$r3 = staticinvoke <jdk.jfr.internal.TypeLibrary: jdk.jfr.internal.Type createType(java.lang.Class,java.util.List,java.util.List)>(r0, r1, r2);	r4 = (jdk.jfr.internal.PlatformEventType) $r3;	$r5 = staticinvoke <jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PrivateAccess getInstance()>();	r6 = virtualinvoke $r5.<jdk.jfr.internal.PrivateAccess: jdk.jfr.EventType newEventType(jdk.jfr.internal.PlatformEventType)>(r4);	$r7 = new jdk.jfr.internal.EventControl;	specialinvoke $r7.<jdk.jfr.internal.EventControl: void <init>(jdk.jfr.internal.PlatformEventType,java.lang.Class)>(r4, r0);	$r18 := @caughtexception;	$r19 = new jdk.jfr.internal.EventHandlerCreator;	$l1 = virtualinvoke r6.<jdk.jfr.EventType: long getId()>();	$r20 = virtualinvoke $r7.<jdk.jfr.internal.EventControl: java.util.List getSettingInfos()>();	specialinvoke $r19.<jdk.jfr.internal.EventHandlerCreator: void <init>(long,java.util.List,jdk.jfr.EventType,java.lang.Class)>($l1, $r20, r6, r0);	r31 = virtualinvoke $r19.<jdk.jfr.internal.EventHandlerCreator: java.lang.Class makeEventHandlerClass()>();	$r22 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM>;	$r23 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG>;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created event handler for ");	$r24 = virtualinvoke r6.<jdk.jfr.EventType: java.lang.String getName()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r22, $r23, $r27);	$r28 = staticinvoke <jdk.jfr.internal.EventHandlerCreator: jdk.jfr.internal.handlers.EventHandler instantiateEventHandler(java.lang.Class,boolean,jdk.jfr.EventType,jdk.jfr.internal.EventControl)>(r31, 1, r6, $r7);	staticinvoke <jdk.jfr.internal.Utils: void setHandler(java.lang.Class,jdk.jfr.internal.handlers.EventHandler)>(r0, $r28);	return $r28
;block_num 3