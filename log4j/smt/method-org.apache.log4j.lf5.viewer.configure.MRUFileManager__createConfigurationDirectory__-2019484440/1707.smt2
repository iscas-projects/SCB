(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3128 0)
(declare-sort var999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3128_getProperty/258823597 (String) String)
(declare-fun var999-init () var999)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/-1681595970 (var999 String) void)
(declare-fun exists/1072868559 (var999) Bool)
(define-const var2141 String (var3128_getProperty/258823597 "user.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var1007 String (var3128_getProperty/258823597 "file.separator")) ; Statement: r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.separator") 
(define-const var270 var999 var999-init) ; Statement: $r2 = new java.io.File 
(define-const var3838 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3838)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3838!1 String)
(assert true)
(define-const var1828 String (append/1560614132 var3838!1 var2141)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var3838!2 String)
(assert (str.prefixof var3838!1 var3838!2))
(assert true)
(define-const var1910 String (append/1560614132 var1828 var1007)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1828!1 String)
(assert (str.prefixof var1828 var1828!1))
(assert true)
(define-const var56 String (append/1560614132 var1910 "lf5")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5") 
(declare-const var1910!1 String)
(assert (str.prefixof var1910 var1910!1))
(assert true)
(define-const var842 String (toString/-222306083 var56)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var270 var842)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>($r7) 

(declare-const var270!1 var999)
(declare-const var842!1 String)
(assert true)
(define-const var351 Bool (exists/1072868559 var270!1)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var351 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3128_getProperty/258823597=([java.lang.String], java.lang.String), var999-init=([], java.io.File), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean)}
; {var3128=java.lang.System, var2141=r0, var1007=r1, var999=java.io.File, var270=$r2, var3838=$r3, var1828=$r4, var1910=$r5, var56=$r6, var842=$r7, var351=$z0}
; {java.lang.System=var3128, r0=var2141, r1=var1007, java.io.File=var999, $r2=var270, $r3=var3838, $r4=var1828, $r5=var1910, $r6=var56, $r7=var842, $z0=var351}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.separator");	$r2 = new java.io.File;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>($r7);	$z0 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z0 != 0 goto return;	return
;block_num 2