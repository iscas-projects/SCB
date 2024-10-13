(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var992 0)
(declare-sort var2574 0)
(declare-sort var1539 0)
(declare-sort var380 0)
(declare-sort var3118 0)
(declare-sort var2875 0)
(declare-sort var1029 0)
(declare-sort var2141 0)
(declare-sort var2848 0)
(declare-sort var542 0)
(declare-sort var1080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var380!class ClassObject)
(declare-fun var992-init () var992)
(declare-fun <init>/-1233374035 (var992 var2574) void)
(declare-fun var380-init () var380)
(declare-fun var3118-init () var3118)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2875_threadFactory/526643703 (String Bool) var1029)
(declare-fun <init>/-1353363690 (var3118 var1029) void)
(declare-fun cast-from-var3118-to-var2141 (var3118) var2141)
(declare-fun <init>/-817301371 (var380 var2141) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2848_getLogger/-1440108740 (String) var2848)
(declare-fun var542_checkNotNullExpressionValue/47304269 (var1080 String) void)
(declare-fun cast-from-var2848-to-var1080 (var2848) var1080)
(declare-const null-NullType var1539)
(declare-const null-var2574 var2574)
(declare-const var2875-okHttpName String)
(define-const var1023 var992 var992-init) ; Statement: $r0 = new okhttp3.internal.concurrent.TaskRunner$Companion 
(assert true)
;(assert (<init>/-1233374035 var1023 null-var2574)) ; Statement: specialinvoke $r0.<okhttp3.internal.concurrent.TaskRunner$Companion: void <init>(kotlin.jvm.internal.DefaultConstructorMarker)>(null) 

(declare-const var1023!1 var992)
(declare-const var3269 var1539)
(define-const var3582 var992 var1023!1) ; Statement: <okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Companion Companion> = $r0 
(define-const var1235 var380 var380-init) ; Statement: $r1 = new okhttp3.internal.concurrent.TaskRunner 
(define-const var2967 var3118 var3118-init) ; Statement: $r2 = new okhttp3.internal.concurrent.TaskRunner$RealBackend 
(define-const var3086 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3086)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3086!1 String)
(assert (= var3086!1 ""))
(define-const var2050 String var2875-okHttpName) ; Statement: $r4 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var1244 String (append/672562846 var3086!1 var2050)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3086!2 String)
(assert (= var3086!2 (str.++ var3086!1 var2050)))
(assert true)
(define-const var1844 String (append/672562846 var1244 " TaskRunner")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TaskRunner") 
(declare-const var1244!1 String)
(assert (= var1244!1 (str.++ var1244 " TaskRunner")))
(assert true)
(define-const var2665 String (toString/-2075883882 var1844)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1378 var1029 (var2875_threadFactory/526643703 var2665 (ite (= 1 1) true false))) ; Statement: $r8 = staticinvoke <okhttp3.internal.Util: java.util.concurrent.ThreadFactory threadFactory(java.lang.String,boolean)>($r7, 1) 
(assert true)
;(assert (<init>/-1353363690 var2967 var1378)) ; Statement: specialinvoke $r2.<okhttp3.internal.concurrent.TaskRunner$RealBackend: void <init>(java.util.concurrent.ThreadFactory)>($r8) 

(declare-const var2967!1 var3118)
(declare-const var1378!1 var1029)
(define-const var2876 var2141 (cast-from-var3118-to-var2141 var2967!1)) ; Statement: $r9 = (okhttp3.internal.concurrent.TaskRunner$Backend) $r2 
(assert true)
;(assert (<init>/-817301371 var1235 var2876)) ; Statement: specialinvoke $r1.<okhttp3.internal.concurrent.TaskRunner: void <init>(okhttp3.internal.concurrent.TaskRunner$Backend)>($r9) 

(declare-const var1235!1 var380)
(declare-const var2876!1 var2141)
(define-const var669 var380 var1235!1) ; Statement: <okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner INSTANCE> = $r1 
(define-const var2361 ClassObject var380!class) ; Statement: $r10 = class "Lokhttp3/internal/concurrent/TaskRunner;" 
(assert true)
(define-const var521 String (getName/-1958580599 var2361)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(define-const var3216 var2848 (var2848_getLogger/-1440108740 var521)) ; Statement: $r12 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r11) 
;(assert (var542_checkNotNullExpressionValue/47304269 (cast-from-var2848-to-var1080 var3216) "getLogger(TaskRunner::class.java.name)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r12, "getLogger(TaskRunner::class.java.name)") 

(declare-const var3216!1 var2848)
(declare-const var1929 String)
(define-const var3254 var2848 var3216!1) ; Statement: <okhttp3.internal.concurrent.TaskRunner: java.util.logging.Logger logger> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var992-init=([], okhttp3.internal.concurrent.TaskRunner$Companion), <init>/-1233374035=([okhttp3.internal.concurrent.TaskRunner$Companion, kotlin.jvm.internal.DefaultConstructorMarker], void), var380-init=([], okhttp3.internal.concurrent.TaskRunner), var3118-init=([], okhttp3.internal.concurrent.TaskRunner$RealBackend), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2875_threadFactory/526643703=([java.lang.String, boolean], java.util.concurrent.ThreadFactory), <init>/-1353363690=([okhttp3.internal.concurrent.TaskRunner$RealBackend, java.util.concurrent.ThreadFactory], void), cast-from-var3118-to-var2141=([okhttp3.internal.concurrent.TaskRunner$RealBackend], okhttp3.internal.concurrent.TaskRunner$Backend), <init>/-817301371=([okhttp3.internal.concurrent.TaskRunner, okhttp3.internal.concurrent.TaskRunner$Backend], void), getName/-1958580599=([java.lang.Class], java.lang.String), var2848_getLogger/-1440108740=([java.lang.String], java.util.logging.Logger), var542_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-var2848-to-var1080=([java.util.logging.Logger], java.lang.Object)}
; {var992=okhttp3.internal.concurrent.TaskRunner$Companion, var1023=$r0, var2574=kotlin.jvm.internal.DefaultConstructorMarker, var3269=null, var1539=null_type, var3582=<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Companion Companion>, var380=okhttp3.internal.concurrent.TaskRunner, var1235=$r1, var3118=okhttp3.internal.concurrent.TaskRunner$RealBackend, var2967=$r2, var3086=$r3, var2875=okhttp3.internal.Util, var2050=$r4, var1244=$r5, var1844=$r6, var2665=$r7, var1029=java.util.concurrent.ThreadFactory, var1378=$r8, var2141=okhttp3.internal.concurrent.TaskRunner$Backend, var2876=$r9, var669=<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner INSTANCE>, var2361=$r10, var521=$r11, var2848=java.util.logging.Logger, var3216=$r12, var542=kotlin.jvm.internal.Intrinsics, var1080=java.lang.Object, var1929="getLogger(TaskRunner::class.java.name)", var3254=<okhttp3.internal.concurrent.TaskRunner: java.util.logging.Logger logger>}
; {okhttp3.internal.concurrent.TaskRunner$Companion=var992, $r0=var1023, kotlin.jvm.internal.DefaultConstructorMarker=var2574, null=var3269, null_type=var1539, <okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Companion Companion>=var3582, okhttp3.internal.concurrent.TaskRunner=var380, $r1=var1235, okhttp3.internal.concurrent.TaskRunner$RealBackend=var3118, $r2=var2967, $r3=var3086, okhttp3.internal.Util=var2875, $r4=var2050, $r5=var1244, $r6=var1844, $r7=var2665, java.util.concurrent.ThreadFactory=var1029, $r8=var1378, okhttp3.internal.concurrent.TaskRunner$Backend=var2141, $r9=var2876, <okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner INSTANCE>=var669, $r10=var2361, $r11=var521, java.util.logging.Logger=var2848, $r12=var3216, kotlin.jvm.internal.Intrinsics=var542, java.lang.Object=var1080, "getLogger(TaskRunner::class.java.name)"=var1929, <okhttp3.internal.concurrent.TaskRunner: java.util.logging.Logger logger>=var3254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new okhttp3.internal.concurrent.TaskRunner$Companion;	specialinvoke $r0.<okhttp3.internal.concurrent.TaskRunner$Companion: void <init>(kotlin.jvm.internal.DefaultConstructorMarker)>(null);	<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Companion Companion> = $r0;	$r1 = new okhttp3.internal.concurrent.TaskRunner;	$r2 = new okhttp3.internal.concurrent.TaskRunner$RealBackend;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TaskRunner");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <okhttp3.internal.Util: java.util.concurrent.ThreadFactory threadFactory(java.lang.String,boolean)>($r7, 1);	specialinvoke $r2.<okhttp3.internal.concurrent.TaskRunner$RealBackend: void <init>(java.util.concurrent.ThreadFactory)>($r8);	$r9 = (okhttp3.internal.concurrent.TaskRunner$Backend) $r2;	specialinvoke $r1.<okhttp3.internal.concurrent.TaskRunner: void <init>(okhttp3.internal.concurrent.TaskRunner$Backend)>($r9);	<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner INSTANCE> = $r1;	$r10 = class "Lokhttp3/internal/concurrent/TaskRunner;";	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r12 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r11);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r12, "getLogger(TaskRunner::class.java.name)");	<okhttp3.internal.concurrent.TaskRunner: java.util.logging.Logger logger> = $r12;	return
;block_num 1