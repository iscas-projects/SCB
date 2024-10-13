(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var585 0)
(declare-sort var1744 0)
(declare-sort var2722 0)
(declare-sort var3637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2722_id/-1745311155 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var3637 String) void)
(declare-fun cast-from-var585-to-var3637 (var585) var3637)
(declare-const null-var585 var585)
(declare-const null-String String)
(declare-const var3032 var585) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.ServantAlreadyActive 
(assert (not (= var3032 null-var585)))
(declare-const var912 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var912 null-String)))
(define-const var3326 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3326)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3326!1 String)
(assert (= var3326!1 ""))
(define-const var2987 String var2722_id/-1745311155) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.ServantAlreadyActiveHelper: java.lang.String id()>() 
(assert true)
(define-const var2336 String (append/672562846 var3326!1 var2987)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3326!2 String)
(assert (= var3326!2 (str.++ var3326!1 var2987)))
(assert true)
(define-const var3062 String (append/672562846 var2336 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2336!1 String)
(assert (= var2336!1 (str.++ var2336 "  ")))
(assert true)
(define-const var1830 String (append/672562846 var3062 var912)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3062!1 String)
(assert (= var3062!1 (str.++ var3062 var912)))
(assert true)
(define-const var708 String (toString/-2075883882 var1830)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var585-to-var3637 var3032) var708)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var3032!1 var585)
(declare-const var708!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2722_id/-1745311155=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var585-to-var3637=([org.omg.PortableServer.POAPackage.ServantAlreadyActive], org.omg.CORBA.UserException)}
; {var585=org.omg.PortableServer.POAPackage.ServantAlreadyActive, var3032=r0, var912=r4, var1744=null_type, var3326=$r1, var2722=org.omg.PortableServer.POAPackage.ServantAlreadyActiveHelper, var2987=$r2, var2336=$r3, var3062=$r5, var1830=$r6, var708=$r7, var3637=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.ServantAlreadyActive=var585, r0=var3032, r4=var912, null_type=var1744, $r1=var3326, org.omg.PortableServer.POAPackage.ServantAlreadyActiveHelper=var2722, $r2=var2987, $r3=var2336, $r5=var3062, $r6=var1830, $r7=var708, org.omg.CORBA.UserException=var3637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.ServantAlreadyActive;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.ServantAlreadyActiveHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1