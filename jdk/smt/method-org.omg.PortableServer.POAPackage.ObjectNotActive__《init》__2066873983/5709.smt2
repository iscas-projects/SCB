(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var603 0)
(declare-sort var3389 0)
(declare-sort var322 0)
(declare-sort var510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var322_id/-494067408 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var510 String) void)
(declare-fun cast-from-var603-to-var510 (var603) var510)
(declare-const null-var603 var603)
(declare-const null-String String)
(declare-const var484 var603) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.ObjectNotActive 
(assert (not (= var484 null-var603)))
(declare-const var1250 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1250 null-String)))
(define-const var3570 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3570)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3570!1 String)
(assert (= var3570!1 ""))
(define-const var1668 String var322_id/-494067408) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.ObjectNotActiveHelper: java.lang.String id()>() 
(assert true)
(define-const var3588 String (append/672562846 var3570!1 var1668)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3570!2 String)
(assert (= var3570!2 (str.++ var3570!1 var1668)))
(assert true)
(define-const var3853 String (append/672562846 var3588 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var3588!1 String)
(assert (= var3588!1 (str.++ var3588 "  ")))
(assert true)
(define-const var2630 String (append/672562846 var3853 var1250)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3853!1 String)
(assert (= var3853!1 (str.++ var3853 var1250)))
(assert true)
(define-const var1577 String (toString/-2075883882 var2630)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var603-to-var510 var484) var1577)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var484!1 var603)
(declare-const var1577!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var322_id/-494067408=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var603-to-var510=([org.omg.PortableServer.POAPackage.ObjectNotActive], org.omg.CORBA.UserException)}
; {var603=org.omg.PortableServer.POAPackage.ObjectNotActive, var484=r0, var1250=r4, var3389=null_type, var3570=$r1, var322=org.omg.PortableServer.POAPackage.ObjectNotActiveHelper, var1668=$r2, var3588=$r3, var3853=$r5, var2630=$r6, var1577=$r7, var510=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.ObjectNotActive=var603, r0=var484, r4=var1250, null_type=var3389, $r1=var3570, org.omg.PortableServer.POAPackage.ObjectNotActiveHelper=var322, $r2=var1668, $r3=var3588, $r5=var3853, $r6=var2630, $r7=var1577, org.omg.CORBA.UserException=var510}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.ObjectNotActive;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.ObjectNotActiveHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1