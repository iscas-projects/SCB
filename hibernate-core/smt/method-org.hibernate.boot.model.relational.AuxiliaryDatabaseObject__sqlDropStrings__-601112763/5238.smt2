(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3415 0)
(declare-sort var2139 0)
(declare-sort var2310 0)
(declare-sort var1562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2310-init () var2310)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1562) String)
(declare-fun cast-from-var3415-to-var1562 (var3415) var1562)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2310 String) void)
(declare-const null-var3415 var3415)
(declare-const null-var2139 var2139)
(declare-const var2431 var3415) ; Statement: r2 := @this: org.hibernate.boot.model.relational.AuxiliaryDatabaseObject 
(assert (not (= var2431 null-var3415)))
(declare-const var3705 var2139) ; Statement: r6 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var3705 null-var2139)))
(define-const var1135 var2310 var2310-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var149 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var149)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var149!1 String)
(assert (= var149!1 ""))
(assert true)
(define-const var1141 String (append/-1031950772 var149!1 (cast-from-var3415-to-var1562 var2431))) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var149!2 String)
(assert (str.prefixof var149!1 var149!2))
(assert true)
(define-const var2718 String (append/672562846 var1141 " does not implement sqlDropStrings(...)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement sqlDropStrings(...)") 
(declare-const var1141!1 String)
(assert (= var1141!1 (str.++ var1141 " does not implement sqlDropStrings(...)")))
(assert true)
(define-const var3002 String (toString/-2075883882 var2718)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1135 var3002)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1135!1 var2310)
(declare-const var3002!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2310-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3415-to-var1562=([org.hibernate.boot.model.relational.AuxiliaryDatabaseObject], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3415=org.hibernate.boot.model.relational.AuxiliaryDatabaseObject, var2431=r2, var2139=org.hibernate.dialect.Dialect, var3705=r6, var2310=java.lang.IllegalStateException, var1135=$r0, var149=$r1, var1562=java.lang.Object, var1141=$r3, var2718=$r4, var3002=$r5}
; {org.hibernate.boot.model.relational.AuxiliaryDatabaseObject=var3415, r2=var2431, org.hibernate.dialect.Dialect=var2139, r6=var3705, java.lang.IllegalStateException=var2310, $r0=var1135, $r1=var149, java.lang.Object=var1562, $r3=var1141, $r4=var2718, $r5=var3002}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.boot.model.relational.AuxiliaryDatabaseObject;	r6 := @parameter0: org.hibernate.dialect.Dialect;	$r0 = new java.lang.IllegalStateException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement sqlDropStrings(...)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1