(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1441 0)
(declare-sort var1720 0)
(declare-sort var2535 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2535_id/1812510232 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var233 String) void)
(declare-fun cast-from-var1441-to-var233 (var1441) var233)
(declare-const null-var1441 var1441)
(declare-const null-String String)
(declare-const var2472 var1441) ; Statement: r0 := @this: org.omg.CosNaming.NamingContextPackage.InvalidName 
(assert (not (= var2472 null-var1441)))
(declare-const var3083 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3083 null-String)))
(define-const var3189 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3189)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3189!1 String)
(assert (= var3189!1 ""))
(define-const var1429 String var2535_id/1812510232) ; Statement: $r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.InvalidNameHelper: java.lang.String id()>() 
(assert true)
(define-const var813 String (append/672562846 var3189!1 var1429)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3189!2 String)
(assert (= var3189!2 (str.++ var3189!1 var1429)))
(assert true)
(define-const var2817 String (append/672562846 var813 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var813!1 String)
(assert (= var813!1 (str.++ var813 "  ")))
(assert true)
(define-const var2141 String (append/672562846 var2817 var3083)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2817!1 String)
(assert (= var2817!1 (str.++ var2817 var3083)))
(assert true)
(define-const var31 String (toString/-2075883882 var2141)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1441-to-var233 var2472) var31)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var2472!1 var1441)
(declare-const var31!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2535_id/1812510232=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1441-to-var233=([org.omg.CosNaming.NamingContextPackage.InvalidName], org.omg.CORBA.UserException)}
; {var1441=org.omg.CosNaming.NamingContextPackage.InvalidName, var2472=r0, var3083=r4, var1720=null_type, var3189=$r1, var2535=org.omg.CosNaming.NamingContextPackage.InvalidNameHelper, var1429=$r2, var813=$r3, var2817=$r5, var2141=$r6, var31=$r7, var233=org.omg.CORBA.UserException}
; {org.omg.CosNaming.NamingContextPackage.InvalidName=var1441, r0=var2472, r4=var3083, null_type=var1720, $r1=var3189, org.omg.CosNaming.NamingContextPackage.InvalidNameHelper=var2535, $r2=var1429, $r3=var813, $r5=var2817, $r6=var2141, $r7=var31, org.omg.CORBA.UserException=var233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CosNaming.NamingContextPackage.InvalidName;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.InvalidNameHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1