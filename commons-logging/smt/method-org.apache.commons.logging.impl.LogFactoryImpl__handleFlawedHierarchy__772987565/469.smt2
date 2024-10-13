(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2652 0)
(declare-sort var887 0)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3596!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun allowFlawedDiscovery/1199358121 (var2652) Bool)
(declare-fun var2652_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var2652 String) void)
(declare-const null-var2652 var2652)
(declare-const null-var887 var887)
(declare-const null-ClassObject ClassObject)
(declare-const var3252 var2652) ; Statement: r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3252 null-var2652)))
(declare-const var1138 var887) ; Statement: r27 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1138 null-var887)))
(declare-const var3894 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3894 null-ClassObject)))
(define-const var1944 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var3757 ClassObject var3596!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/Log;" 
(assert true)
(define-const var3707 String (getName/-1958580599 var3757)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1784 (Array Int ClassObject) (getInterfaces/-1280103563 var3894)) ; Statement: r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var2062 Int (getLength-Arr-ClassObject-1 var1784)) ; Statement: i0 = lengthof r3 
(define-const var1874 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto (branch) 
(assert (>= var1874 var2062)) ; Cond: i1 >= i0 
 ; Statement: if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (= (ite var1944 1 0) 0)) ; Cond: z7 == 0 
(define-const var3995 Bool (allowFlawedDiscovery/1199358121 var3252)) ; Statement: $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
 ; Statement: if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (= (ite var3995 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3075 Bool var2652_isDiagnosticsEnabled/-1107982053) ; Statement: $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (not (= (ite var3075 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var16 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var16)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var16!1 String)
(assert (= var16!1 ""))
(assert true)
;(assert (append/672562846 var16!1 "[WARNING] Log class \u0027")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[WARNING] Log class \'") 
(declare-const var16!2 String)
(assert (= var16!2 (str.++ var16!1 "[WARNING] Log class \u0027")))
(assert true)
(define-const var2608 String (getName/-1958580599 var3894)) ; Statement: $r6 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var16!2 var2608)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var16!3 String)
(assert (= var16!3 (str.++ var16!2 var2608)))
(assert true)
;(assert (append/672562846 var16!3 "\u0027 does not implement the Log interface.")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not implement the Log interface.") 
(declare-const var16!4 String)
(assert (= var16!4 (str.++ var16!3 "\u0027 does not implement the Log interface.")))
(assert true)
(define-const var2981 String (toString/-2075883882 var16!4)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var3252 var2981)) ; Statement: virtualinvoke r4.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r7) 

(declare-const var3252!1 var2652)
(declare-const var2981!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), allowFlawedDiscovery/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean), var2652_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void)}
; {var2652=org.apache.commons.logging.impl.LogFactoryImpl, var3252=r4, var887=java.lang.ClassLoader, var1138=r27, var3894=r2, var1944=z7, var3596=org.apache.commons.logging.Log, var3757=$r0, var3707=r1, var1784=r3, var2062=i0, var1874=i1, var3995=$z0, var3075=$z1, var16=$r5, var2608=$r6, var2981=$r7}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2652, r4=var3252, java.lang.ClassLoader=var887, r27=var1138, r2=var3894, z7=var1944, org.apache.commons.logging.Log=var3596, $r0=var3757, r1=var3707, r3=var1784, i0=var2062, i1=var1874, $z0=var3995, $z1=var3075, $r5=var16, $r6=var2608, $r7=var2981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r27 := @parameter0: java.lang.ClassLoader;	r2 := @parameter1: java.lang.Class;	z7 = 0;	$r0 = class "Lorg/apache/commons/logging/Log;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto (branch);	if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z1 == 0 goto return;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[WARNING] Log class \'");	$r6 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not implement the Log interface.");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r7);	return
;block_num 7