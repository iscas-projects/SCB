(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun queryString/297517062 (var2520) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2520 var2520)
(declare-const var272 var2520) ; Statement: r1 := @this: org.hibernate.engine.spi.SubselectFetch 
(assert (not (= var272 null-var2520)))
(define-const var1941 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1941)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1941!1 String)
(assert (= var1941!1 ""))
(assert true)
(define-const var953 String (append/672562846 var1941!1 "SubselectFetch(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SubselectFetch(") 
(declare-const var1941!2 String)
(assert (= var1941!2 (str.++ var1941!1 "SubselectFetch(")))
(define-const var3014 String (queryString/297517062 var272)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String queryString> 
(assert true)
(define-const var3918 String (append/672562846 var953 var3014)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var953!1 String)
(assert (= var953!1 (str.++ var953 var3014)))
(assert true)
(define-const var532 String (append/-1166366385 var3918 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3918!1 String)
(assert (str.prefixof var3918 var3918!1))
(assert true)
(define-const var2791 String (toString/-2075883882 var532)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), queryString/297517062=([org.hibernate.engine.spi.SubselectFetch], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2520=org.hibernate.engine.spi.SubselectFetch, var272=r1, var1941=$r0, var953=$r3, var3014=$r2, var3918=$r4, var532=$r5, var2791=$r6}
; {org.hibernate.engine.spi.SubselectFetch=var2520, r1=var272, $r0=var1941, $r3=var953, $r2=var3014, $r4=var3918, $r5=var532, $r6=var2791}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.SubselectFetch;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SubselectFetch(");	$r2 = r1.<org.hibernate.engine.spi.SubselectFetch: java.lang.String queryString>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1