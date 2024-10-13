(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3579 0)
(declare-sort var50 0)
(declare-sort var1611 0)
(declare-sort var3503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceNumber/-1025789959 (var3579) var1611)
(declare-fun var3503-init () var3503)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var50) ClassObject)
(declare-fun cast-from-var1611-to-var50 (var1611) var50)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/7803314 (var3503 String) void)
(declare-const null-var3579 var3579)
(declare-const null-var50 var50)
(declare-const var1072 var3579) ; Statement: r0 := @this: freemarker.ext.beans.OverloadedNumberUtil$NumberWithFallbackType 
(assert (not (= var1072 null-var3579)))
(declare-const var2427 var50) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var2427 null-var50)))
(assert true)
(define-const var1940 var1611 (getSourceNumber/-1025789959 var1072)) ; Statement: r1 = virtualinvoke r0.<freemarker.ext.beans.OverloadedNumberUtil$NumberWithFallbackType: java.lang.Number getSourceNumber()>() 
(define-const var2478 Bool true) ; Statement: $z0 = r1 instanceof java.lang.Comparable 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.ClassCastException 
(assert (= (ite var2478 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2292 var3503 var3503-init) ; Statement: $r2 = new java.lang.ClassCastException 
(define-const var758 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var758)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var758!1 String)
(assert (= var758!1 ""))
(assert true)
(define-const var2171 ClassObject (getClass/1258963082 (cast-from-var1611-to-var50 var1940))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2281 String (getName/-1958580599 var2171)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3505 String (append/672562846 var758!1 var2281)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var758!2 String)
(assert (= var758!2 (str.++ var758!1 var2281)))
(assert true)
(define-const var2805 String (append/672562846 var3505 " is not Comparable.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not Comparable.") 
(declare-const var3505!1 String)
(assert (= var3505!1 (str.++ var3505 " is not Comparable.")))
(assert true)
(define-const var1760 String (toString/-2075883882 var2805)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/7803314 var2292 var1760)) ; Statement: specialinvoke $r2.<java.lang.ClassCastException: void <init>(java.lang.String)>($r8) 

(declare-const var2292!1 var3503)
(declare-const var1760!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceNumber/-1025789959=([freemarker.ext.beans.OverloadedNumberUtil$NumberWithFallbackType], java.lang.Number), var3503-init=([], java.lang.ClassCastException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1611-to-var50=([java.lang.Number], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var3579=freemarker.ext.beans.OverloadedNumberUtil$NumberWithFallbackType, var1072=r0, var50=java.lang.Object, var2427=r9, var1611=java.lang.Number, var1940=r1, var2478=$z0, var3503=java.lang.ClassCastException, var2292=$r2, var758=$r3, var2171=$r4, var2281=$r5, var3505=$r6, var2805=$r7, var1760=$r8}
; {freemarker.ext.beans.OverloadedNumberUtil$NumberWithFallbackType=var3579, r0=var1072, java.lang.Object=var50, r9=var2427, java.lang.Number=var1611, r1=var1940, $z0=var2478, java.lang.ClassCastException=var3503, $r2=var2292, $r3=var758, $r4=var2171, $r5=var2281, $r6=var3505, $r7=var2805, $r8=var1760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.OverloadedNumberUtil$NumberWithFallbackType;	r9 := @parameter0: java.lang.Object;	r1 = virtualinvoke r0.<freemarker.ext.beans.OverloadedNumberUtil$NumberWithFallbackType: java.lang.Number getSourceNumber()>();	$z0 = r1 instanceof java.lang.Comparable;	if $z0 == 0 goto $r2 = new java.lang.ClassCastException;	$r2 = new java.lang.ClassCastException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not Comparable.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.ClassCastException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2