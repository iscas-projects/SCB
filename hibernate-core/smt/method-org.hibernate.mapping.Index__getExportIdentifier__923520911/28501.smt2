(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3463 0)
(declare-sort var3972 0)
(declare-sort var2269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTable/-2097669385 (var3463) var3972)
(declare-fun getExportIdentifier/-2022488045 (var3972) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-354198463 (var3463) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2269_qualify/-1563731603 (String String) String)
(declare-const null-var3463 var3463)
(declare-const var43 var3463) ; Statement: r0 := @this: org.hibernate.mapping.Index 
(assert (not (= var43 null-var3463)))
(assert true)
(define-const var1927 var3972 (getTable/-2097669385 var43)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var228 String (getExportIdentifier/-2022488045 var1927)) ; Statement: $r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>() 
(define-const var1152 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1152)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1152!1 String)
(assert (= var1152!1 ""))
(assert true)
(define-const var1054 String (append/672562846 var1152!1 "IDX-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IDX-") 
(declare-const var1152!2 String)
(assert (= var1152!2 (str.++ var1152!1 "IDX-")))
(assert true)
(define-const var184 String (getName/-354198463 var43)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(assert true)
(define-const var3185 String (append/672562846 var1054 var184)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1054!1 String)
(assert (= var1054!1 (str.++ var1054 var184)))
(assert true)
(define-const var3115 String (toString/-2075883882 var3185)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var149 String (var2269_qualify/-1563731603 var228 var3115)) ; Statement: $r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getTable/-2097669385=([org.hibernate.mapping.Index], org.hibernate.mapping.Table), getExportIdentifier/-2022488045=([org.hibernate.mapping.Table], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-354198463=([org.hibernate.mapping.Index], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2269_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String)}
; {var3463=org.hibernate.mapping.Index, var43=r0, var3972=org.hibernate.mapping.Table, var1927=$r1, var228=$r7, var1152=$r2, var1054=$r4, var184=$r3, var3185=$r5, var3115=$r6, var2269=org.hibernate.internal.util.StringHelper, var149=$r8}
; {org.hibernate.mapping.Index=var3463, r0=var43, org.hibernate.mapping.Table=var3972, $r1=var1927, $r7=var228, $r2=var1152, $r4=var1054, $r3=var184, $r5=var3185, $r6=var3115, org.hibernate.internal.util.StringHelper=var2269, $r8=var149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Index;	$r1 = virtualinvoke r0.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>();	$r7 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getExportIdentifier()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IDX-");	$r3 = virtualinvoke r0.<org.hibernate.mapping.Index: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r7, $r6);	return $r8
;block_num 1