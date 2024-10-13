(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3142 0)
(declare-sort var994 0)
(declare-sort var3965 0)
(declare-sort var2747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3965_id/-349963787 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2747 String) void)
(declare-fun cast-from-var3142-to-var2747 (var3142) var2747)
(declare-const null-var3142 var3142)
(declare-const null-String String)
(declare-const var3729 var3142) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.WrongPolicy 
(assert (not (= var3729 null-var3142)))
(declare-const var443 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var443 null-String)))
(define-const var3447 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3447)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3447!1 String)
(assert (= var3447!1 ""))
(define-const var1792 String var3965_id/-349963787) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.WrongPolicyHelper: java.lang.String id()>() 
(assert true)
(define-const var1065 String (append/672562846 var3447!1 var1792)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3447!2 String)
(assert (= var3447!2 (str.++ var3447!1 var1792)))
(assert true)
(define-const var3371 String (append/672562846 var1065 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1065!1 String)
(assert (= var1065!1 (str.++ var1065 "  ")))
(assert true)
(define-const var149 String (append/672562846 var3371 var443)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3371!1 String)
(assert (= var3371!1 (str.++ var3371 var443)))
(assert true)
(define-const var1995 String (toString/-2075883882 var149)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var3142-to-var2747 var3729) var1995)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var3729!1 var3142)
(declare-const var1995!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3965_id/-349963787=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var3142-to-var2747=([org.omg.PortableServer.POAPackage.WrongPolicy], org.omg.CORBA.UserException)}
; {var3142=org.omg.PortableServer.POAPackage.WrongPolicy, var3729=r0, var443=r4, var994=null_type, var3447=$r1, var3965=org.omg.PortableServer.POAPackage.WrongPolicyHelper, var1792=$r2, var1065=$r3, var3371=$r5, var149=$r6, var1995=$r7, var2747=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.WrongPolicy=var3142, r0=var3729, r4=var443, null_type=var994, $r1=var3447, org.omg.PortableServer.POAPackage.WrongPolicyHelper=var3965, $r2=var1792, $r3=var1065, $r5=var3371, $r6=var149, $r7=var1995, org.omg.CORBA.UserException=var2747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.WrongPolicy;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.WrongPolicyHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1