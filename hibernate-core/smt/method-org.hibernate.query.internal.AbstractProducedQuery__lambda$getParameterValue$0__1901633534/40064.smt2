(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var285 0)
(declare-sort var3057 0)
(declare-sort var1248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3057-init () var3057)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var1248) String)
(declare-fun cast-from-var285-to-var1248 (var285) var1248)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3057 String) void)
(declare-const null-var285 var285)
(declare-const var1941 var285) ; Statement: r2 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var1941 null-var285)))
(define-const var599 var3057 var3057-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var913 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var913)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var913!1 String)
(assert (= var913!1 ""))
(assert true)
(define-const var3986 String (append/672562846 var913!1 "Parameter value not yet bound : ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter value not yet bound : ") 
(declare-const var913!2 String)
(assert (= var913!2 (str.++ var913!1 "Parameter value not yet bound : ")))
(assert true)
(define-const var5 String (toString/-522406933 (cast-from-var285-to-var1248 var1941))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3451 String (append/672562846 var3986 var5)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3986!1 String)
(assert (= var3986!1 (str.++ var3986 var5)))
(assert true)
(define-const var77 String (toString/-2075883882 var3451)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var599 var77)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var599!1 var3057)
(declare-const var77!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3057-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var285-to-var1248=([org.hibernate.query.QueryParameter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var285=org.hibernate.query.QueryParameter, var1941=r2, var3057=java.lang.IllegalStateException, var599=$r0, var913=$r1, var3986=$r4, var1248=java.lang.Object, var5=$r3, var3451=$r5, var77=$r6}
; {org.hibernate.query.QueryParameter=var285, r2=var1941, java.lang.IllegalStateException=var3057, $r0=var599, $r1=var913, $r4=var3986, java.lang.Object=var1248, $r3=var5, $r5=var3451, $r6=var77}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.query.QueryParameter;	$r0 = new java.lang.IllegalStateException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter value not yet bound : ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1