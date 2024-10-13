(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var610 0)
(declare-sort var3641 0)
(declare-sort var1995 0)
(declare-sort var2432 0)
(declare-sort var557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2432_id/-438942764 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var557 String) void)
(declare-fun cast-from-var610-to-var557 (var610) var557)
(declare-fun forward/328786173 (var610) var1995)
(declare-const null-var610 var610)
(declare-const null-String String)
(declare-const null-var1995 var1995)
(declare-const var3722 var610) ; Statement: r0 := @this: org.omg.PortableInterceptor.ForwardRequest 
(assert (not (= var3722 null-var610)))
(declare-const var427 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var427 null-String)))
(declare-const var3775 var1995) ; Statement: r8 := @parameter1: org.omg.CORBA.Object 
(assert (not (= var3775 null-var1995)))
(define-const var2443 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2443)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2443!1 String)
(assert (= var2443!1 ""))
(define-const var592 String var2432_id/-438942764) ; Statement: $r2 = staticinvoke <org.omg.PortableInterceptor.ForwardRequestHelper: java.lang.String id()>() 
(assert true)
(define-const var3369 String (append/672562846 var2443!1 var592)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2443!2 String)
(assert (= var2443!2 (str.++ var2443!1 var592)))
(assert true)
(define-const var1080 String (append/672562846 var3369 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var3369!1 String)
(assert (= var3369!1 (str.++ var3369 "  ")))
(assert true)
(define-const var1094 String (append/672562846 var1080 var427)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1080!1 String)
(assert (= var1080!1 (str.++ var1080 var427)))
(assert true)
(define-const var641 String (toString/-2075883882 var1094)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var610-to-var557 var3722) var641)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var3722!1 var610)
(declare-const var641!1 String)
(declare-const var3722!2 var610)
(assert (not (= var3722!2 null-var610)))
(assert (= (forward/328786173 var3722!2) null-var1995)) ; Statement: r0.<org.omg.PortableInterceptor.ForwardRequest: org.omg.CORBA.Object forward> = null 
(declare-const var3722!3 var610)
(assert (not (= var3722!3 null-var610)))
(assert (= (forward/328786173 var3722!3) var3775)) ; Statement: r0.<org.omg.PortableInterceptor.ForwardRequest: org.omg.CORBA.Object forward> = r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2432_id/-438942764=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var610-to-var557=([org.omg.PortableInterceptor.ForwardRequest], org.omg.CORBA.UserException), forward/328786173=([org.omg.PortableInterceptor.ForwardRequest], org.omg.CORBA.Object)}
; {var610=org.omg.PortableInterceptor.ForwardRequest, var3722=r0, var427=r4, var3641=null_type, var1995=org.omg.CORBA.Object, var3775=r8, var2443=$r1, var2432=org.omg.PortableInterceptor.ForwardRequestHelper, var592=$r2, var3369=$r3, var1080=$r5, var1094=$r6, var641=$r7, var557=org.omg.CORBA.UserException}
; {org.omg.PortableInterceptor.ForwardRequest=var610, r0=var3722, r4=var427, null_type=var3641, org.omg.CORBA.Object=var1995, r8=var3775, $r1=var2443, org.omg.PortableInterceptor.ForwardRequestHelper=var2432, $r2=var592, $r3=var3369, $r5=var1080, $r6=var1094, $r7=var641, org.omg.CORBA.UserException=var557}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableInterceptor.ForwardRequest;	r4 := @parameter0: java.lang.String;	r8 := @parameter1: org.omg.CORBA.Object;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableInterceptor.ForwardRequestHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	r0.<org.omg.PortableInterceptor.ForwardRequest: org.omg.CORBA.Object forward> = null;	r0.<org.omg.PortableInterceptor.ForwardRequest: org.omg.CORBA.Object forward> = r8;	return
;block_num 1