(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3640 0)
(declare-sort var2492 0)
(declare-sort var222 0)
(declare-sort var1581 0)
(declare-sort var77 0)
(declare-sort var992 0)
(declare-sort var3736 0)
(declare-sort var1900 0)
(declare-sort var2618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2492) void)
(declare-fun cast-from-var3640-to-var2492 (var3640) var2492)
(declare-fun var1581_getImplementation/2066217333 () var222)
(declare-fun cast-from-var3640-to-var77 (var3640) var77)
(declare-fun nativeAccess/364945880 (var77) var222)
(declare-fun getClass/1258963082 (var2492) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var992_getLogger/-1440108740 (String) var992)
(declare-fun arr-var2492-init () (Array Int var2492))
(declare-fun var2618_bootstrap$/1164018428 () var1900)
(declare-fun map/1305667865 (var222 var1900) var222)
(declare-fun orElse/-757175127 (var222 var2492) var2492)
(declare-fun cast-from-String-to-var2492 (String) var2492)
(declare-fun String_format/-647569892 (var3736 String (Array Int var2492)) String)
(declare-fun info/114590825 (var992 String) void)
(declare-const null-var3640 var3640)
(declare-const null-var77 var77)
(declare-const var3736-ENGLISH var3736)
(declare-const null-__Array__Int__var2492__ (Array Int var2492))
(declare-const var2964 var3640) ; Statement: r0 := @this: META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider 
(assert (not (= var2964 null-var3640)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3640-to-var2492 var2964))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2964!1 var3640)
(define-const var1237 var222 var1581_getImplementation/2066217333) ; Statement: $r1 = staticinvoke <org.apache.lucene.store.NativeAccess: java.util.Optional getImplementation()>() 
(define-const var1105 var77 (cast-from-var3640-to-var77 var2964!1)) ; Statement: $r12 = (org.apache.lucene.store.MemorySegmentIndexInputProvider) r0 
(declare-const var1105!1 var77)
(assert (not (= var1105!1 null-var77)))
(assert (= (nativeAccess/364945880 var1105!1) var1237)) ; Statement: $r12.<org.apache.lucene.store.MemorySegmentIndexInputProvider: java.util.Optional nativeAccess> = $r1 
(assert true)
(define-const var815 ClassObject (getClass/1258963082 (cast-from-var3640-to-var2492 var2964!1))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3984 String (getName/-1958580599 var815)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(define-const var3721 var992 (var992_getLogger/-1440108740 var3984)) ; Statement: r4 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r3) 
(define-const var3231 var3736 var3736-ENGLISH) ; Statement: $r6 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var1939 (Array Int var2492) arr-var2492-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(define-const var2642 var77 (cast-from-var3640-to-var77 var2964!1)) ; Statement: $r13 = (org.apache.lucene.store.MemorySegmentIndexInputProvider) r0 
(define-const var2008 var222 (nativeAccess/364945880 var2642)) ; Statement: $r7 = $r13.<org.apache.lucene.store.MemorySegmentIndexInputProvider: java.util.Optional nativeAccess> 
(define-const var3784 var1900 var2618_bootstrap$/1164018428) ; Statement: $r8 = staticinvoke <META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider$lambda_new_0__492: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var1964 var222 (map/1305667865 var2008 var3784)) ; Statement: $r9 = virtualinvoke $r7.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r8) 
(assert true)
(define-const var3572 var2492 (orElse/-757175127 var1964 (cast-from-String-to-var2492 ""))) ; Statement: $r10 = virtualinvoke $r9.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>("") 
(declare-const var1939!1 (Array Int var2492))
(assert (not (= var1939!1 null-__Array__Int__var2492__)))
(assert (= (select var1939!1 0) var3572)) ; Statement: $r5[0] = $r10 
(declare-const var1939!2 (Array Int var2492))
(assert (not (= var1939!2 null-__Array__Int__var2492__)))
(assert (= (select var1939!2 1) (cast-from-String-to-var2492 "org.apache.lucene.store.MMapDirectory.enableMemorySegments"))) ; Statement: $r5[1] = "org.apache.lucene.store.MMapDirectory.enableMemorySegments" 
(define-const var3848 String (String_format/-647569892 var3231 "Using MemorySegmentIndexInput%s with Java 21 or later; to disable start with -D%s=false" var1939!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Using MemorySegmentIndexInput%s with Java 21 or later; to disable start with -D%s=false", $r5) 
(assert true)
;(assert (info/114590825 var3721 var3848)) ; Statement: virtualinvoke r4.<java.util.logging.Logger: void info(java.lang.String)>($r11) 

(declare-const var3721!1 var992)
(declare-const var3848!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3640-to-var2492=([META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider], java.lang.Object), var1581_getImplementation/2066217333=([], java.util.Optional), cast-from-var3640-to-var77=([META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider], org.apache.lucene.store.MemorySegmentIndexInputProvider), nativeAccess/364945880=([org.apache.lucene.store.MemorySegmentIndexInputProvider], java.util.Optional), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var992_getLogger/-1440108740=([java.lang.String], java.util.logging.Logger), arr-var2492-init=([], java.lang.Object[]), var2618_bootstrap$/1164018428=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-String-to-var2492=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), info/114590825=([java.util.logging.Logger, java.lang.String], void)}
; {var3640=META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider, var2964=r0, var2492=java.lang.Object, var222=java.util.Optional, var1581=org.apache.lucene.store.NativeAccess, var1237=$r1, var77=org.apache.lucene.store.MemorySegmentIndexInputProvider, var1105=$r12, var815=$r2, var3984=$r3, var992=java.util.logging.Logger, var3721=r4, var3736=java.util.Locale, var3231=$r6, var1939=$r5, var2642=$r13, var2008=$r7, var1900=java.util.function.Function, var2618=META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider$lambda_new_0__492, var3784=$r8, var1964=$r9, var3572=$r10, var3848=$r11}
; {META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider=var3640, r0=var2964, java.lang.Object=var2492, java.util.Optional=var222, org.apache.lucene.store.NativeAccess=var1581, $r1=var1237, org.apache.lucene.store.MemorySegmentIndexInputProvider=var77, $r12=var1105, $r2=var815, $r3=var3984, java.util.logging.Logger=var992, r4=var3721, java.util.Locale=var3736, $r6=var3231, $r5=var1939, $r13=var2642, $r7=var2008, java.util.function.Function=var1900, META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider$lambda_new_0__492=var2618, $r8=var3784, $r9=var1964, $r10=var3572, $r11=var3848}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = staticinvoke <org.apache.lucene.store.NativeAccess: java.util.Optional getImplementation()>();	$r12 = (org.apache.lucene.store.MemorySegmentIndexInputProvider) r0;	$r12.<org.apache.lucene.store.MemorySegmentIndexInputProvider: java.util.Optional nativeAccess> = $r1;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	r4 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r3);	$r6 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = newarray (java.lang.Object)[2];	$r13 = (org.apache.lucene.store.MemorySegmentIndexInputProvider) r0;	$r7 = $r13.<org.apache.lucene.store.MemorySegmentIndexInputProvider: java.util.Optional nativeAccess>;	$r8 = staticinvoke <META-INF.versions.21.org.apache.lucene.store.MemorySegmentIndexInputProvider$lambda_new_0__492: java.util.function.Function bootstrap$()>();	$r9 = virtualinvoke $r7.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r8);	$r10 = virtualinvoke $r9.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>("");	$r5[0] = $r10;	$r5[1] = "org.apache.lucene.store.MMapDirectory.enableMemorySegments";	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Using MemorySegmentIndexInput%s with Java 21 or later; to disable start with -D%s=false", $r5);	virtualinvoke r4.<java.util.logging.Logger: void info(java.lang.String)>($r11);	return
;block_num 1