(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var845 var845)
(declare-const null-Int Int)
(declare-const var2010 var845) ; Statement: r4 := @this: org.hibernate.dialect.Teradata14Dialect 
(assert (not (= var2010 null-var845)))
(declare-const var1122 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1122 null-Int)))
 ; Statement: if i0 != 0 goto return " Locking row for write " 
(assert (not (not (= var1122 0)))) ; Negate: Cond: i0 != 0  
(define-const var3525 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3525)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3525!1 String)
(assert (= var3525!1 ""))
(assert true)
(define-const var2483 String (append/672562846 var3525!1 " Locking row for write ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Locking row for write ") 
(declare-const var3525!2 String)
(assert (= var3525!2 (str.++ var3525!1 " Locking row for write ")))
(assert true)
(define-const var1770 String (append/672562846 var2483 " nowait ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var2483!1 String)
(assert (= var2483!1 (str.++ var2483 " nowait ")))
(assert true)
(define-const var2793 String (toString/-2075883882 var1770)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var845=org.hibernate.dialect.Teradata14Dialect, var2010=r4, var1122=i0, var3525=$r0, var2483=$r1, var1770=$r2, var2793=$r3}
; {org.hibernate.dialect.Teradata14Dialect=var845, r4=var2010, i0=var1122, $r0=var3525, $r1=var2483, $r2=var1770, $r3=var2793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Teradata14Dialect;	i0 := @parameter0: int;	if i0 != 0 goto return " Locking row for write ";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Locking row for write ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2