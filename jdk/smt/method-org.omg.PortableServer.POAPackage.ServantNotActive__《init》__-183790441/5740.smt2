(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2872 0)
(declare-sort var1753 0)
(declare-sort var3300 0)
(declare-sort var1979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3300_id/965041480 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var1979 String) void)
(declare-fun cast-from-var2872-to-var1979 (var2872) var1979)
(declare-const null-var2872 var2872)
(declare-const null-String String)
(declare-const var564 var2872) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.ServantNotActive 
(assert (not (= var564 null-var2872)))
(declare-const var1746 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1746 null-String)))
(define-const var2326 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2326)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2326!1 String)
(assert (= var2326!1 ""))
(define-const var440 String var3300_id/965041480) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.ServantNotActiveHelper: java.lang.String id()>() 
(assert true)
(define-const var2205 String (append/672562846 var2326!1 var440)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2326!2 String)
(assert (= var2326!2 (str.++ var2326!1 var440)))
(assert true)
(define-const var2791 String (append/672562846 var2205 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2205!1 String)
(assert (= var2205!1 (str.++ var2205 "  ")))
(assert true)
(define-const var2736 String (append/672562846 var2791 var1746)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2791!1 String)
(assert (= var2791!1 (str.++ var2791 var1746)))
(assert true)
(define-const var1255 String (toString/-2075883882 var2736)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2872-to-var1979 var564) var1255)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var564!1 var2872)
(declare-const var1255!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3300_id/965041480=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2872-to-var1979=([org.omg.PortableServer.POAPackage.ServantNotActive], org.omg.CORBA.UserException)}
; {var2872=org.omg.PortableServer.POAPackage.ServantNotActive, var564=r0, var1746=r4, var1753=null_type, var2326=$r1, var3300=org.omg.PortableServer.POAPackage.ServantNotActiveHelper, var440=$r2, var2205=$r3, var2791=$r5, var2736=$r6, var1255=$r7, var1979=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.ServantNotActive=var2872, r0=var564, r4=var1746, null_type=var1753, $r1=var2326, org.omg.PortableServer.POAPackage.ServantNotActiveHelper=var3300, $r2=var440, $r3=var2205, $r5=var2791, $r6=var2736, $r7=var1255, org.omg.CORBA.UserException=var1979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.ServantNotActive;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.ServantNotActiveHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1