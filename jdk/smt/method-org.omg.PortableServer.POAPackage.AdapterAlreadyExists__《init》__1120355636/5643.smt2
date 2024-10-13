(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2690 0)
(declare-sort var3827 0)
(declare-sort var1913 0)
(declare-sort var2251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1913_id/1891537189 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2251 String) void)
(declare-fun cast-from-var2690-to-var2251 (var2690) var2251)
(declare-const null-var2690 var2690)
(declare-const null-String String)
(declare-const var1974 var2690) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.AdapterAlreadyExists 
(assert (not (= var1974 null-var2690)))
(declare-const var2202 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2202 null-String)))
(define-const var155 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var155)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var155!1 String)
(assert (= var155!1 ""))
(define-const var1634 String var1913_id/1891537189) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.AdapterAlreadyExistsHelper: java.lang.String id()>() 
(assert true)
(define-const var1122 String (append/672562846 var155!1 var1634)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var155!2 String)
(assert (= var155!2 (str.++ var155!1 var1634)))
(assert true)
(define-const var2450 String (append/672562846 var1122 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1122!1 String)
(assert (= var1122!1 (str.++ var1122 "  ")))
(assert true)
(define-const var784 String (append/672562846 var2450 var2202)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2450!1 String)
(assert (= var2450!1 (str.++ var2450 var2202)))
(assert true)
(define-const var2797 String (toString/-2075883882 var784)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2690-to-var2251 var1974) var2797)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1974!1 var2690)
(declare-const var2797!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1913_id/1891537189=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2690-to-var2251=([org.omg.PortableServer.POAPackage.AdapterAlreadyExists], org.omg.CORBA.UserException)}
; {var2690=org.omg.PortableServer.POAPackage.AdapterAlreadyExists, var1974=r0, var2202=r4, var3827=null_type, var155=$r1, var1913=org.omg.PortableServer.POAPackage.AdapterAlreadyExistsHelper, var1634=$r2, var1122=$r3, var2450=$r5, var784=$r6, var2797=$r7, var2251=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.AdapterAlreadyExists=var2690, r0=var1974, r4=var2202, null_type=var3827, $r1=var155, org.omg.PortableServer.POAPackage.AdapterAlreadyExistsHelper=var1913, $r2=var1634, $r3=var1122, $r5=var2450, $r6=var784, $r7=var2797, org.omg.CORBA.UserException=var2251}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.AdapterAlreadyExists;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.AdapterAlreadyExistsHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1