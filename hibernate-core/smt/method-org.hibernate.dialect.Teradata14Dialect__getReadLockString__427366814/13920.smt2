(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var524 var524)
(declare-const null-Int Int)
(declare-const var1368 var524) ; Statement: r4 := @this: org.hibernate.dialect.Teradata14Dialect 
(assert (not (= var1368 null-var524)))
(declare-const var977 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var977 null-Int)))
 ; Statement: if i0 != 0 goto return " Locking row for read  " 
(assert (not (not (= var977 0)))) ; Negate: Cond: i0 != 0  
(define-const var2552 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2552)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2552!1 String)
(assert (= var2552!1 ""))
(assert true)
(define-const var2275 String (append/672562846 var2552!1 " Locking row for read  ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Locking row for read  ") 
(declare-const var2552!2 String)
(assert (= var2552!2 (str.++ var2552!1 " Locking row for read  ")))
(assert true)
(define-const var936 String (append/672562846 var2275 " nowait ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var2275!1 String)
(assert (= var2275!1 (str.++ var2275 " nowait ")))
(assert true)
(define-const var1290 String (toString/-2075883882 var936)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var524=org.hibernate.dialect.Teradata14Dialect, var1368=r4, var977=i0, var2552=$r0, var2275=$r1, var936=$r2, var1290=$r3}
; {org.hibernate.dialect.Teradata14Dialect=var524, r4=var1368, i0=var977, $r0=var2552, $r1=var2275, $r2=var936, $r3=var1290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Teradata14Dialect;	i0 := @parameter0: int;	if i0 != 0 goto return " Locking row for read  ";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Locking row for read  ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2