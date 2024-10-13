(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3752 0)
(declare-sort var325 0)
(declare-sort var2756 0)
(declare-sort var3976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2756_id/476140434 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var3976 String) void)
(declare-fun cast-from-var3752-to-var3976 (var3752) var3976)
(declare-const null-var3752 var3752)
(declare-const null-String String)
(declare-const var3223 var3752) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.AdapterNonExistent 
(assert (not (= var3223 null-var3752)))
(declare-const var2054 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2054 null-String)))
(define-const var1065 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1065)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1065!1 String)
(assert (= var1065!1 ""))
(define-const var3401 String var2756_id/476140434) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.AdapterNonExistentHelper: java.lang.String id()>() 
(assert true)
(define-const var3669 String (append/672562846 var1065!1 var3401)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1065!2 String)
(assert (= var1065!2 (str.++ var1065!1 var3401)))
(assert true)
(define-const var699 String (append/672562846 var3669 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var3669!1 String)
(assert (= var3669!1 (str.++ var3669 "  ")))
(assert true)
(define-const var2024 String (append/672562846 var699 var2054)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var699!1 String)
(assert (= var699!1 (str.++ var699 var2054)))
(assert true)
(define-const var2935 String (toString/-2075883882 var2024)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var3752-to-var3976 var3223) var2935)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var3223!1 var3752)
(declare-const var2935!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2756_id/476140434=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var3752-to-var3976=([org.omg.PortableServer.POAPackage.AdapterNonExistent], org.omg.CORBA.UserException)}
; {var3752=org.omg.PortableServer.POAPackage.AdapterNonExistent, var3223=r0, var2054=r4, var325=null_type, var1065=$r1, var2756=org.omg.PortableServer.POAPackage.AdapterNonExistentHelper, var3401=$r2, var3669=$r3, var699=$r5, var2024=$r6, var2935=$r7, var3976=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.AdapterNonExistent=var3752, r0=var3223, r4=var2054, null_type=var325, $r1=var1065, org.omg.PortableServer.POAPackage.AdapterNonExistentHelper=var2756, $r2=var3401, $r3=var3669, $r5=var699, $r6=var2024, $r7=var2935, org.omg.CORBA.UserException=var3976}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.AdapterNonExistent;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.AdapterNonExistentHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1