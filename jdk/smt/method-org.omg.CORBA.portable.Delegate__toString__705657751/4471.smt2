(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1007 0)
(declare-sort var3372 0)
(declare-sort var2824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2824) ClassObject)
(declare-fun cast-from-var3372-to-var2824 (var3372) var2824)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var2824) String)
(declare-fun cast-from-var1007-to-var2824 (var1007) var2824)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1007 var1007)
(declare-const null-var3372 var3372)
(declare-const var3582 var1007) ; Statement: r5 := @this: org.omg.CORBA.portable.Delegate 
(assert (not (= var3582 null-var1007)))
(declare-const var2360 var3372) ; Statement: r1 := @parameter0: org.omg.CORBA.Object 
(assert (not (= var2360 null-var3372)))
(define-const var2278 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2278)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2278!1 String)
(assert (= var2278!1 ""))
(assert true)
(define-const var63 ClassObject (getClass/1258963082 (cast-from-var3372-to-var2824 var2360))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3163 String (getName/-1958580599 var63)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2324 String (append/672562846 var2278!1 var3163)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2278!2 String)
(assert (= var2278!2 (str.++ var2278!1 var3163)))
(assert true)
(define-const var2251 String (append/672562846 var2324 ":")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2324!1 String)
(assert (= var2324!1 (str.++ var2324 ":")))
(assert true)
(define-const var162 String (toString/-522406933 (cast-from-var1007-to-var2824 var3582))) ; Statement: $r6 = virtualinvoke r5.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3546 String (append/672562846 var2251 var162)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2251!1 String)
(assert (= var2251!1 (str.++ var2251 var162)))
(assert true)
(define-const var1801 String (toString/-2075883882 var3546)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3372-to-var2824=([org.omg.CORBA.Object], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1007-to-var2824=([org.omg.CORBA.portable.Delegate], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1007=org.omg.CORBA.portable.Delegate, var3582=r5, var3372=org.omg.CORBA.Object, var2360=r1, var2278=$r0, var2824=java.lang.Object, var63=$r2, var3163=$r3, var2324=$r4, var2251=$r7, var162=$r6, var3546=$r8, var1801=$r9}
; {org.omg.CORBA.portable.Delegate=var1007, r5=var3582, org.omg.CORBA.Object=var3372, r1=var2360, $r0=var2278, java.lang.Object=var2824, $r2=var63, $r3=var3163, $r4=var2324, $r7=var2251, $r6=var162, $r8=var3546, $r9=var1801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.omg.CORBA.portable.Delegate;	r1 := @parameter0: org.omg.CORBA.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r6 = virtualinvoke r5.<java.lang.Object: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1