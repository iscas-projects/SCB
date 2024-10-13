(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1637 0)
(declare-sort var53 0)
(declare-sort var1211 0)
(declare-sort var3764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1211_id/-1631308860 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var3764 String) void)
(declare-fun cast-from-var1637-to-var3764 (var1637) var3764)
(declare-const null-var1637 var1637)
(declare-const null-String String)
(declare-const var348 var1637) ; Statement: r0 := @this: org.omg.CosNaming.NamingContextExtPackage.InvalidAddress 
(assert (not (= var348 null-var1637)))
(declare-const var3341 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3341 null-String)))
(define-const var2515 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2515)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2515!1 String)
(assert (= var2515!1 ""))
(define-const var2016 String var1211_id/-1631308860) ; Statement: $r2 = staticinvoke <org.omg.CosNaming.NamingContextExtPackage.InvalidAddressHelper: java.lang.String id()>() 
(assert true)
(define-const var861 String (append/672562846 var2515!1 var2016)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2515!2 String)
(assert (= var2515!2 (str.++ var2515!1 var2016)))
(assert true)
(define-const var2064 String (append/672562846 var861 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var861!1 String)
(assert (= var861!1 (str.++ var861 "  ")))
(assert true)
(define-const var947 String (append/672562846 var2064 var3341)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2064!1 String)
(assert (= var2064!1 (str.++ var2064 var3341)))
(assert true)
(define-const var3716 String (toString/-2075883882 var947)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1637-to-var3764 var348) var3716)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var348!1 var1637)
(declare-const var3716!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1211_id/-1631308860=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1637-to-var3764=([org.omg.CosNaming.NamingContextExtPackage.InvalidAddress], org.omg.CORBA.UserException)}
; {var1637=org.omg.CosNaming.NamingContextExtPackage.InvalidAddress, var348=r0, var3341=r4, var53=null_type, var2515=$r1, var1211=org.omg.CosNaming.NamingContextExtPackage.InvalidAddressHelper, var2016=$r2, var861=$r3, var2064=$r5, var947=$r6, var3716=$r7, var3764=org.omg.CORBA.UserException}
; {org.omg.CosNaming.NamingContextExtPackage.InvalidAddress=var1637, r0=var348, r4=var3341, null_type=var53, $r1=var2515, org.omg.CosNaming.NamingContextExtPackage.InvalidAddressHelper=var1211, $r2=var2016, $r3=var861, $r5=var2064, $r6=var947, $r7=var3716, org.omg.CORBA.UserException=var3764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CosNaming.NamingContextExtPackage.InvalidAddress;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.CosNaming.NamingContextExtPackage.InvalidAddressHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1