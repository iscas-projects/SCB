(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort var368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var667 var667)
(declare-const null-String String)
(declare-const var2570 var667) ; Statement: r5 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var2570 null-var667)))
(declare-const var3566 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3566 null-String)))
(define-const var1755 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1755)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1755!1 String)
(assert (= var1755!1 ""))
(assert true)
(define-const var2826 String (append/672562846 var1755!1 "create sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var1755!2 String)
(assert (= var1755!2 (str.++ var1755!1 "create sequence ")))
(assert true)
(define-const var64 String (append/672562846 var2826 var3566)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2826!1 String)
(assert (= var2826!1 (str.++ var2826 var3566)))
(assert true)
(define-const var1126 String (toString/-2075883882 var64)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var667=org.hibernate.dialect.CockroachDB192Dialect, var2570=r5, var3566=r1, var368=null_type, var1755=$r0, var2826=$r2, var64=$r3, var1126=$r4}
; {org.hibernate.dialect.CockroachDB192Dialect=var667, r5=var2570, r1=var3566, null_type=var368, $r0=var1755, $r2=var2826, $r3=var64, $r4=var1126}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1