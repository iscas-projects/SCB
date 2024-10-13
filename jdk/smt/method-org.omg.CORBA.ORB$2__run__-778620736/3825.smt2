(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var493 0)
(declare-sort var3643 0)
(declare-sort var2242 0)
(declare-sort var3676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3643_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getFileProperties/-958903029 (var493 String) var3676)
(declare-fun val$name/-1903439531 (var493) String)
(declare-fun getProperty/1391780669 (var3676 String) String)
(declare-const null-var493 var493)
(declare-const var2242-separator String)
(declare-const null-var3676 var3676)
(declare-const var1541 var493) ; Statement: r6 := @this: org.omg.CORBA.ORB$2 
(assert (not (= var1541 null-var493)))
(define-const var1707 String (var3643_getProperty/258823597 "user.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var322 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var322)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var322!1 String)
(assert (= var322!1 ""))
(assert true)
(define-const var3264 String (append/672562846 var322!1 var1707)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var322!2 String)
(assert (= var322!2 (str.++ var322!1 var1707)))
(define-const var2157 String var2242-separator) ; Statement: $r2 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var572 String (append/672562846 var3264 var2157)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3264!1 String)
(assert (= var3264!1 (str.++ var3264 var2157)))
(assert true)
(define-const var2656 String (append/672562846 var572 "orb.properties")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties") 
(declare-const var572!1 String)
(assert (= var572!1 (str.++ var572 "orb.properties")))
(assert true)
(define-const var3004 String (toString/-2075883882 var2656)) ; Statement: r21 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var487 var3676 (getFileProperties/-958903029 var1541 var3004)) ; Statement: r22 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>(r21) 
 ; Statement: if r22 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home") 
(assert (= var487 null-var3676)) ; Cond: r22 == null 
(define-const var3366 String (var3643_getProperty/258823597 "java.home")) ; Statement: $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home") 
(define-const var3959 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3959)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3959!1 String)
(assert (= var3959!1 ""))
(assert true)
(define-const var2469 String (append/672562846 var3959!1 var3366)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3959!2 String)
(assert (= var3959!2 (str.++ var3959!1 var3366)))
(define-const var2270 String var2242-separator) ; Statement: $r8 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var3254 String (append/672562846 var2469 var2270)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2469!1 String)
(assert (= var2469!1 (str.++ var2469 var2270)))
(assert true)
(define-const var395 String (append/672562846 var3254 "lib")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib") 
(declare-const var3254!1 String)
(assert (= var3254!1 (str.++ var3254 "lib")))
(define-const var1848 String var2242-separator) ; Statement: $r11 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1693 String (append/672562846 var395 var1848)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var395!1 String)
(assert (= var395!1 (str.++ var395 var1848)))
(assert true)
(define-const var3769 String (append/672562846 var1693 "orb.properties")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties") 
(declare-const var1693!1 String)
(assert (= var1693!1 (str.++ var1693 "orb.properties")))
(assert true)
(define-const var606 String (toString/-2075883882 var3769)) ; Statement: $r19 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1780 var3676 (getFileProperties/-958903029 var1541 var606)) ; Statement: $r20 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>($r19) 
 ; Statement: if $r20 != null goto $r15 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name> 
(assert (not (= var1780 null-var3676))) ; Cond: $r20 != null 
(define-const var499 String (val$name/-1903439531 var1541)) ; Statement: $r15 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name> 
(assert true)
(define-const var1265 String (getProperty/1391780669 var1780 var499)) ; Statement: $r16 = virtualinvoke $r20.<java.util.Properties: java.lang.String getProperty(java.lang.String)>($r15) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var3643_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getFileProperties/-958903029=([org.omg.CORBA.ORB$2, java.lang.String], java.util.Properties), val$name/-1903439531=([org.omg.CORBA.ORB$2], java.lang.String), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String)}
; {var493=org.omg.CORBA.ORB$2, var1541=r6, var3643=java.lang.System, var1707=r0, var322=$r1, var3264=$r3, var2242=java.io.File, var2157=$r2, var572=$r4, var2656=$r5, var3004=r21, var3676=java.util.Properties, var487=r22, var3366=$r18, var3959=$r7, var2469=$r9, var2270=$r8, var3254=$r10, var395=$r12, var1848=$r11, var1693=$r13, var3769=$r14, var606=$r19, var1780=$r20, var499=$r15, var1265=$r16}
; {org.omg.CORBA.ORB$2=var493, r6=var1541, java.lang.System=var3643, r0=var1707, $r1=var322, $r3=var3264, java.io.File=var2242, $r2=var2157, $r4=var572, $r5=var2656, r21=var3004, java.util.Properties=var3676, r22=var487, $r18=var3366, $r7=var3959, $r9=var2469, $r8=var2270, $r10=var3254, $r12=var395, $r11=var1848, $r13=var1693, $r14=var3769, $r19=var606, $r20=var1780, $r15=var499, $r16=var1265}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r6 := @this: org.omg.CORBA.ORB$2;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r2 = <java.io.File: java.lang.String separator>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties");	r21 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r22 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>(r21);	if r22 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home");	$r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home");	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r8 = <java.io.File: java.lang.String separator>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib");	$r11 = <java.io.File: java.lang.String separator>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties");	$r19 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>($r19);	if $r20 != null goto $r15 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name>;	$r15 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name>;	$r16 = virtualinvoke $r20.<java.util.Properties: java.lang.String getProperty(java.lang.String)>($r15);	return $r16
;block_num 3