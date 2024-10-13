(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var64 0)
(declare-sort var3796 0)
(declare-sort var2575 0)
(declare-sort var1450 0)
(declare-sort var1193 0)
(declare-sort var3214 0)
(declare-sort var3648 0)
(declare-sort var3022 0)
(declare-sort var2139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var64-init () var64)
(declare-fun <init>/2032108350 (var64 var1450) void)
(declare-fun cast-from-var3796-to-var1450 (var3796) var1450)
(declare-fun var1193_asList/1779083644 ((Array Int var3214)) var3796)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3214__ ((Array Int ClassObject)) (Array Int var3214))
(declare-fun var3796_addAll/-525367613 (var3796 var1450) Bool)
(declare-fun cast-from-var64-to-var3796 (var64) var3796)
(declare-fun var3796_get/-1216255739 (var3796 Int) var3214)
(declare-fun cast-from-var3214-to-ClassObject (var3214) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2575_access$000/1639305537 () var3022)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3214) String)
(declare-fun cast-from-ClassObject-to-var3214 (ClassObject) var3214)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3022_error/-1179021239 (var3022 String var2139) void)
(declare-fun cast-from-var3648-to-var2139 (var3648) var2139)
(declare-const var2575-USER_IMPLEMENTATIONS var3796)
(declare-const var2575-IMPLEMENTATIONS (Array Int ClassObject))
(declare-const null-var2575 var2575)
(declare-const null-var3648 var3648)
(define-const var882 var64 var64-init) ; Statement: $r0 = new java.util.ArrayList 
(define-const var3330 var3796 var2575-USER_IMPLEMENTATIONS) ; Statement: $r1 = <org.apache.ibatis.io.VFS: java.util.List USER_IMPLEMENTATIONS> 
(assert true)
;(assert (<init>/2032108350 var882 (cast-from-var3796-to-var1450 var3330))) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1) 

(declare-const var882!1 var64)
(declare-const var3330!1 var3796)
(define-const var1598 (Array Int ClassObject) var2575-IMPLEMENTATIONS) ; Statement: $r2 = <org.apache.ibatis.io.VFS: java.lang.Class[] IMPLEMENTATIONS> 
(define-const var2167 var3796 (var1193_asList/1779083644 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3214__ var1598))) ; Statement: $r3 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r2) 
;(assert (var3796_addAll/-525367613 (cast-from-var64-to-var3796 var882!1) (cast-from-var3796-to-var1450 var2167))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean addAll(java.util.Collection)>($r3) 

(declare-const var882!2 var64)
(declare-const var2167!1 var3796)
(define-const var901 var2575 null-var2575) ; Statement: r33 = null 
(define-const var2270 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
 ; Statement: if r33 == null goto $r4 = interfaceinvoke $r0.<java.util.List: java.lang.Object get(int)>(i0) 
(assert (= var901 null-var2575)) ; Cond: r33 == null 
(define-const var1878 var3214 (var3796_get/-1216255739 (cast-from-var64-to-var3796 var882!2) var2270)) ; Statement: $r4 = interfaceinvoke $r0.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var2037 ClassObject (cast-from-var3214-to-ClassObject var1878)) ; Statement: $r25 = (java.lang.Class) $r4 
(define-const var3150 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r5 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1949 var3648) ; Statement: $r27 := @caughtexception 
(assert (not (= var1949 null-var3648)))
(define-const var897 var3022 var2575_access$000/1639305537) ; Statement: $r32 = staticinvoke <org.apache.ibatis.io.VFS: org.apache.ibatis.logging.Log access$000()>() 
(define-const var2165 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2165)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2165!1 String)
(assert (= var2165!1 ""))
(assert true)
(define-const var3557 String (append/672562846 var2165!1 "Failed to instantiate ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ") 
(declare-const var2165!2 String)
(assert (= var2165!2 (str.++ var2165!1 "Failed to instantiate ")))
(assert true)
(define-const var3279 String (append/-1031950772 var3557 (cast-from-ClassObject-to-var3214 var2037))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var3557!1 String)
(assert (str.prefixof var3557 var3557!1))
(assert true)
(define-const var1157 String (toString/-2075883882 var3279)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3022_error/-1179021239 var897 var1157 (cast-from-var3648-to-var2139 var1949))) ; Statement: interfaceinvoke $r32.<org.apache.ibatis.logging.Log: void error(java.lang.String,java.lang.Throwable)>($r31, $r27) 

(declare-const var897!1 var3022)
(declare-const var1157!1 String)
(declare-const var1949!1 var3648)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var64-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var3796-to-var1450=([java.util.List], java.util.Collection), var1193_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3214__=([java.lang.Class[]], java.lang.Object[]), var3796_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var64-to-var3796=([java.util.ArrayList], java.util.List), var3796_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3214-to-ClassObject=([java.lang.Object], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var2575_access$000/1639305537=([], org.apache.ibatis.logging.Log), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3214=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3022_error/-1179021239=([org.apache.ibatis.logging.Log, java.lang.String, java.lang.Throwable], void), cast-from-var3648-to-var2139=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var64=java.util.ArrayList, var882=$r0, var3796=java.util.List, var2575=org.apache.ibatis.io.VFS, var3330=$r1, var1450=java.util.Collection, var1598=$r2, var1193=java.util.Arrays, var3214=java.lang.Object, var2167=$r3, var901=r33, var2270=i0, var1878=$r4, var2037=$r25, var3150=$r5, var3648=java.lang.ReflectiveOperationException, var1949=$r27, var3022=org.apache.ibatis.logging.Log, var897=$r32, var2165=$r28, var3557=$r29, var3279=$r30, var1157=$r31, var2139=java.lang.Throwable}
; {java.util.ArrayList=var64, $r0=var882, java.util.List=var3796, org.apache.ibatis.io.VFS=var2575, $r1=var3330, java.util.Collection=var1450, $r2=var1598, java.util.Arrays=var1193, java.lang.Object=var3214, $r3=var2167, r33=var901, i0=var2270, $r4=var1878, $r25=var2037, $r5=var3150, java.lang.ReflectiveOperationException=var3648, $r27=var1949, org.apache.ibatis.logging.Log=var3022, $r32=var897, $r28=var2165, $r29=var3557, $r30=var3279, $r31=var1157, java.lang.Throwable=var2139}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.util.ArrayList;	$r1 = <org.apache.ibatis.io.VFS: java.util.List USER_IMPLEMENTATIONS>;	specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1);	$r2 = <org.apache.ibatis.io.VFS: java.lang.Class[] IMPLEMENTATIONS>;	$r3 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r2);	interfaceinvoke $r0.<java.util.List: boolean addAll(java.util.Collection)>($r3);	r33 = null;	i0 = 0;	if r33 == null goto $r4 = interfaceinvoke $r0.<java.util.List: java.lang.Object get(int)>(i0);	$r4 = interfaceinvoke $r0.<java.util.List: java.lang.Object get(int)>(i0);	$r25 = (java.lang.Class) $r4;	$r5 = newarray (java.lang.Class)[0];	$r27 := @caughtexception;	$r32 = staticinvoke <org.apache.ibatis.io.VFS: org.apache.ibatis.logging.Log access$000()>();	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to instantiate ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r32.<org.apache.ibatis.logging.Log: void error(java.lang.String,java.lang.Throwable)>($r31, $r27);	return null
;block_num 4