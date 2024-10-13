(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3924 0)
(declare-sort var2145 0)
(declare-sort var2868 0)
(declare-sort var31 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2868-init () var2868)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var31) String)
(declare-fun cast-from-var3924-to-var31 (var3924) var31)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2868 String) void)
(declare-const null-var3924 var3924)
(declare-const null-var2145 var2145)
(declare-const var1580 var3924) ; Statement: r2 := @this: org.hibernate.boot.model.relational.AuxiliaryDatabaseObject 
(assert (not (= var1580 null-var3924)))
(declare-const var2974 var2145) ; Statement: r6 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2974 null-var2145)))
(define-const var1925 var2868 var2868-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var2355 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2355)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2355!1 String)
(assert (= var2355!1 ""))
(assert true)
(define-const var2497 String (append/-1031950772 var2355!1 (cast-from-var3924-to-var31 var1580))) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2355!2 String)
(assert (str.prefixof var2355!1 var2355!2))
(assert true)
(define-const var3751 String (append/672562846 var2497 " does not implement sqlCreateStrings(...)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement sqlCreateStrings(...)") 
(declare-const var2497!1 String)
(assert (= var2497!1 (str.++ var2497 " does not implement sqlCreateStrings(...)")))
(assert true)
(define-const var3182 String (toString/-2075883882 var3751)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1925 var3182)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1925!1 var2868)
(declare-const var3182!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2868-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3924-to-var31=([org.hibernate.boot.model.relational.AuxiliaryDatabaseObject], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3924=org.hibernate.boot.model.relational.AuxiliaryDatabaseObject, var1580=r2, var2145=org.hibernate.dialect.Dialect, var2974=r6, var2868=java.lang.IllegalStateException, var1925=$r0, var2355=$r1, var31=java.lang.Object, var2497=$r3, var3751=$r4, var3182=$r5}
; {org.hibernate.boot.model.relational.AuxiliaryDatabaseObject=var3924, r2=var1580, org.hibernate.dialect.Dialect=var2145, r6=var2974, java.lang.IllegalStateException=var2868, $r0=var1925, $r1=var2355, java.lang.Object=var31, $r3=var2497, $r4=var3751, $r5=var3182}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.boot.model.relational.AuxiliaryDatabaseObject;	r6 := @parameter0: org.hibernate.dialect.Dialect;	$r0 = new java.lang.IllegalStateException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement sqlCreateStrings(...)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1