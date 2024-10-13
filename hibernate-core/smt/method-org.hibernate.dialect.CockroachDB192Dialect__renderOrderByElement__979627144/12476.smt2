(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var165 0)
(declare-sort var1880 0)
(declare-sort var3501 0)
(declare-sort var2535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun renderOrderByElement/-314772783 (var2535 String String String var3501) String)
(declare-fun cast-from-var165-to-var2535 (var165) var2535)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var165 var165)
(declare-const null-String String)
(declare-const null-var3501 var3501)
(declare-const var3501-NONE var3501)
(declare-const var1752 var165) ; Statement: r3 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var1752 null-var165)))
(declare-const var3061 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3061 null-String)))
(declare-const var3195 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3195 null-String)))
(declare-const var1645 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1645 null-String)))
(declare-const var2908 var3501) ; Statement: r1 := @parameter3: org.hibernate.NullPrecedence 
(assert (not (= var2908 null-var3501)))
(define-const var632 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var632)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var632!1 String)
(assert (= var632!1 ""))
(define-const var1452 var3501 var3501-NONE) ; Statement: $r2 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
 ; Statement: if r1 == $r2 goto $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
(assert (= var2908 var1452)) ; Cond: r1 == $r2 
(define-const var3594 var3501 var3501-NONE) ; Statement: $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
(assert true)
(define-const var180 String (renderOrderByElement/-314772783 (cast-from-var165-to-var2535 var1752) var3061 var3195 var1645 var3594)) ; Statement: $r11 = specialinvoke r3.<org.hibernate.dialect.Dialect: java.lang.String renderOrderByElement(java.lang.String,java.lang.String,java.lang.String,org.hibernate.NullPrecedence)>(r4, r5, r6, $r10) 
(assert true)
;(assert (append/672562846 var632!1 var180)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var632!2 String)
(assert (= var632!2 (str.++ var632!1 var180)))
(assert true)
(define-const var2527 String (toString/-2075883882 var632!2)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), renderOrderByElement/-314772783=([org.hibernate.dialect.Dialect, java.lang.String, java.lang.String, java.lang.String, org.hibernate.NullPrecedence], java.lang.String), cast-from-var165-to-var2535=([org.hibernate.dialect.CockroachDB192Dialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var165=org.hibernate.dialect.CockroachDB192Dialect, var1752=r3, var3061=r4, var1880=null_type, var3195=r5, var1645=r6, var3501=org.hibernate.NullPrecedence, var2908=r1, var632=$r0, var1452=$r2, var3594=$r10, var2535=org.hibernate.dialect.Dialect, var180=$r11, var2527=$r12}
; {org.hibernate.dialect.CockroachDB192Dialect=var165, r3=var1752, r4=var3061, null_type=var1880, r5=var3195, r6=var1645, org.hibernate.NullPrecedence=var3501, r1=var2908, $r0=var632, $r2=var1452, $r10=var3594, org.hibernate.dialect.Dialect=var2535, $r11=var180, $r12=var2527}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r4 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r1 := @parameter3: org.hibernate.NullPrecedence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	if r1 == $r2 goto $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	$r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	$r11 = specialinvoke r3.<org.hibernate.dialect.Dialect: java.lang.String renderOrderByElement(java.lang.String,java.lang.String,java.lang.String,org.hibernate.NullPrecedence)>(r4, r5, r6, $r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2