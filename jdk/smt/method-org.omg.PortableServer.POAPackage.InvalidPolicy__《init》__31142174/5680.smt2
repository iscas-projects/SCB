(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3096 0)
(declare-sort var1947 0)
(declare-sort var1943 0)
(declare-sort var3277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1943_id/-367745409 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var3277 String) void)
(declare-fun cast-from-var3096-to-var3277 (var3096) var3277)
(declare-fun index/1133753824 (var3096) Int)
(declare-const null-var3096 var3096)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var308 var3096) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.InvalidPolicy 
(assert (not (= var308 null-var3096)))
(declare-const var1482 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1482 null-String)))
(declare-const var3055 Int) ; Statement: s0 := @parameter1: short 
(assert (not (= var3055 null-Int)))
(define-const var1425 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1425)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1425!1 String)
(assert (= var1425!1 ""))
(define-const var187 String var1943_id/-367745409) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.InvalidPolicyHelper: java.lang.String id()>() 
(assert true)
(define-const var960 String (append/672562846 var1425!1 var187)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1425!2 String)
(assert (= var1425!2 (str.++ var1425!1 var187)))
(assert true)
(define-const var3293 String (append/672562846 var960 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var960!1 String)
(assert (= var960!1 (str.++ var960 "  ")))
(assert true)
(define-const var2037 String (append/672562846 var3293 var1482)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3293!1 String)
(assert (= var3293!1 (str.++ var3293 var1482)))
(assert true)
(define-const var3445 String (toString/-2075883882 var2037)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var3096-to-var3277 var308) var3445)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var308!1 var3096)
(declare-const var3445!1 String)
(declare-const var308!2 var3096)
(assert (not (= var308!2 null-var3096)))
(assert (= (index/1133753824 var308!2) 0)) ; Statement: r0.<org.omg.PortableServer.POAPackage.InvalidPolicy: short index> = 0 
(declare-const var308!3 var3096)
(assert (not (= var308!3 null-var3096)))
(assert (= (index/1133753824 var308!3) var3055)) ; Statement: r0.<org.omg.PortableServer.POAPackage.InvalidPolicy: short index> = s0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1943_id/-367745409=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var3096-to-var3277=([org.omg.PortableServer.POAPackage.InvalidPolicy], org.omg.CORBA.UserException), index/1133753824=([org.omg.PortableServer.POAPackage.InvalidPolicy], short)}
; {var3096=org.omg.PortableServer.POAPackage.InvalidPolicy, var308=r0, var1482=r4, var1947=null_type, var3055=s0, var1425=$r1, var1943=org.omg.PortableServer.POAPackage.InvalidPolicyHelper, var187=$r2, var960=$r3, var3293=$r5, var2037=$r6, var3445=$r7, var3277=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.InvalidPolicy=var3096, r0=var308, r4=var1482, null_type=var1947, s0=var3055, $r1=var1425, org.omg.PortableServer.POAPackage.InvalidPolicyHelper=var1943, $r2=var187, $r3=var960, $r5=var3293, $r6=var2037, $r7=var3445, org.omg.CORBA.UserException=var3277}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.InvalidPolicy;	r4 := @parameter0: java.lang.String;	s0 := @parameter1: short;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.InvalidPolicyHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	r0.<org.omg.PortableServer.POAPackage.InvalidPolicy: short index> = 0;	r0.<org.omg.PortableServer.POAPackage.InvalidPolicy: short index> = s0;	return
;block_num 1