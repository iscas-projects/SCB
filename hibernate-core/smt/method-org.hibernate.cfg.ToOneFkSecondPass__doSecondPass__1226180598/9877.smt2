(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1742 0)
(declare-sort var785 0)
(declare-sort var1744 0)
(declare-sort var1343 0)
(declare-sort var649 0)
(declare-sort var259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-1793336806 (var1343) var1744)
(declare-fun cast-from-var1742-to-var1343 (var1742) var1343)
(declare-fun var649-init () var649)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var259) ClassObject)
(declare-fun cast-from-var1744-to-var259 (var1744) var259)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var649 String) void)
(declare-const null-var1742 var1742)
(declare-const null-var785 var785)
(declare-const var1059 var1742) ; Statement: r0 := @this: org.hibernate.cfg.ToOneFkSecondPass 
(assert (not (= var1059 null-var1742)))
(declare-const var157 var785) ; Statement: r14 := @parameter0: java.util.Map 
(assert (not (= var157 null-var785)))
(define-const var3085 var1744 (value/-1793336806 (cast-from-var1742-to-var1343 var1059))) ; Statement: $r1 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value> 
(define-const var365 Bool false) ; Statement: $z0 = $r1 instanceof org.hibernate.mapping.ManyToOne 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value> 
(assert (= (ite var365 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1627 var1744 (value/-1793336806 (cast-from-var1742-to-var1343 var1059))) ; Statement: $r2 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value> 
(define-const var2145 Bool false) ; Statement: $z1 = $r2 instanceof org.hibernate.mapping.OneToOne 
 ; Statement: if $z1 == 0 goto $r38 = new org.hibernate.AssertionFailure 
(assert (= (ite var2145 1 0) 0)) ; Cond: $z1 == 0 
(define-const var92 var649 var649-init) ; Statement: $r38 = new org.hibernate.AssertionFailure 
(define-const var2489 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2489)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2489!1 String)
(assert (= var2489!1 ""))
(assert true)
(define-const var180 String (append/672562846 var2489!1 "FkSecondPass for a wrong value type: ")) ; Statement: $r8 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FkSecondPass for a wrong value type: ") 
(declare-const var2489!2 String)
(assert (= var2489!2 (str.++ var2489!1 "FkSecondPass for a wrong value type: ")))
(define-const var1869 var1744 (value/-1793336806 (cast-from-var1742-to-var1343 var1059))) ; Statement: $r5 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value> 
(assert true)
(define-const var34 ClassObject (getClass/1258963082 (cast-from-var1744-to-var259 var1869))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1276 String (getName/-1958580599 var34)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1179 String (append/672562846 var180 var1276)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var180!1 String)
(assert (= var180!1 (str.++ var180 var1276)))
(assert true)
(define-const var3712 String (toString/-2075883882 var1179)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var92 var3712)) ; Statement: specialinvoke $r38.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10) 

(declare-const var92!1 var649)
(declare-const var3712!1 String)
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-1793336806=([org.hibernate.cfg.FkSecondPass], org.hibernate.mapping.SimpleValue), cast-from-var1742-to-var1343=([org.hibernate.cfg.ToOneFkSecondPass], org.hibernate.cfg.FkSecondPass), var649-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1744-to-var259=([org.hibernate.mapping.SimpleValue], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1742=org.hibernate.cfg.ToOneFkSecondPass, var1059=r0, var785=java.util.Map, var157=r14, var1744=org.hibernate.mapping.SimpleValue, var1343=org.hibernate.cfg.FkSecondPass, var3085=$r1, var365=$z0, var1627=$r2, var2145=$z1, var649=org.hibernate.AssertionFailure, var92=$r38, var2489=$r37, var180=$r8, var1869=$r5, var259=java.lang.Object, var34=$r6, var1276=$r7, var1179=$r9, var3712=$r10}
; {org.hibernate.cfg.ToOneFkSecondPass=var1742, r0=var1059, java.util.Map=var785, r14=var157, org.hibernate.mapping.SimpleValue=var1744, org.hibernate.cfg.FkSecondPass=var1343, $r1=var3085, $z0=var365, $r2=var1627, $z1=var2145, org.hibernate.AssertionFailure=var649, $r38=var92, $r37=var2489, $r8=var180, $r5=var1869, java.lang.Object=var259, $r6=var34, $r7=var1276, $r9=var1179, $r10=var3712}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.ToOneFkSecondPass;	r14 := @parameter0: java.util.Map;	$r1 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value>;	$z0 = $r1 instanceof org.hibernate.mapping.ManyToOne;	if $z0 == 0 goto $r2 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value>;	$r2 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value>;	$z1 = $r2 instanceof org.hibernate.mapping.OneToOne;	if $z1 == 0 goto $r38 = new org.hibernate.AssertionFailure;	$r38 = new org.hibernate.AssertionFailure;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FkSecondPass for a wrong value type: ");	$r5 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value>;	$r6 = virtualinvoke $r5.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r38.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10);	throw $r38
;block_num 3