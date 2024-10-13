(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3907 0)
(declare-sort var3159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getX/822001491 (var3907) Float64)
(declare-fun append/-1031950772 (String var3159) String)
(declare-fun cast-from-Float64-to-var3159 (Float64) var3159)
(declare-fun getY/822031282 (var3907) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3907 var3907)
(declare-const var3527 var3907) ; Statement: r1 := @this: org.apache.poi.xdgf.usermodel.section.geometry.LineTo 
(assert (not (= var3527 null-var3907)))
(define-const var2537 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2537)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2537!1 String)
(assert (= var2537!1 ""))
(assert true)
(define-const var3251 String (append/672562846 var2537!1 "LineTo: x=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LineTo: x=") 
(declare-const var2537!2 String)
(assert (= var2537!2 (str.++ var2537!1 "LineTo: x=")))
(assert true)
(define-const var3722 Float64 (getX/822001491 var3527)) ; Statement: $r2 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.LineTo: java.lang.Double getX()>() 
(assert true)
(define-const var1917 String (append/-1031950772 var3251 (cast-from-Float64-to-var3159 var3722))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3251!1 String)
(assert (str.prefixof var3251 var3251!1))
(assert true)
(define-const var1527 String (append/672562846 var1917 "; y=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; y=") 
(declare-const var1917!1 String)
(assert (= var1917!1 (str.++ var1917 "; y=")))
(assert true)
(define-const var2279 Float64 (getY/822031282 var3527)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.LineTo: java.lang.Double getY()>() 
(assert true)
(define-const var1782 String (append/-1031950772 var1527 (cast-from-Float64-to-var3159 var2279))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1527!1 String)
(assert (str.prefixof var1527 var1527!1))
(assert true)
(define-const var164 String (toString/-2075883882 var1782)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getX/822001491=([org.apache.poi.xdgf.usermodel.section.geometry.LineTo], java.lang.Double), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Float64-to-var3159=([java.lang.Double], java.lang.Object), getY/822031282=([org.apache.poi.xdgf.usermodel.section.geometry.LineTo], java.lang.Double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3907=org.apache.poi.xdgf.usermodel.section.geometry.LineTo, var3527=r1, var2537=$r0, var3251=$r3, var3722=$r2, var3159=java.lang.Object, var1917=$r4, var1527=$r6, var2279=$r5, var1782=$r7, var164=$r8}
; {org.apache.poi.xdgf.usermodel.section.geometry.LineTo=var3907, r1=var3527, $r0=var2537, $r3=var3251, $r2=var3722, java.lang.Object=var3159, $r4=var1917, $r6=var1527, $r5=var2279, $r7=var1782, $r8=var164}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xdgf.usermodel.section.geometry.LineTo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LineTo: x=");	$r2 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.LineTo: java.lang.Double getX()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; y=");	$r5 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.LineTo: java.lang.Double getY()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1