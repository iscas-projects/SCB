(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2149 0)
(declare-sort var2706 0)
(declare-sort var121 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var121_id/-1325126659 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var3108 String) void)
(declare-fun cast-from-var2149-to-var3108 (var2149) var3108)
(declare-const null-var2149 var2149)
(declare-const null-String String)
(declare-const var1236 var2149) ; Statement: r0 := @this: org.omg.PortableServer.POAManagerPackage.AdapterInactive 
(assert (not (= var1236 null-var2149)))
(declare-const var785 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var785 null-String)))
(define-const var2202 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2202)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2202!1 String)
(assert (= var2202!1 ""))
(define-const var611 String var121_id/-1325126659) ; Statement: $r2 = staticinvoke <org.omg.PortableServer.POAManagerPackage.AdapterInactiveHelper: java.lang.String id()>() 
(assert true)
(define-const var348 String (append/672562846 var2202!1 var611)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2202!2 String)
(assert (= var2202!2 (str.++ var2202!1 var611)))
(assert true)
(define-const var3906 String (append/672562846 var348 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var348!1 String)
(assert (= var348!1 (str.++ var348 "  ")))
(assert true)
(define-const var2243 String (append/672562846 var3906 var785)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3906!1 String)
(assert (= var3906!1 (str.++ var3906 var785)))
(assert true)
(define-const var2862 String (toString/-2075883882 var2243)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2149-to-var3108 var1236) var2862)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1236!1 var2149)
(declare-const var2862!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var121_id/-1325126659=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2149-to-var3108=([org.omg.PortableServer.POAManagerPackage.AdapterInactive], org.omg.CORBA.UserException)}
; {var2149=org.omg.PortableServer.POAManagerPackage.AdapterInactive, var1236=r0, var785=r4, var2706=null_type, var2202=$r1, var121=org.omg.PortableServer.POAManagerPackage.AdapterInactiveHelper, var611=$r2, var348=$r3, var3906=$r5, var2243=$r6, var2862=$r7, var3108=org.omg.CORBA.UserException}
; {org.omg.PortableServer.POAManagerPackage.AdapterInactive=var2149, r0=var1236, r4=var785, null_type=var2706, $r1=var2202, org.omg.PortableServer.POAManagerPackage.AdapterInactiveHelper=var121, $r2=var611, $r3=var348, $r5=var3906, $r6=var2243, $r7=var2862, org.omg.CORBA.UserException=var3108}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableServer.POAManagerPackage.AdapterInactive;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableServer.POAManagerPackage.AdapterInactiveHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1