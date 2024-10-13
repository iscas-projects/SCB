(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2117 0)
(declare-sort var692 0)
(declare-sort var2023 0)
(declare-sort var818 0)
(declare-sort var2577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var818_id/1072448106 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2577 String) void)
(declare-fun cast-from-var2117-to-var2577 (var2117) var2577)
(declare-fun forward_reference/268216843 (var2117) var2023)
(declare-const null-var2117 var2117)
(declare-const null-String String)
(declare-const null-var2023 var2023)
(declare-const var1252 var2117) ; Statement: r0 := @this: org.omg.PortableServer.ForwardRequest 
(assert (not (= var1252 null-var2117)))
(declare-const var2171 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2171 null-String)))
(declare-const var3891 var2023) ; Statement: r8 := @parameter1: org.omg.CORBA.Object 
(assert (not (= var3891 null-var2023)))
(define-const var2180 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2180)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2180!1 String)
(assert (= var2180!1 ""))
(define-const var2265 String var818_id/1072448106) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.ForwardRequestHelper: java.lang.String id()>() 
(assert true)
(define-const var1968 String (append/672562846 var2180!1 var2265)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2180!2 String)
(assert (= var2180!2 (str.++ var2180!1 var2265)))
(assert true)
(define-const var1054 String (append/672562846 var1968 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1968!1 String)
(assert (= var1968!1 (str.++ var1968 "  ")))
(assert true)
(define-const var1890 String (append/672562846 var1054 var2171)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1054!1 String)
(assert (= var1054!1 (str.++ var1054 var2171)))
(assert true)
(define-const var3124 String (toString/-2075883882 var1890)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2117-to-var2577 var1252) var3124)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1252!1 var2117)
(declare-const var3124!1 String)
(declare-const var1252!2 var2117)
(assert (not (= var1252!2 null-var2117)))
(assert (= (forward_reference/268216843 var1252!2) null-var2023)) ; Statement: r0.<org.omg.PortableServer.ForwardRequest: org.omg.CORBA.Object forward_reference> = null 
(declare-const var1252!3 var2117)
(assert (not (= var1252!3 null-var2117)))
(assert (= (forward_reference/268216843 var1252!3) var3891)) ; Statement: r0.<org.omg.PortableServer.ForwardRequest: org.omg.CORBA.Object forward_reference> = r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var818_id/1072448106=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2117-to-var2577=([org.omg.PortableServer.ForwardRequest], org.omg.CORBA.UserException), forward_reference/268216843=([org.omg.PortableServer.ForwardRequest], org.omg.CORBA.Object)}
; {var2117=org.omg.PortableServer.ForwardRequest, var1252=r0, var2171=r4, var692=null_type, var2023=org.omg.CORBA.Object, var3891=r8, var2180=$r1, var818=org.omg.PortableServer.ForwardRequestHelper, var2265=$r2, var1968=$r3, var1054=$r5, var1890=$r6, var3124=$r7, var2577=org.omg.CORBA.UserException}
; {org.omg.PortableServer.ForwardRequest=var2117, r0=var1252, r4=var2171, null_type=var692, org.omg.CORBA.Object=var2023, r8=var3891, $r1=var2180, org.omg.PortableServer.ForwardRequestHelper=var818, $r2=var2265, $r3=var1968, $r5=var1054, $r6=var1890, $r7=var3124, org.omg.CORBA.UserException=var2577}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.ForwardRequest;	r4 := @parameter0: java.lang.String;	r8 := @parameter1: org.omg.CORBA.Object;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.ForwardRequestHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	r0.<org.omg.PortableServer.ForwardRequest: org.omg.CORBA.Object forward_reference> = null;	r0.<org.omg.PortableServer.ForwardRequest: org.omg.CORBA.Object forward_reference> = r8;	return
;block_num 1