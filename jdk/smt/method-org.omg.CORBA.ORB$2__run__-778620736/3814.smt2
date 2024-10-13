(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort var417 0)
(declare-sort var1312 0)
(declare-sort var3824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var417_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getFileProperties/-958903029 (var2289 String) var3824)
(declare-const null-var2289 var2289)
(declare-const var1312-separator String)
(declare-const null-var3824 var3824)
(declare-const var1643 var2289) ; Statement: r6 := @this: org.omg.CORBA.ORB$2 
(assert (not (= var1643 null-var2289)))
(define-const var1843 String (var417_getProperty/258823597 "user.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var2964 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2964)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2964!1 String)
(assert (= var2964!1 ""))
(assert true)
(define-const var1543 String (append/672562846 var2964!1 var1843)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2964!2 String)
(assert (= var2964!2 (str.++ var2964!1 var1843)))
(define-const var3349 String var1312-separator) ; Statement: $r2 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var543 String (append/672562846 var1543 var3349)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1543!1 String)
(assert (= var1543!1 (str.++ var1543 var3349)))
(assert true)
(define-const var3110 String (append/672562846 var543 "orb.properties")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties") 
(declare-const var543!1 String)
(assert (= var543!1 (str.++ var543 "orb.properties")))
(assert true)
(define-const var3658 String (toString/-2075883882 var3110)) ; Statement: r21 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2389 var3824 (getFileProperties/-958903029 var1643 var3658)) ; Statement: r22 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>(r21) 
 ; Statement: if r22 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home") 
(assert (= var2389 null-var3824)) ; Cond: r22 == null 
(define-const var2900 String (var417_getProperty/258823597 "java.home")) ; Statement: $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home") 
(define-const var1326 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1326)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1326!1 String)
(assert (= var1326!1 ""))
(assert true)
(define-const var1690 String (append/672562846 var1326!1 var2900)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1326!2 String)
(assert (= var1326!2 (str.++ var1326!1 var2900)))
(define-const var1721 String var1312-separator) ; Statement: $r8 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1709 String (append/672562846 var1690 var1721)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1690!1 String)
(assert (= var1690!1 (str.++ var1690 var1721)))
(assert true)
(define-const var2046 String (append/672562846 var1709 "lib")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib") 
(declare-const var1709!1 String)
(assert (= var1709!1 (str.++ var1709 "lib")))
(define-const var1193 String var1312-separator) ; Statement: $r11 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1000 String (append/672562846 var2046 var1193)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2046!1 String)
(assert (= var2046!1 (str.++ var2046 var1193)))
(assert true)
(define-const var167 String (append/672562846 var1000 "orb.properties")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties") 
(declare-const var1000!1 String)
(assert (= var1000!1 (str.++ var1000 "orb.properties")))
(assert true)
(define-const var3725 String (toString/-2075883882 var167)) ; Statement: $r19 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1629 var3824 (getFileProperties/-958903029 var1643 var3725)) ; Statement: $r20 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>($r19) 
 ; Statement: if $r20 != null goto $r15 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name> 
(assert (not (not (= var1629 null-var3824)))) ; Negate: Cond: $r20 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var417_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getFileProperties/-958903029=([org.omg.CORBA.ORB$2, java.lang.String], java.util.Properties)}
; {var2289=org.omg.CORBA.ORB$2, var1643=r6, var417=java.lang.System, var1843=r0, var2964=$r1, var1543=$r3, var1312=java.io.File, var3349=$r2, var543=$r4, var3110=$r5, var3658=r21, var3824=java.util.Properties, var2389=r22, var2900=$r18, var1326=$r7, var1690=$r9, var1721=$r8, var1709=$r10, var2046=$r12, var1193=$r11, var1000=$r13, var167=$r14, var3725=$r19, var1629=$r20}
; {org.omg.CORBA.ORB$2=var2289, r6=var1643, java.lang.System=var417, r0=var1843, $r1=var2964, $r3=var1543, java.io.File=var1312, $r2=var3349, $r4=var543, $r5=var3110, r21=var3658, java.util.Properties=var3824, r22=var2389, $r18=var2900, $r7=var1326, $r9=var1690, $r8=var1721, $r10=var1709, $r12=var2046, $r11=var1193, $r13=var1000, $r14=var167, $r19=var3725, $r20=var1629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r6 := @this: org.omg.CORBA.ORB$2;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r2 = <java.io.File: java.lang.String separator>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties");	r21 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r22 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>(r21);	if r22 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home");	$r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home");	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r8 = <java.io.File: java.lang.String separator>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib");	$r11 = <java.io.File: java.lang.String separator>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties");	$r19 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>($r19);	if $r20 != null goto $r15 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name>;	return null
;block_num 3