(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/1541845608 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var33 var33)
(declare-const null-Int Int)
(declare-const var3343 var33) ; Statement: r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$LongValueHandler 
(assert (not (= var3343 null-var33)))
(declare-const var1199 Int) ; Statement: r1 := @parameter0: java.lang.Long 
(assert (not (= var1199 null-Int)))
(define-const var1021 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1021)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1021!1 String)
(assert (= var1021!1 ""))
(assert true)
(define-const var735 String (toString/1541845608 var1199)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Long: java.lang.String toString()>() 
(assert true)
(define-const var3475 String (append/672562846 var1021!1 var735)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1021!2 String)
(assert (= var1021!2 (str.++ var1021!1 var735)))
(assert true)
(define-const var2460 String (append/-1166366385 var3475 76)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var3475!1 String)
(assert (str.prefixof var3475 var3475!1))
(assert true)
(define-const var3498 String (toString/-2075883882 var2460)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/1541845608=([java.lang.Long], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var33=org.hibernate.query.criteria.internal.ValueHandlerFactory$LongValueHandler, var3343=r6, var1199=r1, var1021=$r0, var735=$r2, var3475=$r3, var2460=$r4, var3498=$r5}
; {org.hibernate.query.criteria.internal.ValueHandlerFactory$LongValueHandler=var33, r6=var3343, r1=var1199, $r0=var1021, $r2=var735, $r3=var3475, $r4=var2460, $r5=var3498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Long: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$LongValueHandler;	r1 := @parameter0: java.lang.Long;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Long: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1