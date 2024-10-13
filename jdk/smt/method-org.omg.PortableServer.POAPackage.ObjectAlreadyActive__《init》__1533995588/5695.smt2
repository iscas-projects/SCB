(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2623 0)
(declare-sort var2275 0)
(declare-sort var3129 0)
(declare-sort var2294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3129_id/774650421 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2294 String) void)
(declare-fun cast-from-var2623-to-var2294 (var2623) var2294)
(declare-const null-var2623 var2623)
(declare-const null-String String)
(declare-const var2670 var2623) ; Statement: r0 := @this: org.omg.PortableServer.POAPackage.ObjectAlreadyActive 
(assert (not (= var2670 null-var2623)))
(declare-const var2021 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2021 null-String)))
(define-const var3349 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3349)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3349!1 String)
(assert (= var3349!1 ""))
(define-const var740 String var3129_id/774650421) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAPackage.ObjectAlreadyActiveHelper: java.lang.String id()>() 
(assert true)
(define-const var625 String (append/672562846 var3349!1 var740)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3349!2 String)
(assert (= var3349!2 (str.++ var3349!1 var740)))
(assert true)
(define-const var736 String (append/672562846 var625 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var625!1 String)
(assert (= var625!1 (str.++ var625 "  ")))
(assert true)
(define-const var174 String (append/672562846 var736 var2021)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var736!1 String)
(assert (= var736!1 (str.++ var736 var2021)))
(assert true)
(define-const var2817 String (toString/-2075883882 var174)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2623-to-var2294 var2670) var2817)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var2670!1 var2623)
(declare-const var2817!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3129_id/774650421=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2623-to-var2294=([org.omg.PortableServer.POAPackage.ObjectAlreadyActive], org.omg.CORBA.UserException)}
; {var2623=org.omg.PortableServer.POAPackage.ObjectAlreadyActive, var2670=r0, var2021=r4, var2275=null_type, var3349=$r1, var3129=org.omg.PortableServer.POAPackage.ObjectAlreadyActiveHelper, var740=$r2, var625=$r3, var736=$r5, var174=$r6, var2817=$r7, var2294=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAPackage.ObjectAlreadyActive=var2623, r0=var2670, r4=var2021, null_type=var2275, $r1=var3349, org.omg.PortableServer.POAPackage.ObjectAlreadyActiveHelper=var3129, $r2=var740, $r3=var625, $r5=var736, $r6=var174, $r7=var2817, org.omg.CORBA.UserException=var2294}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAPackage.ObjectAlreadyActive;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAPackage.ObjectAlreadyActiveHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1