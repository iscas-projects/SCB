(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun explicitParameterCount/239726068 (var272) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var272 var272)
(declare-const var3937 var272) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1 
(assert (not (= var3937 null-var272)))
(define-const var3266 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3266)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3266!1 String)
(assert (= var3266!1 ""))
(assert true)
(define-const var1841 String (append/672562846 var3266!1 "param")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("param") 
(declare-const var3266!2 String)
(assert (= var3266!2 (str.++ var3266!1 "param")))
(define-const var3204 Int (explicitParameterCount/239726068 var3937)) ; Statement: $i0 = r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int explicitParameterCount> 
(define-const var992 Int (+ var3204 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3937!1 var272)
(assert (not (= var3937!1 null-var272)))
(assert (= (explicitParameterCount/239726068 var3937!1) var992)) ; Statement: r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int explicitParameterCount> = $i1 
(assert true)
(define-const var3069 String (append/-1001720160 var1841 var3204)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1841!1 String)
(assert (str.prefixof var1841 var1841!1))
(assert true)
(define-const var3183 String (toString/-2075883882 var3069)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), explicitParameterCount/239726068=([org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var272=org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1, var3937=r1, var3266=$r0, var1841=$r2, var3204=$i0, var992=$i1, var3069=$r3, var3183=$r4}
; {org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1=var272, r1=var3937, $r0=var3266, $r2=var1841, $i0=var3204, $i1=var992, $r3=var3069, $r4=var3183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("param");	$i0 = r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int explicitParameterCount>;	$i1 = $i0 + 1;	r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int explicitParameterCount> = $i1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1