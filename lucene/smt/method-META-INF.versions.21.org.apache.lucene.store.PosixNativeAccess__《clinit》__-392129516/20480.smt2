(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1497 0)
(declare-sort var55 0)
(declare-sort var1693 0)
(declare-sort var3368 0)
(declare-sort var1866 0)
(declare-sort var805 0)
(declare-sort var1598 0)
(declare-sort var253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1497!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var55_getLogger/-1440108740 (String) var55)
(declare-fun arr-var805-init () (Array Int var805))
(declare-fun getModule/717080269 (ClassObject) var1598)
(declare-fun getName/732793589 (var1598) String)
(declare-fun var253_ofNullable/-1077078438 (var805) var253)
(declare-fun cast-from-String-to-var805 (String) var805)
(declare-fun orElse/-757175127 (var253 var805) var805)
(declare-fun String_format/-647569892 (var1866 String (Array Int var805)) String)
(declare-fun warning/-1321853967 (var55 String) void)
(declare-fun cast-from-var1497-to-var805 (var1497) var805)
(declare-const null-var1693 var1693)
(declare-const null-var1497 var1497)
(declare-const null-var3368 var3368)
(declare-const var1497-LOG var55)
(declare-const var1866-ENGLISH var1866)
(declare-const null-__Array__Int__var805__ (Array Int var805))
(define-const var3903 ClassObject var1497!class) ; Statement: $r0 = class "Lorg/apache/lucene/store/PosixNativeAccess;" 
(assert true)
(define-const var1993 String (getName/-1958580599 var3903)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var2509 var55 (var55_getLogger/-1440108740 var1993)) ; Statement: $r2 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r1) 
(define-const var1833 var55 var2509) ; Statement: <org.apache.lucene.store.PosixNativeAccess: java.util.logging.Logger LOG> = $r2 
(define-const var2999 var1693 null-var1693) ; Statement: r17 = null 
(define-const var113 var1497 null-var1497) ; Statement: r18 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var891 var3368) ; Statement: $r4 := @caughtexception 
(assert (not (= var891 null-var3368)))
(define-const var338 var55 var1497-LOG) ; Statement: $r7 = <org.apache.lucene.store.PosixNativeAccess: java.util.logging.Logger LOG> 
(define-const var2775 var1866 var1866-ENGLISH) ; Statement: $r8 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var1459 (Array Int var805) arr-var805-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(define-const var1042 ClassObject var1497!class) ; Statement: $r6 = class "Lorg/apache/lucene/store/PosixNativeAccess;" 
(assert true)
(define-const var3558 var1598 (getModule/717080269 var1042)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.Class: java.lang.Module getModule()>() 
(assert true)
(define-const var1989 String (getName/732793589 var3558)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Module: java.lang.String getName()>() 
(define-const var776 var253 (var253_ofNullable/-1077078438 (cast-from-String-to-var805 var1989))) ; Statement: $r11 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>($r10) 
(assert true)
(define-const var3489 var805 (orElse/-757175127 var776 (cast-from-String-to-var805 "ALL-UNNAMED"))) ; Statement: $r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>("ALL-UNNAMED") 
(declare-const var1459!1 (Array Int var805))
(assert (not (= var1459!1 null-__Array__Int__var805__)))
(assert (= (select var1459!1 0) var3489)) ; Statement: $r5[0] = $r12 
(define-const var866 String (String_format/-647569892 var2775 "Lucene has no access to native functions. To enable access to native functions, pass the following on command line: --enable-native-access=%s" var1459!1)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "Lucene has no access to native functions. To enable access to native functions, pass the following on command line: --enable-native-access=%s", $r5) 
(assert true)
;(assert (warning/-1321853967 var338 var866)) ; Statement: virtualinvoke $r7.<java.util.logging.Logger: void warning(java.lang.String)>($r13) 

(declare-const var338!1 var55)
(declare-const var866!1 String)
(assert true) ; Non Conditional
(define-const var1875 var1693 var2999) ; Statement: <org.apache.lucene.store.PosixNativeAccess: java.lang.invoke.MethodHandle MH$posix_madvise> = r17 
(define-const var1528 var253 (var253_ofNullable/-1077078438 (cast-from-var1497-to-var805 var113))) ; Statement: $r19 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r18) 
(define-const var70 var253 var1528) ; Statement: <org.apache.lucene.store.PosixNativeAccess: java.util.Optional INSTANCE> = $r19 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), var55_getLogger/-1440108740=([java.lang.String], java.util.logging.Logger), arr-var805-init=([], java.lang.Object[]), getModule/717080269=([java.lang.Class], java.lang.Module), getName/732793589=([java.lang.Module], java.lang.String), var253_ofNullable/-1077078438=([java.lang.Object], java.util.Optional), cast-from-String-to-var805=([java.lang.String], java.lang.Object), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), warning/-1321853967=([java.util.logging.Logger, java.lang.String], void), cast-from-var1497-to-var805=([org.apache.lucene.store.PosixNativeAccess], java.lang.Object)}
; {var1497=org.apache.lucene.store.PosixNativeAccess, var3903=$r0, var1993=$r1, var55=java.util.logging.Logger, var2509=$r2, var1833=<org.apache.lucene.store.PosixNativeAccess: java.util.logging.Logger LOG>, var1693=java.lang.invoke.MethodHandle, var2999=r17, var113=r18, var3368=java.lang.Throwable, var891=$r4, var338=$r7, var1866=java.util.Locale, var2775=$r8, var805=java.lang.Object, var1459=$r5, var1042=$r6, var1598=java.lang.Module, var3558=$r9, var1989=$r10, var253=java.util.Optional, var776=$r11, var3489=$r12, var866=$r13, var1875=<org.apache.lucene.store.PosixNativeAccess: java.lang.invoke.MethodHandle MH$posix_madvise>, var1528=$r19, var70=<org.apache.lucene.store.PosixNativeAccess: java.util.Optional INSTANCE>}
; {org.apache.lucene.store.PosixNativeAccess=var1497, $r0=var3903, $r1=var1993, java.util.logging.Logger=var55, $r2=var2509, <org.apache.lucene.store.PosixNativeAccess: java.util.logging.Logger LOG>=var1833, java.lang.invoke.MethodHandle=var1693, r17=var2999, r18=var113, java.lang.Throwable=var3368, $r4=var891, $r7=var338, java.util.Locale=var1866, $r8=var2775, java.lang.Object=var805, $r5=var1459, $r6=var1042, java.lang.Module=var1598, $r9=var3558, $r10=var1989, java.util.Optional=var253, $r11=var776, $r12=var3489, $r13=var866, <org.apache.lucene.store.PosixNativeAccess: java.lang.invoke.MethodHandle MH$posix_madvise>=var1875, $r19=var1528, <org.apache.lucene.store.PosixNativeAccess: java.util.Optional INSTANCE>=var70}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts $r0 = class "Lorg/apache/lucene/store/PosixNativeAccess;";	$r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	$r2 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r1);	<org.apache.lucene.store.PosixNativeAccess: java.util.logging.Logger LOG> = $r2;	r17 = null;	r18 = null;	$r4 := @caughtexception;	$r7 = <org.apache.lucene.store.PosixNativeAccess: java.util.logging.Logger LOG>;	$r8 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = newarray (java.lang.Object)[1];	$r6 = class "Lorg/apache/lucene/store/PosixNativeAccess;";	$r9 = virtualinvoke $r6.<java.lang.Class: java.lang.Module getModule()>();	$r10 = virtualinvoke $r9.<java.lang.Module: java.lang.String getName()>();	$r11 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>($r10);	$r12 = virtualinvoke $r11.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>("ALL-UNNAMED");	$r5[0] = $r12;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "Lucene has no access to native functions. To enable access to native functions, pass the following on command line: --enable-native-access=%s", $r5);	virtualinvoke $r7.<java.util.logging.Logger: void warning(java.lang.String)>($r13);	<org.apache.lucene.store.PosixNativeAccess: java.lang.invoke.MethodHandle MH$posix_madvise> = r17;	$r19 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r18);	<org.apache.lucene.store.PosixNativeAccess: java.util.Optional INSTANCE> = $r19;	return
;block_num 3