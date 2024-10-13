(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2231 0)
(declare-sort var2351 0)
(declare-sort var3442 0)
(declare-sort var2728 0)
(declare-sort var488 0)
(declare-sort var1038 0)
(declare-sort var1983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_valueOf/-333372740 (var3442) String)
(declare-fun cast-from-String-to-var3442 (String) var3442)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun jarLocCache/1139179338 (var2231) var2728)
(declare-fun var2728_get/1088891777 (var2728 var3442) var3442)
(declare-fun cast-from-var3442-to-var488 (var3442) var488)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1038-init () var1038)
(declare-fun var488_valueOf/1602327315 (Bool) var488)
(declare-fun var2728_put/1464166817 (var2728 var3442 var3442) var3442)
(declare-fun cast-from-var488-to-var3442 (var488) var3442)
(declare-const null-var2231 var2231)
(declare-const null-String String)
(declare-const null-var488 var488)
(declare-const null-var1983 var1983)
(declare-const var3746 var2231) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3746 null-var2231)))
(declare-const var268 String) ; Statement: r27 := @parameter0: java.lang.String 
(assert (not (= var268 null-String)))
(declare-const var2071 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2071 null-String)))
(define-const var1553 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3194 String (String_valueOf/-333372740 (cast-from-String-to-var3442 var268))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r27) 
(assert true)
;(assert (<init>/-1061048412 var1553 var3194)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r1) 
(declare-const var1553!1 String)
(assert (= var1553!1 var3194))
(assert true)
(define-const var1766 String (append/672562846 var1553!1 "::")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var1553!2 String)
(assert (= var1553!2 (str.++ var1553!1 "::")))
(assert true)
(define-const var1564 String (append/672562846 var1766 var2071)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1766!1 String)
(assert (= var1766!1 (str.++ var1766 var2071)))
(assert true)
(define-const var451 String (toString/-2075883882 var1564)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2481 var2728 (jarLocCache/1139179338 var3746)) ; Statement: $r7 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> 
(define-const var530 var3442 (var2728_get/1088891777 var2481 (cast-from-String-to-var3442 var451))) ; Statement: $r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5) 
(define-const var447 var488 (cast-from-var3442-to-var488 var530)) ; Statement: r9 = (java.lang.Boolean) $r8 
 ; Statement: if r9 == null goto $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
(assert (= var447 null-var488)) ; Cond: r9 == null 
(assert true)
(define-const var994 Bool (startsWith/-1785782452 var268 "file:/")) ; Statement: $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
 ; Statement: if $z0 == 0 goto $r10 = new java.io.FileInputStream 
(assert (= (ite var994 1 0) 0)) ; Cond: $z0 == 0 
(define-const var383 var1038 var1038-init) ; Statement: $r10 = new java.io.FileInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1208 var1983) ; Statement: $r19 := @caughtexception 
(assert (not (= var1208 null-var1983)))
(define-const var1600 var2728 (jarLocCache/1139179338 var3746)) ; Statement: $r20 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> 
(define-const var2510 var488 (var488_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r21 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
;(assert (var2728_put/1464166817 var1600 (cast-from-String-to-var3442 var451) (cast-from-var488-to-var3442 var2510))) ; Statement: interfaceinvoke $r20.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r5, $r21) 

(declare-const var1600!1 var2728)
(declare-const var451!1 String)
(declare-const var2510!1 var488)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var3442=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), var2728_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3442-to-var488=([java.lang.Object], java.lang.Boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1038-init=([], java.io.FileInputStream), var488_valueOf/1602327315=([boolean], java.lang.Boolean), var2728_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var488-to-var3442=([java.lang.Boolean], java.lang.Object)}
; {var2231=lombok.launch.ShadowClassLoader, var3746=r6, var268=r27, var2351=null_type, var2071=r2, var1553=$r0, var3442=java.lang.Object, var3194=$r1, var1766=$r3, var1564=$r4, var451=r5, var2728=java.util.Map, var2481=$r7, var530=$r8, var488=java.lang.Boolean, var447=r9, var994=$z0, var1038=java.io.FileInputStream, var383=$r10, var1983=java.io.IOException, var1208=$r19, var1600=$r20, var2510=$r21}
; {lombok.launch.ShadowClassLoader=var2231, r6=var3746, r27=var268, null_type=var2351, r2=var2071, $r0=var1553, java.lang.Object=var3442, $r1=var3194, $r3=var1766, $r4=var1564, r5=var451, java.util.Map=var2728, $r7=var2481, $r8=var530, java.lang.Boolean=var488, r9=var447, $z0=var994, java.io.FileInputStream=var1038, $r10=var383, java.io.IOException=var1983, $r19=var1208, $r20=var1600, $r21=var2510}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r27 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r27);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache>;	$r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5);	r9 = (java.lang.Boolean) $r8;	if r9 == null goto $z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	$z0 = virtualinvoke r27.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	if $z0 == 0 goto $r10 = new java.io.FileInputStream;	$r10 = new java.io.FileInputStream;	$r19 := @caughtexception;	$r20 = r6.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache>;	$r21 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	interfaceinvoke $r20.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r5, $r21);	return 0
;block_num 4