(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2622 0)
(declare-sort var3278 0)
(declare-sort var2018 0)
(declare-sort var2313 0)
(declare-sort var924 0)
(declare-sort var2051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var924_id/-710113201 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2051 String) void)
(declare-fun cast-from-var2622-to-var2051 (var2622) var2051)
(declare-fun why/879076272 (var2622) var2018)
(declare-fun rest_of_name/879076272 (var2622) (Array Int var2313))
(declare-const null-var2622 var2622)
(declare-const null-String String)
(declare-const null-var2018 var2018)
(declare-const null-__Array__Int__var2313__ (Array Int var2313))
(declare-const var1612 var2622) ; Statement: r0 := @this: org.omg.CosNaming.NamingContextPackage.NotFound 
(assert (not (= var1612 null-var2622)))
(declare-const var1707 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1707 null-String)))
(declare-const var676 var2018) ; Statement: r8 := @parameter1: org.omg.CosNaming.NamingContextPackage.NotFoundReason 
(assert (not (= var676 null-var2018)))
(declare-const var2710 (Array Int var2313)) ; Statement: r9 := @parameter2: org.omg.CosNaming.NameComponent[] 
(assert (not (= var2710 null-__Array__Int__var2313__)))
(define-const var377 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var377)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var377!1 String)
(assert (= var377!1 ""))
(define-const var1558 String var924_id/-710113201) ; Statement: $r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.NotFoundHelper: java.lang.String id()>() 
(assert true)
(define-const var3419 String (append/672562846 var377!1 var1558)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var377!2 String)
(assert (= var377!2 (str.++ var377!1 var1558)))
(assert true)
(define-const var2948 String (append/672562846 var3419 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var3419!1 String)
(assert (= var3419!1 (str.++ var3419 "  ")))
(assert true)
(define-const var301 String (append/672562846 var2948 var1707)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2948!1 String)
(assert (= var2948!1 (str.++ var2948 var1707)))
(assert true)
(define-const var1090 String (toString/-2075883882 var301)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2622-to-var2051 var1612) var1090)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1612!1 var2622)
(declare-const var1090!1 String)
(declare-const var1612!2 var2622)
(assert (not (= var1612!2 null-var2622)))
(assert (= (why/879076272 var1612!2) null-var2018)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NamingContextPackage.NotFoundReason why> = null 
(declare-const var1612!3 var2622)
(assert (not (= var1612!3 null-var2622)))
(assert (= (rest_of_name/879076272 var1612!3) null-__Array__Int__var2313__)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NameComponent[] rest_of_name> = null 
(declare-const var1612!4 var2622)
(assert (not (= var1612!4 null-var2622)))
(assert (= (why/879076272 var1612!4) var676)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NamingContextPackage.NotFoundReason why> = r8 
(declare-const var1612!5 var2622)
(assert (not (= var1612!5 null-var2622)))
(assert (= (rest_of_name/879076272 var1612!5) var2710)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NameComponent[] rest_of_name> = r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var924_id/-710113201=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2622-to-var2051=([org.omg.CosNaming.NamingContextPackage.NotFound], org.omg.CORBA.UserException), why/879076272=([org.omg.CosNaming.NamingContextPackage.NotFound], org.omg.CosNaming.NamingContextPackage.NotFoundReason), rest_of_name/879076272=([org.omg.CosNaming.NamingContextPackage.NotFound], org.omg.CosNaming.NameComponent[])}
; {var2622=org.omg.CosNaming.NamingContextPackage.NotFound, var1612=r0, var1707=r4, var3278=null_type, var2018=org.omg.CosNaming.NamingContextPackage.NotFoundReason, var676=r8, var2313=org.omg.CosNaming.NameComponent, var2710=r9, var377=$r1, var924=org.omg.CosNaming.NamingContextPackage.NotFoundHelper, var1558=$r2, var3419=$r3, var2948=$r5, var301=$r6, var1090=$r7, var2051=org.omg.CORBA.UserException}
; {org.omg.CosNaming.NamingContextPackage.NotFound=var2622, r0=var1612, r4=var1707, null_type=var3278, org.omg.CosNaming.NamingContextPackage.NotFoundReason=var2018, r8=var676, org.omg.CosNaming.NameComponent=var2313, r9=var2710, $r1=var377, org.omg.CosNaming.NamingContextPackage.NotFoundHelper=var924, $r2=var1558, $r3=var3419, $r5=var2948, $r6=var301, $r7=var1090, org.omg.CORBA.UserException=var2051}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CosNaming.NamingContextPackage.NotFound;	r4 := @parameter0: java.lang.String;	r8 := @parameter1: org.omg.CosNaming.NamingContextPackage.NotFoundReason;	r9 := @parameter2: org.omg.CosNaming.NameComponent[];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.NotFoundHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NamingContextPackage.NotFoundReason why> = null;	r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NameComponent[] rest_of_name> = null;	r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NamingContextPackage.NotFoundReason why> = r8;	r0.<org.omg.CosNaming.NamingContextPackage.NotFound: org.omg.CosNaming.NameComponent[] rest_of_name> = r9;	return
;block_num 1