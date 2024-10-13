(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2957 0)
(declare-sort var1483 0)
(declare-sort var1387 0)
(declare-sort var1480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1387_id/-1128405228 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var1480 String) void)
(declare-fun cast-from-var2957-to-var1480 (var2957) var1480)
(declare-const null-var2957 var2957)
(declare-const null-String String)
(declare-const var149 var2957) ; Statement: r0 := @this: org.omg.DynamicAny.DynAnyPackage.TypeMismatch 
(assert (not (= var149 null-var2957)))
(declare-const var1085 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1085 null-String)))
(define-const var1824 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1824)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1824!1 String)
(assert (= var1824!1 ""))
(define-const var3228 String var1387_id/-1128405228) ; Statement: $r2 = staticinvoke <org.omg.DynamicAny.DynAnyPackage.TypeMismatchHelper: java.lang.String id()>() 
(assert true)
(define-const var1126 String (append/672562846 var1824!1 var3228)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1824!2 String)
(assert (= var1824!2 (str.++ var1824!1 var3228)))
(assert true)
(define-const var1438 String (append/672562846 var1126 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1126!1 String)
(assert (= var1126!1 (str.++ var1126 "  ")))
(assert true)
(define-const var2105 String (append/672562846 var1438 var1085)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1438!1 String)
(assert (= var1438!1 (str.++ var1438 var1085)))
(assert true)
(define-const var1187 String (toString/-2075883882 var2105)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2957-to-var1480 var149) var1187)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var149!1 var2957)
(declare-const var1187!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1387_id/-1128405228=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2957-to-var1480=([org.omg.DynamicAny.DynAnyPackage.TypeMismatch], org.omg.CORBA.UserException)}
; {var2957=org.omg.DynamicAny.DynAnyPackage.TypeMismatch, var149=r0, var1085=r4, var1483=null_type, var1824=$r1, var1387=org.omg.DynamicAny.DynAnyPackage.TypeMismatchHelper, var3228=$r2, var1126=$r3, var1438=$r5, var2105=$r6, var1187=$r7, var1480=org.omg.CORBA.UserException}
; {org.omg.DynamicAny.DynAnyPackage.TypeMismatch=var2957, r0=var149, r4=var1085, null_type=var1483, $r1=var1824, org.omg.DynamicAny.DynAnyPackage.TypeMismatchHelper=var1387, $r2=var3228, $r3=var1126, $r5=var1438, $r6=var2105, $r7=var1187, org.omg.CORBA.UserException=var1480}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.DynamicAny.DynAnyPackage.TypeMismatch;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.DynamicAny.DynAnyPackage.TypeMismatchHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1