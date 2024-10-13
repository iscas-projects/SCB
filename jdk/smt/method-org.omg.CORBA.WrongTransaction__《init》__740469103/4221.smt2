(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var975 0)
(declare-sort var248 0)
(declare-sort var2089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var248_id/411813920 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2089 String) void)
(declare-fun cast-from-var1435-to-var2089 (var1435) var2089)
(declare-const null-var1435 var1435)
(declare-const null-String String)
(declare-const var105 var1435) ; Statement: r0 := @this: org.omg.CORBA.WrongTransaction 
(assert (not (= var105 null-var1435)))
(declare-const var1411 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1411 null-String)))
(define-const var1247 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1247)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1247!1 String)
(assert (= var1247!1 ""))
(define-const var3948 String var248_id/411813920) ; Statement: $r2 = staticinvoke <org.omg.CORBA.WrongTransactionHelper: java.lang.String id()>() 
(assert true)
(define-const var269 String (append/672562846 var1247!1 var3948)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1247!2 String)
(assert (= var1247!2 (str.++ var1247!1 var3948)))
(assert true)
(define-const var3105 String (append/672562846 var269 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var269!1 String)
(assert (= var269!1 (str.++ var269 "  ")))
(assert true)
(define-const var1308 String (append/672562846 var3105 var1411)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 var1411)))
(assert true)
(define-const var3068 String (toString/-2075883882 var1308)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1435-to-var2089 var105) var3068)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var105!1 var1435)
(declare-const var3068!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var248_id/411813920=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1435-to-var2089=([org.omg.CORBA.WrongTransaction], org.omg.CORBA.UserException)}
; {var1435=org.omg.CORBA.WrongTransaction, var105=r0, var1411=r4, var975=null_type, var1247=$r1, var248=org.omg.CORBA.WrongTransactionHelper, var3948=$r2, var269=$r3, var3105=$r5, var1308=$r6, var3068=$r7, var2089=org.omg.CORBA.UserException}
; {org.omg.CORBA.WrongTransaction=var1435, r0=var105, r4=var1411, null_type=var975, $r1=var1247, org.omg.CORBA.WrongTransactionHelper=var248, $r2=var3948, $r3=var269, $r5=var3105, $r6=var1308, $r7=var3068, org.omg.CORBA.UserException=var2089}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CORBA.WrongTransaction;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.CORBA.WrongTransactionHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1