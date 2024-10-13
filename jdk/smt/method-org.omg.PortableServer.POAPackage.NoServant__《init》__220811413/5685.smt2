(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3754 0)
(declare-sort var1357 0)
(declare-sort var3631 0)
(declare-sort var2281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3631_id/1564344518 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2281 String) void)
(declare-fun cast-from-var3754-to-var2281 (var3754) var2281)
(declare-const null-var3754 var3754)
(declare-const null-String String)
(declare-const var1304 var3754) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.NoServant 
(assert (not (= var1304 null-var3754)))
(declare-const var3587 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3587 null-String)))
(define-const var3719 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3719)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3719!1 String)
(assert (= var3719!1 ""))
(define-const var3275 String var3631_id/1564344518) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.NoServantHelper: java.lang.String id()>() 
(assert true)
(define-const var500 String (append/672562846 var3719!1 var3275)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3719!2 String)
(assert (= var3719!2 (str.++ var3719!1 var3275)))
(assert true)
(define-const var207 String (append/672562846 var500 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var500!1 String)
(assert (= var500!1 (str.++ var500 "  ")))
(assert true)
(define-const var986 String (append/672562846 var207 var3587)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var207!1 String)
(assert (= var207!1 (str.++ var207 var3587)))
(assert true)
(define-const var3889 String (toString/-2075883882 var986)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var3754-to-var2281 var1304) var3889)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1304!1 var3754)
(declare-const var3889!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3631_id/1564344518=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var3754-to-var2281=([org.omg.PortableServer.POAPackage.NoServant], org.omg.CORBA.UserException)}
; {var3754=org.omg.PortableServer.POAPackage.NoServant, var1304=r0, var3587=r4, var1357=null_type, var3719=$r1, var3631=org.omg.PortableServer.POAPackage.NoServantHelper, var3275=$r2, var500=$r3, var207=$r5, var986=$r6, var3889=$r7, var2281=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.NoServant=var3754, r0=var1304, r4=var3587, null_type=var1357, $r1=var3719, org.omg.PortableServer.POAPackage.NoServantHelper=var3631, $r2=var3275, $r3=var500, $r5=var207, $r6=var986, $r7=var3889, org.omg.CORBA.UserException=var2281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.NoServant;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.NoServantHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1