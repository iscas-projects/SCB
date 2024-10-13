(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var1310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1310-init () var1310)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2556) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1310 var2556) void)
(declare-fun cast-from-String-to-var2556 (String) var2556)
(declare-const null-var2556 var2556)
(declare-const var1805 var2556) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1805 null-var2556)))
(define-const var2083 var1310 var1310-init) ; Statement: $r0 = new java.lang.AssertionError 
(define-const var3011 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3011)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3011!1 String)
(assert (= var3011!1 ""))
(assert true)
(define-const var275 String (append/672562846 var3011!1 "Unexpected type")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected type") 
(declare-const var3011!2 String)
(assert (= var3011!2 (str.++ var3011!1 "Unexpected type")))
(assert true)
(define-const var1008 ClassObject (getClass/1258963082 var1805)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2970 String (getName/-1958580599 var1008)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3775 String (append/672562846 var275 var2970)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var275!1 String)
(assert (= var275!1 (str.++ var275 var2970)))
(assert true)
(define-const var3343 String (append/672562846 var3775 ". Guards should have prevented this")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Guards should have prevented this") 
(declare-const var3775!1 String)
(assert (= var3775!1 (str.++ var3775 ". Guards should have prevented this")))
(assert true)
(define-const var555 String (toString/-2075883882 var3343)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2083 (cast-from-String-to-var2556 var555))) ; Statement: specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8) 

(declare-const var2083!1 var1310)
(declare-const var555!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1310-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2556=([java.lang.String], java.lang.Object)}
; {var2556=java.lang.Object, var1805=r2, var1310=java.lang.AssertionError, var2083=$r0, var3011=$r1, var275=$r5, var1008=$r3, var2970=$r4, var3775=$r6, var3343=$r7, var555=$r8}
; {java.lang.Object=var2556, r2=var1805, java.lang.AssertionError=var1310, $r0=var2083, $r1=var3011, $r5=var275, $r3=var1008, $r4=var2970, $r6=var3775, $r7=var3343, $r8=var555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	$r0 = new java.lang.AssertionError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected type");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Guards should have prevented this");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8);	return $r0
;block_num 1