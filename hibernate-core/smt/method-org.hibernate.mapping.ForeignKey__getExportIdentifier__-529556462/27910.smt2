(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var71 0)
(declare-sort var2171 0)
(declare-sort var345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTable/2028539592 (var2171) var71)
(declare-fun cast-from-var851-to-var2171 (var851) var2171)
(declare-fun getExportIdentifier/-2022488045 (var71) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-2142322286 (var2171) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var345_qualify/-1563731603 (String String) String)
(declare-const null-var851 var851)
(declare-const var2678 var851) ; Statement: r0 := @this: org.hibernate.mapping.ForeignKey 
(assert (not (= var2678 null-var851)))
(assert true)
(define-const var466 var71 (getTable/2028539592 (cast-from-var851-to-var2171 var2678))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.ForeignKey: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var2257 String (getExportIdentifier/-2022488045 var466)) ; Statement: $r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>() 
(define-const var1452 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1452)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1452!1 String)
(assert (= var1452!1 ""))
(assert true)
(define-const var2316 String (append/672562846 var1452!1 "FK-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FK-") 
(declare-const var1452!2 String)
(assert (= var1452!2 (str.++ var1452!1 "FK-")))
(assert true)
(define-const var2050 String (getName/-2142322286 (cast-from-var851-to-var2171 var2678))) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>() 
(assert true)
(define-const var1792 String (append/672562846 var2316 var2050)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2316!1 String)
(assert (= var2316!1 (str.++ var2316 var2050)))
(assert true)
(define-const var3899 String (toString/-2075883882 var1792)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1255 String (var345_qualify/-1563731603 var2257 var3899)) ; Statement: $r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getTable/2028539592=([org.hibernate.mapping.Constraint], org.hibernate.mapping.Table), cast-from-var851-to-var2171=([org.hibernate.mapping.ForeignKey], org.hibernate.mapping.Constraint), getExportIdentifier/-2022488045=([org.hibernate.mapping.Table], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var345_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String)}
; {var851=org.hibernate.mapping.ForeignKey, var2678=r0, var71=org.hibernate.mapping.Table, var2171=org.hibernate.mapping.Constraint, var466=$r1, var2257=$r7, var1452=$r2, var2316=$r4, var2050=$r3, var1792=$r5, var3899=$r6, var345=org.hibernate.internal.util.StringHelper, var1255=$r8}
; {org.hibernate.mapping.ForeignKey=var851, r0=var2678, org.hibernate.mapping.Table=var71, org.hibernate.mapping.Constraint=var2171, $r1=var466, $r7=var2257, $r2=var1452, $r4=var2316, $r3=var2050, $r5=var1792, $r6=var3899, org.hibernate.internal.util.StringHelper=var345, $r8=var1255}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.ForeignKey;	$r1 = virtualinvoke r0.<org.hibernate.mapping.ForeignKey: org.hibernate.mapping.Table getTable()>();	$r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FK-");	$r3 = virtualinvoke r0.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6);	return $r8
;block_num 1