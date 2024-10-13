(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2617 0)
(declare-sort var1365 0)
(declare-sort var1739 0)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTable/2028539592 (var1739) var1365)
(declare-fun cast-from-var2617-to-var1739 (var2617) var1739)
(declare-fun getExportIdentifier/-2022488045 (var1365) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-2142322286 (var1739) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2218_qualify/-1563731603 (String String) String)
(declare-const null-var2617 var2617)
(declare-const var235 var2617) ; Statement: r0 := @this: org.hibernate.mapping.PrimaryKey 
(assert (not (= var235 null-var2617)))
(assert true)
(define-const var3658 var1365 (getTable/2028539592 (cast-from-var2617-to-var1739 var235))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.PrimaryKey: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var3333 String (getExportIdentifier/-2022488045 var3658)) ; Statement: $r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>() 
(define-const var1135 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1135)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1135!1 String)
(assert (= var1135!1 ""))
(assert true)
(define-const var880 String (append/672562846 var1135!1 "PK-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PK-") 
(declare-const var1135!2 String)
(assert (= var1135!2 (str.++ var1135!1 "PK-")))
(assert true)
(define-const var513 String (getName/-2142322286 (cast-from-var2617-to-var1739 var235))) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.mapping.PrimaryKey: java.lang.String getName()>() 
(assert true)
(define-const var2530 String (append/672562846 var880 var513)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var880!1 String)
(assert (= var880!1 (str.++ var880 var513)))
(assert true)
(define-const var988 String (toString/-2075883882 var2530)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1544 String (var2218_qualify/-1563731603 var3333 var988)) ; Statement: $r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getTable/2028539592=([org.hibernate.mapping.Constraint], org.hibernate.mapping.Table), cast-from-var2617-to-var1739=([org.hibernate.mapping.PrimaryKey], org.hibernate.mapping.Constraint), getExportIdentifier/-2022488045=([org.hibernate.mapping.Table], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2218_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String)}
; {var2617=org.hibernate.mapping.PrimaryKey, var235=r0, var1365=org.hibernate.mapping.Table, var1739=org.hibernate.mapping.Constraint, var3658=$r1, var3333=$r7, var1135=$r2, var880=$r4, var513=$r3, var2530=$r5, var988=$r6, var2218=org.hibernate.internal.util.StringHelper, var1544=$r8}
; {org.hibernate.mapping.PrimaryKey=var2617, r0=var235, org.hibernate.mapping.Table=var1365, org.hibernate.mapping.Constraint=var1739, $r1=var3658, $r7=var3333, $r2=var1135, $r4=var880, $r3=var513, $r5=var2530, $r6=var988, org.hibernate.internal.util.StringHelper=var2218, $r8=var1544}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.PrimaryKey;	$r1 = virtualinvoke r0.<org.hibernate.mapping.PrimaryKey: org.hibernate.mapping.Table getTable()>();	$r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PK-");	$r3 = virtualinvoke r0.<org.hibernate.mapping.PrimaryKey: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6);	return $r8
;block_num 1