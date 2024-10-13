(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2968 0)
(declare-sort var771 0)
(declare-sort var1570 0)
(declare-sort var1438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1570_id/1849950850 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var1438 String) void)
(declare-fun cast-from-var2968-to-var1438 (var2968) var1438)
(declare-const null-var2968 var2968)
(declare-const null-String String)
(declare-const var1345 var2968) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.WrongAdapter 
(assert (not (= var1345 null-var2968)))
(declare-const var2934 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2934 null-String)))
(define-const var1352 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1352)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1352!1 String)
(assert (= var1352!1 ""))
(define-const var3823 String var1570_id/1849950850) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.WrongAdapterHelper: java.lang.String id()>() 
(assert true)
(define-const var49 String (append/672562846 var1352!1 var3823)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1352!2 String)
(assert (= var1352!2 (str.++ var1352!1 var3823)))
(assert true)
(define-const var2693 String (append/672562846 var49 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var49!1 String)
(assert (= var49!1 (str.++ var49 "  ")))
(assert true)
(define-const var562 String (append/672562846 var2693 var2934)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2693!1 String)
(assert (= var2693!1 (str.++ var2693 var2934)))
(assert true)
(define-const var3372 String (toString/-2075883882 var562)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2968-to-var1438 var1345) var3372)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1345!1 var2968)
(declare-const var3372!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1570_id/1849950850=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2968-to-var1438=([org.omg.PortableServer.POAPackage.WrongAdapter], org.omg.CORBA.UserException)}
; {var2968=org.omg.PortableServer.POAPackage.WrongAdapter, var1345=r0, var2934=r4, var771=null_type, var1352=$r1, var1570=org.omg.PortableServer.POAPackage.WrongAdapterHelper, var3823=$r2, var49=$r3, var2693=$r5, var562=$r6, var3372=$r7, var1438=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.WrongAdapter=var2968, r0=var1345, r4=var2934, null_type=var771, $r1=var1352, org.omg.PortableServer.POAPackage.WrongAdapterHelper=var1570, $r2=var3823, $r3=var49, $r5=var2693, $r6=var562, $r7=var3372, org.omg.CORBA.UserException=var1438}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.WrongAdapter;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.WrongAdapterHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1