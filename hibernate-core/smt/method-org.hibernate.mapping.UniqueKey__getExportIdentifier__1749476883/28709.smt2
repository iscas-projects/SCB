(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort var2864 0)
(declare-sort var1550 0)
(declare-sort var625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTable/2028539592 (var1550) var2864)
(declare-fun cast-from-var122-to-var1550 (var122) var1550)
(declare-fun getExportIdentifier/-2022488045 (var2864) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-2142322286 (var1550) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var625_qualify/-1563731603 (String String) String)
(declare-const null-var122 var122)
(declare-const var2763 var122) ; Statement: r0 := @this: org.hibernate.mapping.UniqueKey 
(assert (not (= var2763 null-var122)))
(assert true)
(define-const var2756 var2864 (getTable/2028539592 (cast-from-var122-to-var1550 var2763))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.UniqueKey: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var883 String (getExportIdentifier/-2022488045 var2756)) ; Statement: $r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>() 
(define-const var2857 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2857)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2857!1 String)
(assert (= var2857!1 ""))
(assert true)
(define-const var2701 String (append/672562846 var2857!1 "UK-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UK-") 
(declare-const var2857!2 String)
(assert (= var2857!2 (str.++ var2857!1 "UK-")))
(assert true)
(define-const var1910 String (getName/-2142322286 (cast-from-var122-to-var1550 var2763))) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>() 
(assert true)
(define-const var511 String (append/672562846 var2701 var1910)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 var1910)))
(assert true)
(define-const var2827 String (toString/-2075883882 var511)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1208 String (var625_qualify/-1563731603 var883 var2827)) ; Statement: $r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getTable/2028539592=([org.hibernate.mapping.Constraint], org.hibernate.mapping.Table), cast-from-var122-to-var1550=([org.hibernate.mapping.UniqueKey], org.hibernate.mapping.Constraint), getExportIdentifier/-2022488045=([org.hibernate.mapping.Table], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var625_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String)}
; {var122=org.hibernate.mapping.UniqueKey, var2763=r0, var2864=org.hibernate.mapping.Table, var1550=org.hibernate.mapping.Constraint, var2756=$r1, var883=$r7, var2857=$r2, var2701=$r4, var1910=$r3, var511=$r5, var2827=$r6, var625=org.hibernate.internal.util.StringHelper, var1208=$r8}
; {org.hibernate.mapping.UniqueKey=var122, r0=var2763, org.hibernate.mapping.Table=var2864, org.hibernate.mapping.Constraint=var1550, $r1=var2756, $r7=var883, $r2=var2857, $r4=var2701, $r3=var1910, $r5=var511, $r6=var2827, org.hibernate.internal.util.StringHelper=var625, $r8=var1208}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.UniqueKey;	$r1 = virtualinvoke r0.<org.hibernate.mapping.UniqueKey: org.hibernate.mapping.Table getTable()>();	$r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UK-");	$r3 = virtualinvoke r0.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6);	return $r8
;block_num 1