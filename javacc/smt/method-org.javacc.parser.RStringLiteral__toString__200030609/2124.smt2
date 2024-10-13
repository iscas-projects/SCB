(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3884 0)
(declare-sort var92 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1508376302 (var92) String)
(declare-fun cast-from-var3884-to-var92 (var3884) var92)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun image/-300401223 (var3884) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3884 var3884)
(declare-const var1463 var3884) ; Statement: r1 := @this: org.javacc.parser.RStringLiteral 
(assert (not (= var1463 null-var3884)))
(define-const var3890 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3890)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3890!1 String)
(assert (= var3890!1 ""))
(assert true)
(define-const var1930 String (toString/-1508376302 (cast-from-var3884-to-var92 var1463))) ; Statement: $r2 = specialinvoke r1.<org.javacc.parser.RegularExpression: java.lang.String toString()>() 
(assert true)
(define-const var2027 String (append/672562846 var3890!1 var1930)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3890!2 String)
(assert (= var3890!2 (str.++ var3890!1 var1930)))
(assert true)
(define-const var3014 String (append/672562846 var2027 " - ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - ") 
(declare-const var2027!1 String)
(assert (= var2027!1 (str.++ var2027 " - ")))
(define-const var1991 String (image/-300401223 var1463)) ; Statement: $r4 = r1.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(assert true)
(define-const var926 String (append/672562846 var3014 var1991)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3014!1 String)
(assert (= var3014!1 (str.++ var3014 var1991)))
(assert true)
(define-const var1915 String (toString/-2075883882 var926)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1508376302=([org.javacc.parser.Expansion], java.lang.String), cast-from-var3884-to-var92=([org.javacc.parser.RStringLiteral], org.javacc.parser.Expansion), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), image/-300401223=([org.javacc.parser.RStringLiteral], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3884=org.javacc.parser.RStringLiteral, var1463=r1, var3890=$r0, var92=org.javacc.parser.Expansion, var1930=$r2, var2027=$r3, var3014=$r5, var1991=$r4, var926=$r6, var1915=$r7}
; {org.javacc.parser.RStringLiteral=var3884, r1=var1463, $r0=var3890, org.javacc.parser.Expansion=var92, $r2=var1930, $r3=var2027, $r5=var3014, $r4=var1991, $r6=var926, $r7=var1915}
;seq <java.lang.StringBuilder: void <init>()>;	<org.javacc.parser.Expansion: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.javacc.parser.RStringLiteral;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.javacc.parser.RegularExpression: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - ");	$r4 = r1.<org.javacc.parser.RStringLiteral: java.lang.String image>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1