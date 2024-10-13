(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var855 var855)
(declare-const null-Int Int)
(declare-const var104 var855) ; Statement: r8 := @this: org.hibernate.dialect.MySQL8Dialect 
(assert (not (= var104 null-var855)))
(declare-const var2509 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2509 null-Int)))
 ; Statement: if i0 != 0 goto $i2 = (int) -2 
(assert (not (not (= var2509 0)))) ; Negate: Cond: i0 != 0  
(define-const var9 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var9)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var9!1 String)
(assert (= var9!1 ""))
(assert true)
(define-const var408 String (append/672562846 var9!1 " for share")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for share") 
(declare-const var9!2 String)
(assert (= var9!2 (str.++ var9!1 " for share")))
(assert true)
(define-const var126 String (append/672562846 var408 " nowait ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var408!1 String)
(assert (= var408!1 (str.++ var408 " nowait ")))
(assert true)
(define-const var653 String (toString/-2075883882 var126)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var855=org.hibernate.dialect.MySQL8Dialect, var104=r8, var2509=i0, var9=$r9, var408=$r5, var126=$r6, var653=$r7}
; {org.hibernate.dialect.MySQL8Dialect=var855, r8=var104, i0=var2509, $r9=var9, $r5=var408, $r6=var126, $r7=var653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.dialect.MySQL8Dialect;	i0 := @parameter0: int;	if i0 != 0 goto $i2 = (int) -2;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for share");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2