(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var634 0)
(declare-sort var667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var667-init () var667)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var634_getName/1668282280 (var634) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var667 String) void)
(declare-const null-var634 var634)
(declare-const var3671 var634) ; Statement: r2 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var3671 null-var634)))
(define-const var2768 var667 var667-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var3854 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3854)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3854!1 String)
(assert (= var3854!1 ""))
(assert true)
(define-const var783 String (append/672562846 var3854!1 "Parameter value not yet bound : ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter value not yet bound : ") 
(declare-const var3854!2 String)
(assert (= var3854!2 (str.++ var3854!1 "Parameter value not yet bound : ")))
(define-const var2808 String (var634_getName/1668282280 var3671)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.query.QueryParameter: java.lang.String getName()>() 
(assert true)
(define-const var716 String (append/672562846 var783 var2808)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var783!1 String)
(assert (= var783!1 (str.++ var783 var2808)))
(assert true)
(define-const var2614 String (toString/-2075883882 var716)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2768 var2614)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var2768!1 var667)
(declare-const var2614!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var667-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var634_getName/1668282280=([org.hibernate.query.QueryParameter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var634=org.hibernate.query.QueryParameter, var3671=r2, var667=java.lang.IllegalStateException, var2768=$r0, var3854=$r1, var783=$r4, var2808=$r3, var716=$r5, var2614=$r6}
; {org.hibernate.query.QueryParameter=var634, r2=var3671, java.lang.IllegalStateException=var667, $r0=var2768, $r1=var3854, $r4=var783, $r3=var2808, $r5=var716, $r6=var2614}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.query.QueryParameter;	$r0 = new java.lang.IllegalStateException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter value not yet bound : ");	$r3 = interfaceinvoke r2.<org.hibernate.query.QueryParameter: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1