(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2657 0)
(declare-sort var1231 0)
(declare-sort var309 0)
(declare-sort var2482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var309_id/1760707110 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2482 String) void)
(declare-fun cast-from-var2657-to-var2482 (var2657) var2482)
(declare-const null-var2657 var2657)
(declare-const null-String String)
(declare-const var1551 var2657) ; Statement: r0 := @this: org.omg.DynamicAny.DynAnyPackage.InvalidValue 
(assert (not (= var1551 null-var2657)))
(declare-const var222 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var222 null-String)))
(define-const var847 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var847)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var847!1 String)
(assert (= var847!1 ""))
(define-const var1429 String var309_id/1760707110) ; Statement: $r2 = staticinvoke <org.omg.DynamicAny.DynAnyPackage.InvalidValueHelper: java.lang.String id()>() 
(assert true)
(define-const var1448 String (append/672562846 var847!1 var1429)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var847!2 String)
(assert (= var847!2 (str.++ var847!1 var1429)))
(assert true)
(define-const var3824 String (append/672562846 var1448 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1448!1 String)
(assert (= var1448!1 (str.++ var1448 "  ")))
(assert true)
(define-const var82 String (append/672562846 var3824 var222)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3824!1 String)
(assert (= var3824!1 (str.++ var3824 var222)))
(assert true)
(define-const var1477 String (toString/-2075883882 var82)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2657-to-var2482 var1551) var1477)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1551!1 var2657)
(declare-const var1477!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var309_id/1760707110=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2657-to-var2482=([org.omg.DynamicAny.DynAnyPackage.InvalidValue], org.omg.CORBA.UserException)}
; {var2657=org.omg.DynamicAny.DynAnyPackage.InvalidValue, var1551=r0, var222=r4, var1231=null_type, var847=$r1, var309=org.omg.DynamicAny.DynAnyPackage.InvalidValueHelper, var1429=$r2, var1448=$r3, var3824=$r5, var82=$r6, var1477=$r7, var2482=org.omg.CORBA.UserException}
; {org.omg.DynamicAny.DynAnyPackage.InvalidValue=var2657, r0=var1551, r4=var222, null_type=var1231, $r1=var847, org.omg.DynamicAny.DynAnyPackage.InvalidValueHelper=var309, $r2=var1429, $r3=var1448, $r5=var3824, $r6=var82, $r7=var1477, org.omg.CORBA.UserException=var2482}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.DynamicAny.DynAnyPackage.InvalidValue;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.DynamicAny.DynAnyPackage.InvalidValueHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1