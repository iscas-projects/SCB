(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun functionName/-1731634981 (var1853) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyName/-1731634981 (var1853) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1853 var1853)
(declare-const var388 var1853) ; Statement: r1 := @this: org.hibernate.criterion.AggregateProjection 
(assert (not (= var388 null-var1853)))
(define-const var3842 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3842)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3842!1 String)
(assert (= var3842!1 ""))
(define-const var2275 String (functionName/-1731634981 var388)) ; Statement: $r2 = r1.<org.hibernate.criterion.AggregateProjection: java.lang.String functionName> 
(assert true)
(define-const var3780 String (append/672562846 var3842!1 var2275)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3842!2 String)
(assert (= var3842!2 (str.++ var3842!1 var2275)))
(assert true)
(define-const var3018 String (append/672562846 var3780 "(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3780!1 String)
(assert (= var3780!1 (str.++ var3780 "(")))
(define-const var404 String (propertyName/-1731634981 var388)) ; Statement: $r4 = r1.<org.hibernate.criterion.AggregateProjection: java.lang.String propertyName> 
(assert true)
(define-const var2270 String (append/672562846 var3018 var404)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3018!1 String)
(assert (= var3018!1 (str.++ var3018 var404)))
(assert true)
(define-const var2179 String (append/-1166366385 var2270 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2270!1 String)
(assert (str.prefixof var2270 var2270!1))
(assert true)
(define-const var2232 String (toString/-2075883882 var2179)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), functionName/-1731634981=([org.hibernate.criterion.AggregateProjection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyName/-1731634981=([org.hibernate.criterion.AggregateProjection], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1853=org.hibernate.criterion.AggregateProjection, var388=r1, var3842=$r0, var2275=$r2, var3780=$r3, var3018=$r5, var404=$r4, var2270=$r6, var2179=$r7, var2232=$r8}
; {org.hibernate.criterion.AggregateProjection=var1853, r1=var388, $r0=var3842, $r2=var2275, $r3=var3780, $r5=var3018, $r4=var404, $r6=var2270, $r7=var2179, $r8=var2232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.AggregateProjection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.AggregateProjection: java.lang.String functionName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = r1.<org.hibernate.criterion.AggregateProjection: java.lang.String propertyName>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1