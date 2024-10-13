(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var511 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isValidDate/1137688615 (var511) Bool)
(declare-fun var511_toISOStringImpl/-1164318178 (var1857) String)
(declare-fun cast-from-var511-to-var1857 (var511) var1857)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var511 var511)
(declare-const var155 var511) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeDate 
(assert (not (= var155 null-var511)))
(assert true)
(define-const var3068 Bool (isValidDate/1137688615 var155)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>() 
 ; Statement: if $z0 == 0 goto $r6 = "Invalid Date" 
(assert (not (= (ite var3068 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1509 String (var511_toISOStringImpl/-1164318178 (cast-from-var511-to-var1857 var155))) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.objects.NativeDate: java.lang.String toISOStringImpl(java.lang.Object)>(r0) 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3200 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3200)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3200!1 String)
(assert (= var3200!1 ""))
(assert true)
(define-const var1462 String (append/672562846 var3200!1 "[Date ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Date ") 
(declare-const var3200!2 String)
(assert (= var3200!2 (str.++ var3200!1 "[Date ")))
(assert true)
(define-const var2881 String (append/672562846 var1462 var1509)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1462!1 String)
(assert (= var1462!1 (str.++ var1462 var1509)))
(assert true)
(define-const var3629 String (append/672562846 var2881 "]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2881!1 String)
(assert (= var2881!1 (str.++ var2881 "]")))
(assert true)
(define-const var3473 String (toString/-2075883882 var3629)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isValidDate/1137688615=([jdk.nashorn.internal.objects.NativeDate], boolean), var511_toISOStringImpl/-1164318178=([java.lang.Object], java.lang.String), cast-from-var511-to-var1857=([jdk.nashorn.internal.objects.NativeDate], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var511=jdk.nashorn.internal.objects.NativeDate, var155=r0, var3068=$z0, var1857=java.lang.Object, var1509=$r6, var3200=$r1, var1462=$r2, var2881=$r3, var3629=$r4, var3473=$r5}
; {jdk.nashorn.internal.objects.NativeDate=var511, r0=var155, $z0=var3068, java.lang.Object=var1857, $r6=var1509, $r1=var3200, $r2=var1462, $r3=var2881, $r4=var3629, $r5=var3473}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeDate;	$z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>();	if $z0 == 0 goto $r6 = "Invalid Date";	$r6 = staticinvoke <jdk.nashorn.internal.objects.NativeDate: java.lang.String toISOStringImpl(java.lang.Object)>(r0);	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Date ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3