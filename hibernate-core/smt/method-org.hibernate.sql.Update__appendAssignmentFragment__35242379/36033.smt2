(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var42 0)
(declare-sort var1609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun assignments/-699110161 (var42) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var42 var42)
(declare-const null-String String)
(declare-const var1552 var42) ; Statement: r0 := @this: org.hibernate.sql.Update 
(assert (not (= var1552 null-var42)))
(declare-const var1097 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1097 null-String)))
(define-const var1381 String (assignments/-699110161 var1552)) ; Statement: $r1 = r0.<org.hibernate.sql.Update: java.lang.String assignments> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1381 null-String))) ; Cond: $r1 != null 
(define-const var336 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var336)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var336!1 String)
(assert (= var336!1 ""))
(define-const var3584 String (assignments/-699110161 var1552)) ; Statement: $r3 = r0.<org.hibernate.sql.Update: java.lang.String assignments> 
(assert true)
(define-const var3251 String (append/672562846 var336!1 var3584)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var336!2 String)
(assert (= var336!2 (str.++ var336!1 var3584)))
(assert true)
(define-const var646 String (append/672562846 var3251 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3251!1 String)
(assert (= var3251!1 (str.++ var3251 ", ")))
(assert true)
(define-const var1882 String (append/672562846 var646 var1097)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var646!1 String)
(assert (= var646!1 (str.++ var646 var1097)))
(assert true)
(define-const var3493 String (toString/-2075883882 var1882)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1552!1 var42)
(assert (not (= var1552!1 null-var42)))
(assert (= (assignments/-699110161 var1552!1) var3493)) ; Statement: r0.<org.hibernate.sql.Update: java.lang.String assignments> = $r8 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {assignments/-699110161=([org.hibernate.sql.Update], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var42=org.hibernate.sql.Update, var1552=r0, var1097=r5, var1609=null_type, var1381=$r1, var336=$r2, var3584=$r3, var3251=$r4, var646=$r6, var1882=$r7, var3493=$r8}
; {org.hibernate.sql.Update=var42, r0=var1552, r5=var1097, null_type=var1609, $r1=var1381, $r2=var336, $r3=var3584, $r4=var3251, $r6=var646, $r7=var1882, $r8=var3493}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.Update;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.sql.Update: java.lang.String assignments>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.hibernate.sql.Update: java.lang.String assignments>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.sql.Update: java.lang.String assignments> = $r8;	return r0
;block_num 3