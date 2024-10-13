(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3443 0)
(declare-sort var2996 0)
(declare-sort var3218 0)
(declare-sort var132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3218_id/1492832589 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var132 String) void)
(declare-fun cast-from-var3443-to-var132 (var3443) var132)
(declare-const null-var3443 var3443)
(declare-const null-String String)
(declare-const var2537 var3443) ; Statement: r0 := @this: org.omg.PortableServer.CurrentPackage.NoContext 
(assert (not (= var2537 null-var3443)))
(declare-const var3799 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3799 null-String)))
(define-const var1663 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1663)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1663!1 String)
(assert (= var1663!1 ""))
(define-const var3048 String var3218_id/1492832589) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.CurrentPackage.NoContextHelper: java.lang.String id()>() 
(assert true)
(define-const var144 String (append/672562846 var1663!1 var3048)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1663!2 String)
(assert (= var1663!2 (str.++ var1663!1 var3048)))
(assert true)
(define-const var1024 String (append/672562846 var144 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var144!1 String)
(assert (= var144!1 (str.++ var144 "  ")))
(assert true)
(define-const var2976 String (append/672562846 var1024 var3799)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1024!1 String)
(assert (= var1024!1 (str.++ var1024 var3799)))
(assert true)
(define-const var1840 String (toString/-2075883882 var2976)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var3443-to-var132 var2537) var1840)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var2537!1 var3443)
(declare-const var1840!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3218_id/1492832589=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var3443-to-var132=([org.omg.PortableServer.CurrentPackage.NoContext], org.omg.CORBA.UserException)}
; {var3443=org.omg.PortableServer.CurrentPackage.NoContext, var2537=r0, var3799=r4, var2996=null_type, var1663=$r1, var3218=org.omg.PortableServer.CurrentPackage.NoContextHelper, var3048=$r2, var144=$r3, var1024=$r5, var2976=$r6, var1840=$r7, var132=org.omg.CORBA.UserException}
; {org.omg.PortableServer.CurrentPackage.NoContext=var3443, r0=var2537, r4=var3799, null_type=var2996, $r1=var1663, org.omg.PortableServer.CurrentPackage.NoContextHelper=var3218, $r2=var3048, $r3=var144, $r5=var1024, $r6=var2976, $r7=var1840, org.omg.CORBA.UserException=var132}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.CurrentPackage.NoContext;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.CurrentPackage.NoContextHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1