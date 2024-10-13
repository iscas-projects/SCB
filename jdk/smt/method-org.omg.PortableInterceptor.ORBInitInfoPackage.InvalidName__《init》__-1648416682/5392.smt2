(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1555 0)
(declare-sort var1559 0)
(declare-sort var3951 0)
(declare-sort var3150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3951_id/20501703 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var3150 String) void)
(declare-fun cast-from-var1555-to-var3150 (var1555) var3150)
(declare-const null-var1555 var1555)
(declare-const null-String String)
(declare-const var2575 var1555) ; Statement: r0 := @this: org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidName 
(assert (not (= var2575 null-var1555)))
(declare-const var1616 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1616 null-String)))
(define-const var1565 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1565)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1565!1 String)
(assert (= var1565!1 ""))
(define-const var2685 String var3951_id/20501703) ; Statement: $r2 = staticinvoke <org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidNameHelper: java.lang.String id()>() 
(assert true)
(define-const var2605 String (append/672562846 var1565!1 var2685)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1565!2 String)
(assert (= var1565!2 (str.++ var1565!1 var2685)))
(assert true)
(define-const var2847 String (append/672562846 var2605 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2605!1 String)
(assert (= var2605!1 (str.++ var2605 "  ")))
(assert true)
(define-const var980 String (append/672562846 var2847 var1616)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2847!1 String)
(assert (= var2847!1 (str.++ var2847 var1616)))
(assert true)
(define-const var230 String (toString/-2075883882 var980)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1555-to-var3150 var2575) var230)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var2575!1 var1555)
(declare-const var230!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3951_id/20501703=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1555-to-var3150=([org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidName], org.omg.CORBA.UserException)}
; {var1555=org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidName, var2575=r0, var1616=r4, var1559=null_type, var1565=$r1, var3951=org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidNameHelper, var2685=$r2, var2605=$r3, var2847=$r5, var980=$r6, var230=$r7, var3150=org.omg.CORBA.UserException}
; {org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidName=var1555, r0=var2575, r4=var1616, null_type=var1559, $r1=var1565, org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidNameHelper=var3951, $r2=var2685, $r3=var2605, $r5=var2847, $r6=var980, $r7=var230, org.omg.CORBA.UserException=var3150}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidName;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableInterceptor.ORBInitInfoPackage.InvalidNameHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1