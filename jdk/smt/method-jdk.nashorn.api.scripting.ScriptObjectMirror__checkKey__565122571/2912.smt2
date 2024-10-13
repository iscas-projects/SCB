(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var366 0)
(declare-sort var1353 0)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1353_requireNonNull/1378936425 (var366 String) var366)
(declare-fun var3930-init () var3930)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var366) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/7803314 (var3930 String) void)
(declare-const null-var366 var366)
(declare-const var3475 var366) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3475 null-var366)))
;(assert (var1353_requireNonNull/1378936425 var3475 "key can not be null")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "key can not be null") 

(declare-const var3475!1 var366)
(declare-const var92 String)
(define-const var264 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 != 0 goto $r1 = (java.lang.String) r0 
(assert (not (not (= (ite var264 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var177 var3930 var3930-init) ; Statement: $r3 = new java.lang.ClassCastException 
(define-const var3293 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3293)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3293!1 String)
(assert (= var3293!1 ""))
(assert true)
(define-const var1114 String (append/672562846 var3293!1 "key should be a String. It is ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key should be a String. It is ") 
(declare-const var3293!2 String)
(assert (= var3293!2 (str.++ var3293!1 "key should be a String. It is ")))
(assert true)
(define-const var3631 ClassObject (getClass/1258963082 var3475!1)) ; Statement: $r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3522 String (getName/-1958580599 var3631)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1638 String (append/672562846 var1114 var3522)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1114!1 String)
(assert (= var1114!1 (str.++ var1114 var3522)))
(assert true)
(define-const var106 String (append/672562846 var1638 " instead.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instead.") 
(declare-const var1638!1 String)
(assert (= var1638!1 (str.++ var1638 " instead.")))
(assert true)
(define-const var13 String (toString/-2075883882 var106)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/7803314 var177 var13)) ; Statement: specialinvoke $r3.<java.lang.ClassCastException: void <init>(java.lang.String)>($r10) 

(declare-const var177!1 var3930)
(declare-const var13!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1353_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), var3930-init=([], java.lang.ClassCastException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var366=java.lang.Object, var3475=r0, var1353=java.util.Objects, var92="key can not be null", var264=$z0, var3930=java.lang.ClassCastException, var177=$r3, var3293=$r4, var1114=$r7, var3631=$r5, var3522=$r6, var1638=$r8, var106=$r9, var13=$r10}
; {java.lang.Object=var366, r0=var3475, java.util.Objects=var1353, "key can not be null"=var92, $z0=var264, java.lang.ClassCastException=var3930, $r3=var177, $r4=var3293, $r7=var1114, $r5=var3631, $r6=var3522, $r8=var1638, $r9=var106, $r10=var13}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "key can not be null");	$z0 = r0 instanceof java.lang.String;	if $z0 != 0 goto $r1 = (java.lang.String) r0;	$r3 = new java.lang.ClassCastException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key should be a String. It is ");	$r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instead.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.ClassCastException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2