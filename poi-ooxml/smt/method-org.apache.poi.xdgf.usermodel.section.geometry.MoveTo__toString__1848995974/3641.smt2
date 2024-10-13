(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1051 0)
(declare-sort var3380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getX/1007226288 (var1051) Float64)
(declare-fun append/-1031950772 (String var3380) String)
(declare-fun cast-from-Float64-to-var3380 (Float64) var3380)
(declare-fun getY/1007256079 (var1051) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1051 var1051)
(declare-const var756 var1051) ; Statement: r1 := @this: org.apache.poi.xdgf.usermodel.section.geometry.MoveTo 
(assert (not (= var756 null-var1051)))
(define-const var1219 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1219)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1219!1 String)
(assert (= var1219!1 ""))
(assert true)
(define-const var2757 String (append/672562846 var1219!1 "MoveTo: x=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoveTo: x=") 
(declare-const var1219!2 String)
(assert (= var1219!2 (str.++ var1219!1 "MoveTo: x=")))
(assert true)
(define-const var845 Float64 (getX/1007226288 var756)) ; Statement: $r2 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.MoveTo: java.lang.Double getX()>() 
(assert true)
(define-const var820 String (append/-1031950772 var2757 (cast-from-Float64-to-var3380 var845))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2757!1 String)
(assert (str.prefixof var2757 var2757!1))
(assert true)
(define-const var3516 String (append/672562846 var820 "; y=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; y=") 
(declare-const var820!1 String)
(assert (= var820!1 (str.++ var820 "; y=")))
(assert true)
(define-const var769 Float64 (getY/1007256079 var756)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.MoveTo: java.lang.Double getY()>() 
(assert true)
(define-const var3347 String (append/-1031950772 var3516 (cast-from-Float64-to-var3380 var769))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3516!1 String)
(assert (str.prefixof var3516 var3516!1))
(assert true)
(define-const var3138 String (toString/-2075883882 var3347)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getX/1007226288=([org.apache.poi.xdgf.usermodel.section.geometry.MoveTo], java.lang.Double), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Float64-to-var3380=([java.lang.Double], java.lang.Object), getY/1007256079=([org.apache.poi.xdgf.usermodel.section.geometry.MoveTo], java.lang.Double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1051=org.apache.poi.xdgf.usermodel.section.geometry.MoveTo, var756=r1, var1219=$r0, var2757=$r3, var845=$r2, var3380=java.lang.Object, var820=$r4, var3516=$r6, var769=$r5, var3347=$r7, var3138=$r8}
; {org.apache.poi.xdgf.usermodel.section.geometry.MoveTo=var1051, r1=var756, $r0=var1219, $r3=var2757, $r2=var845, java.lang.Object=var3380, $r4=var820, $r6=var3516, $r5=var769, $r7=var3347, $r8=var3138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xdgf.usermodel.section.geometry.MoveTo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoveTo: x=");	$r2 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.MoveTo: java.lang.Double getX()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; y=");	$r5 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.section.geometry.MoveTo: java.lang.Double getY()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1