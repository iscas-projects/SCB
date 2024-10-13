(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getEntityName/-29526850 (var732) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getPropertyName/1123235532 (var732) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var732 var732)
(declare-const var785 var732) ; Statement: r1 := @this: org.hibernate.id.ForeignGenerator 
(assert (not (= var785 null-var732)))
(define-const var2373 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2373)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2373!1 String)
(assert (= var2373!1 ""))
(assert true)
(define-const var3187 String (getEntityName/-29526850 var785)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.id.ForeignGenerator: java.lang.String getEntityName()>() 
(assert true)
(define-const var3373 String (append/672562846 var2373!1 var3187)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2373!2 String)
(assert (= var2373!2 (str.++ var2373!1 var3187)))
(assert true)
(define-const var3513 String (append/-1166366385 var3373 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3373!1 String)
(assert (str.prefixof var3373 var3373!1))
(assert true)
(define-const var993 String (getPropertyName/1123235532 var785)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.id.ForeignGenerator: java.lang.String getPropertyName()>() 
(assert true)
(define-const var607 String (append/672562846 var3513 var993)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3513!1 String)
(assert (= var3513!1 (str.++ var3513 var993)))
(assert true)
(define-const var2758 String (toString/-2075883882 var607)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getEntityName/-29526850=([org.hibernate.id.ForeignGenerator], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getPropertyName/1123235532=([org.hibernate.id.ForeignGenerator], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var732=org.hibernate.id.ForeignGenerator, var785=r1, var2373=$r0, var3187=$r2, var3373=$r3, var3513=$r5, var993=$r4, var607=$r6, var2758=$r7}
; {org.hibernate.id.ForeignGenerator=var732, r1=var785, $r0=var2373, $r2=var3187, $r3=var3373, $r5=var3513, $r4=var993, $r6=var607, $r7=var2758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.id.ForeignGenerator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.id.ForeignGenerator: java.lang.String getEntityName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = virtualinvoke r1.<org.hibernate.id.ForeignGenerator: java.lang.String getPropertyName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1