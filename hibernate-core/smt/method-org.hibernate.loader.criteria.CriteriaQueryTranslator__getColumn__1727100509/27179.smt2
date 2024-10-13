(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3526 0)
(declare-sort var2896 0)
(declare-sort var652 0)
(declare-sort var1778 0)
(declare-sort var2778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getColumns/369762598 (var3526 String var2896) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1778-init () var1778)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1778 String) void)
(declare-fun cast-from-var1778-to-var2778 (var1778) var2778)
(declare-const null-var3526 var3526)
(declare-const null-var2896 var2896)
(declare-const null-String String)
(declare-const var3830 var3526) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var3830 null-var3526)))
(declare-const var864 var2896) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var864 null-var2896)))
(declare-const var1241 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1241 null-String)))
(assert true)
(define-const var1029 (Array Int String) (getColumns/369762598 var3830 var1241 var864)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>(r1, r2) 
(define-const var103 Int (getLength-Arr-String-1 var1029)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i0 == 1 goto $r4 = r3[0] 
(assert (not (= var103 1))) ; Negate: Cond: $i0 == 1  
(define-const var3850 var1778 var1778-init) ; Statement: $r11 = new org.hibernate.QueryException 
(define-const var3859 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3859)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3859!1 String)
(assert (= var3859!1 ""))
(assert true)
(define-const var2536 String (append/672562846 var3859!1 "property does not map to a single column: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property does not map to a single column: ") 
(declare-const var3859!2 String)
(assert (= var3859!2 (str.++ var3859!1 "property does not map to a single column: ")))
(assert true)
(define-const var3544 String (append/672562846 var2536 var1241)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2536!1 String)
(assert (= var2536!1 (str.++ var2536 var1241)))
(assert true)
(define-const var1602 String (toString/-2075883882 var3544)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3850 var1602)) ; Statement: specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9) 

(declare-const var3850!1 var1778)
(declare-const var1602!1 String)
(define-const var2616 var2778 (cast-from-var1778-to-var2778 var3850!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getColumns/369762598=([org.hibernate.loader.criteria.CriteriaQueryTranslator, java.lang.String, org.hibernate.Criteria], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1778-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1778-to-var2778=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3526=org.hibernate.loader.criteria.CriteriaQueryTranslator, var3830=r0, var2896=org.hibernate.Criteria, var864=r2, var1241=r1, var652=null_type, var1029=r3, var103=$i0, var1778=org.hibernate.QueryException, var3850=$r11, var3859=$r10, var2536=$r7, var3544=$r8, var1602=$r9, var2778=java.lang.Throwable, var2616=$r12}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var3526, r0=var3830, org.hibernate.Criteria=var2896, r2=var864, r1=var1241, null_type=var652, r3=var1029, $i0=var103, org.hibernate.QueryException=var1778, $r11=var3850, $r10=var3859, $r7=var2536, $r8=var3544, $r9=var1602, java.lang.Throwable=var2778, $r12=var2616}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r2 := @parameter0: org.hibernate.Criteria;	r1 := @parameter1: java.lang.String;	r3 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>(r1, r2);	$i0 = lengthof r3;	if $i0 == 1 goto $r4 = r3[0];	$r11 = new org.hibernate.QueryException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property does not map to a single column: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2