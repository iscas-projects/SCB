(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-770981635 (Float64) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3155 var3155)
(declare-const null-Float64 Float64)
(declare-const var1319 var3155) ; Statement: r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$DoubleValueHandler 
(assert (not (= var1319 null-var3155)))
(declare-const var3375 Float64) ; Statement: r1 := @parameter0: java.lang.Double 
(assert (not (= var3375 null-Float64)))
(define-const var2977 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2977)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2977!1 String)
(assert (= var2977!1 ""))
(assert true)
(define-const var1182 String (toString/-770981635 var3375)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Double: java.lang.String toString()>() 
(assert true)
(define-const var2957 String (append/672562846 var2977!1 var1182)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2977!2 String)
(assert (= var2977!2 (str.++ var2977!1 var1182)))
(assert true)
(define-const var171 String (append/-1166366385 var2957 68)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(68) 
(declare-const var2957!1 String)
(assert (str.prefixof var2957 var2957!1))
(assert true)
(define-const var3673 String (toString/-2075883882 var171)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-770981635=([java.lang.Double], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3155=org.hibernate.query.criteria.internal.ValueHandlerFactory$DoubleValueHandler, var1319=r6, var3375=r1, var2977=$r0, var1182=$r2, var2957=$r3, var171=$r4, var3673=$r5}
; {org.hibernate.query.criteria.internal.ValueHandlerFactory$DoubleValueHandler=var3155, r6=var1319, r1=var3375, $r0=var2977, $r2=var1182, $r3=var2957, $r4=var171, $r5=var3673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Double: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$DoubleValueHandler;	r1 := @parameter0: java.lang.Double;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Double: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(68);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1