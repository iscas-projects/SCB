(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun clazz/488821703 (var3767) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3767 var3767)
(declare-const var2712 var3767) ; Statement: r1 := @this: jdk.internal.dynalink.beans.StaticClass 
(assert (not (= var2712 null-var3767)))
(define-const var2630 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2630)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2630!1 String)
(assert (= var2630!1 ""))
(assert true)
(define-const var237 String (append/672562846 var2630!1 "JavaClassStatics[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JavaClassStatics[") 
(declare-const var2630!2 String)
(assert (= var2630!2 (str.++ var2630!1 "JavaClassStatics[")))
(define-const var3713 ClassObject (clazz/488821703 var2712)) ; Statement: $r2 = r1.<jdk.internal.dynalink.beans.StaticClass: java.lang.Class clazz> 
(assert true)
(define-const var1416 String (getName/-1958580599 var3713)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var547 String (append/672562846 var237 var1416)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var237!1 String)
(assert (= var237!1 (str.++ var237 var1416)))
(assert true)
(define-const var49 String (append/672562846 var547 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var547!1 String)
(assert (= var547!1 (str.++ var547 "]")))
(assert true)
(define-const var2780 String (toString/-2075883882 var49)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), clazz/488821703=([jdk.internal.dynalink.beans.StaticClass], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3767=jdk.internal.dynalink.beans.StaticClass, var2712=r1, var2630=$r0, var237=$r4, var3713=$r2, var1416=$r3, var547=$r5, var49=$r6, var2780=$r7}
; {jdk.internal.dynalink.beans.StaticClass=var3767, r1=var2712, $r0=var2630, $r4=var237, $r2=var3713, $r3=var1416, $r5=var547, $r6=var49, $r7=var2780}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.dynalink.beans.StaticClass;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JavaClassStatics[");	$r2 = r1.<jdk.internal.dynalink.beans.StaticClass: java.lang.Class clazz>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1