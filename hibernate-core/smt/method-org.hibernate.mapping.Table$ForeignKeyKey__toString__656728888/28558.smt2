(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3436 0)
(declare-sort var2423 0)
(declare-sort var1294 0)
(declare-sort var2864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columns/295047832 (var3436) (Array Int var2423))
(declare-fun var1294_toString/-575966009 ((Array Int var2864)) String)
(declare-fun cast-from-__Array__Int__var2423__-to-__Array__Int__var2864__ ((Array Int var2423)) (Array Int var2864))
(declare-fun referencedClassName/295047832 (var3436) String)
(declare-fun referencedColumns/295047832 (var3436) (Array Int var2423))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3436 var3436)
(declare-const var602 var3436) ; Statement: r1 := @this: org.hibernate.mapping.Table$ForeignKeyKey 
(assert (not (= var602 null-var3436)))
(define-const var224 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var224)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var224!1 String)
(assert (= var224!1 ""))
(assert true)
(define-const var3901 String (append/672562846 var224!1 "ForeignKeyKey{columns=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ForeignKeyKey{columns=") 
(declare-const var224!2 String)
(assert (= var224!2 (str.++ var224!1 "ForeignKeyKey{columns=")))
(define-const var2615 (Array Int var2423) (columns/295047832 var602)) ; Statement: $r2 = r1.<org.hibernate.mapping.Table$ForeignKeyKey: org.hibernate.mapping.Column[] columns> 
(define-const var594 String (var1294_toString/-575966009 (cast-from-__Array__Int__var2423__-to-__Array__Int__var2864__ var2615))) ; Statement: $r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var2367 String (append/672562846 var3901 var594)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3901!1 String)
(assert (= var3901!1 (str.++ var3901 var594)))
(assert true)
(define-const var2894 String (append/672562846 var2367 ", referencedClassName=\u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", referencedClassName=\'") 
(declare-const var2367!1 String)
(assert (= var2367!1 (str.++ var2367 ", referencedClassName=\u0027")))
(define-const var3043 String (referencedClassName/295047832 var602)) ; Statement: $r6 = r1.<org.hibernate.mapping.Table$ForeignKeyKey: java.lang.String referencedClassName> 
(assert true)
(define-const var3662 String (append/672562846 var2894 var3043)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2894!1 String)
(assert (= var2894!1 (str.++ var2894 var3043)))
(assert true)
(define-const var113 String (append/672562846 var3662 "\u0027, referencedColumns=")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', referencedColumns=") 
(declare-const var3662!1 String)
(assert (= var3662!1 (str.++ var3662 "\u0027, referencedColumns=")))
(define-const var691 (Array Int var2423) (referencedColumns/295047832 var602)) ; Statement: $r9 = r1.<org.hibernate.mapping.Table$ForeignKeyKey: org.hibernate.mapping.Column[] referencedColumns> 
(define-const var2837 String (var1294_toString/-575966009 (cast-from-__Array__Int__var2423__-to-__Array__Int__var2864__ var691))) ; Statement: $r10 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r9) 
(assert true)
(define-const var2583 String (append/672562846 var113 var2837)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var113!1 String)
(assert (= var113!1 (str.++ var113 var2837)))
(assert true)
(define-const var3103 String (append/-1166366385 var2583 125)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2583!1 String)
(assert (str.prefixof var2583 var2583!1))
(assert true)
(define-const var955 String (toString/-2075883882 var3103)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columns/295047832=([org.hibernate.mapping.Table$ForeignKeyKey], org.hibernate.mapping.Column[]), var1294_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var2423__-to-__Array__Int__var2864__=([org.hibernate.mapping.Column[]], java.lang.Object[]), referencedClassName/295047832=([org.hibernate.mapping.Table$ForeignKeyKey], java.lang.String), referencedColumns/295047832=([org.hibernate.mapping.Table$ForeignKeyKey], org.hibernate.mapping.Column[]), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3436=org.hibernate.mapping.Table$ForeignKeyKey, var602=r1, var224=$r0, var3901=$r4, var2423=org.hibernate.mapping.Column, var2615=$r2, var1294=java.util.Arrays, var2864=java.lang.Object, var594=$r3, var2367=$r5, var2894=$r7, var3043=$r6, var3662=$r8, var113=$r11, var691=$r9, var2837=$r10, var2583=$r12, var3103=$r13, var955=$r14}
; {org.hibernate.mapping.Table$ForeignKeyKey=var3436, r1=var602, $r0=var224, $r4=var3901, org.hibernate.mapping.Column=var2423, $r2=var2615, java.util.Arrays=var1294, java.lang.Object=var2864, $r3=var594, $r5=var2367, $r7=var2894, $r6=var3043, $r8=var3662, $r11=var113, $r9=var691, $r10=var2837, $r12=var2583, $r13=var3103, $r14=var955}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Table$ForeignKeyKey;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ForeignKeyKey{columns=");	$r2 = r1.<org.hibernate.mapping.Table$ForeignKeyKey: org.hibernate.mapping.Column[] columns>;	$r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", referencedClassName=\'");	$r6 = r1.<org.hibernate.mapping.Table$ForeignKeyKey: java.lang.String referencedClassName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', referencedColumns=");	$r9 = r1.<org.hibernate.mapping.Table$ForeignKeyKey: org.hibernate.mapping.Column[] referencedColumns>;	$r10 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1