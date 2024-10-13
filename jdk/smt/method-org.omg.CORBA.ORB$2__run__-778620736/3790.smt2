(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2272 0)
(declare-sort var567 0)
(declare-sort var2058 0)
(declare-sort var2949 0)
(declare-sort var3729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var567_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getFileProperties/-958903029 (var2272 String) var2949)
(declare-fun val$name/-1903439531 (var2272) String)
(declare-fun getProperty/1391780669 (var2949 String) String)
(declare-const null-var2272 var2272)
(declare-const var2058-separator String)
(declare-const null-var2949 var2949)
(declare-const null-String String)
(declare-const var333 var2272) ; Statement: r6 := @this: org.omg.CORBA.ORB$2 
(assert (not (= var333 null-var2272)))
(define-const var3634 String (var567_getProperty/258823597 "user.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var1672 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1672)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1672!1 String)
(assert (= var1672!1 ""))
(assert true)
(define-const var3829 String (append/672562846 var1672!1 var3634)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1672!2 String)
(assert (= var1672!2 (str.++ var1672!1 var3634)))
(define-const var2532 String var2058-separator) ; Statement: $r2 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var423 String (append/672562846 var3829 var2532)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3829!1 String)
(assert (= var3829!1 (str.++ var3829 var2532)))
(assert true)
(define-const var832 String (append/672562846 var423 "orb.properties")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties") 
(declare-const var423!1 String)
(assert (= var423!1 (str.++ var423 "orb.properties")))
(assert true)
(define-const var1812 String (toString/-2075883882 var832)) ; Statement: r21 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2196 var2949 (getFileProperties/-958903029 var333 var1812)) ; Statement: r22 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>(r21) 
 ; Statement: if r22 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home") 
(assert (not (= var2196 null-var2949))) ; Negate: Cond: r22 == null  
(define-const var2705 String (val$name/-1903439531 var333)) ; Statement: $r17 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name> 
(assert true)
(define-const var1111 String (getProperty/1391780669 var2196 var2705)) ; Statement: r23 = virtualinvoke r22.<java.util.Properties: java.lang.String getProperty(java.lang.String)>($r17) 
 ; Statement: if r23 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home") 
(assert (not (= var1111 null-String))) ; Negate: Cond: r23 == null  
 ; Statement: return r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var567_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getFileProperties/-958903029=([org.omg.CORBA.ORB$2, java.lang.String], java.util.Properties), val$name/-1903439531=([org.omg.CORBA.ORB$2], java.lang.String), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String)}
; {var2272=org.omg.CORBA.ORB$2, var333=r6, var567=java.lang.System, var3634=r0, var1672=$r1, var3829=$r3, var2058=java.io.File, var2532=$r2, var423=$r4, var832=$r5, var1812=r21, var2949=java.util.Properties, var2196=r22, var2705=$r17, var1111=r23, var3729=null_type}
; {org.omg.CORBA.ORB$2=var2272, r6=var333, java.lang.System=var567, r0=var3634, $r1=var1672, $r3=var3829, java.io.File=var2058, $r2=var2532, $r4=var423, $r5=var832, r21=var1812, java.util.Properties=var2949, r22=var2196, $r17=var2705, r23=var1111, null_type=var3729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.omg.CORBA.ORB$2;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r2 = <java.io.File: java.lang.String separator>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orb.properties");	r21 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r22 = specialinvoke r6.<org.omg.CORBA.ORB$2: java.util.Properties getFileProperties(java.lang.String)>(r21);	if r22 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home");	$r17 = r6.<org.omg.CORBA.ORB$2: java.lang.String val$name>;	r23 = virtualinvoke r22.<java.util.Properties: java.lang.String getProperty(java.lang.String)>($r17);	if r23 == null goto $r18 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home");	return r23
;block_num 3