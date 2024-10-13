(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort var2545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun where/-1195722287 (var815) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var815 var815)
(declare-const null-String String)
(declare-const var2684 var815) ; Statement: r0 := @this: org.hibernate.sql.Delete 
(assert (not (= var2684 null-var815)))
(declare-const var1739 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1739 null-String)))
(define-const var600 String (where/-1195722287 var2684)) ; Statement: $r1 = r0.<org.hibernate.sql.Delete: java.lang.String where> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var600 null-String))) ; Cond: $r1 != null 
(define-const var2851 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2851)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2851!1 String)
(assert (= var2851!1 ""))
(define-const var233 String (where/-1195722287 var2684)) ; Statement: $r3 = r0.<org.hibernate.sql.Delete: java.lang.String where> 
(assert true)
(define-const var3501 String (append/672562846 var2851!1 var233)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2851!2 String)
(assert (= var2851!2 (str.++ var2851!1 var233)))
(assert true)
(define-const var3932 String (append/672562846 var3501 " and ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var3501!1 String)
(assert (= var3501!1 (str.++ var3501 " and ")))
(assert true)
(define-const var2622 String (append/672562846 var3932 var1739)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3932!1 String)
(assert (= var3932!1 (str.++ var3932 var1739)))
(assert true)
(define-const var571 String (toString/-2075883882 var2622)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2684!1 var815)
(assert (not (= var2684!1 null-var815)))
(assert (= (where/-1195722287 var2684!1) var571)) ; Statement: r0.<org.hibernate.sql.Delete: java.lang.String where> = $r8 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {where/-1195722287=([org.hibernate.sql.Delete], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var815=org.hibernate.sql.Delete, var2684=r0, var1739=r5, var2545=null_type, var600=$r1, var2851=$r2, var233=$r3, var3501=$r4, var3932=$r6, var2622=$r7, var571=$r8}
; {org.hibernate.sql.Delete=var815, r0=var2684, r5=var1739, null_type=var2545, $r1=var600, $r2=var2851, $r3=var233, $r4=var3501, $r6=var3932, $r7=var2622, $r8=var571}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.Delete;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.sql.Delete: java.lang.String where>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.hibernate.sql.Delete: java.lang.String where>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.sql.Delete: java.lang.String where> = $r8;	return r0
;block_num 3