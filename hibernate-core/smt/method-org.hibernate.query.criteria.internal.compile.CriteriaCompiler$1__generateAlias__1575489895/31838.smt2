(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun aliasCount/239726068 (var1475) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1475 var1475)
(declare-const var3129 var1475) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1 
(assert (not (= var3129 null-var1475)))
(define-const var2227 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2227)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2227!1 String)
(assert (= var2227!1 ""))
(assert true)
(define-const var2688 String (append/672562846 var2227!1 "generatedAlias")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("generatedAlias") 
(declare-const var2227!2 String)
(assert (= var2227!2 (str.++ var2227!1 "generatedAlias")))
(define-const var3302 Int (aliasCount/239726068 var3129)) ; Statement: $i0 = r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int aliasCount> 
(define-const var3547 Int (+ var3302 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3129!1 var1475)
(assert (not (= var3129!1 null-var1475)))
(assert (= (aliasCount/239726068 var3129!1) var3547)) ; Statement: r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int aliasCount> = $i1 
(assert true)
(define-const var3786 String (append/-1001720160 var2688 var3302)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2688!1 String)
(assert (str.prefixof var2688 var2688!1))
(assert true)
(define-const var575 String (toString/-2075883882 var3786)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), aliasCount/239726068=([org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1475=org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1, var3129=r1, var2227=$r0, var2688=$r2, var3302=$i0, var3547=$i1, var3786=$r3, var575=$r4}
; {org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1=var1475, r1=var3129, $r0=var2227, $r2=var2688, $i0=var3302, $i1=var3547, $r3=var3786, $r4=var575}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("generatedAlias");	$i0 = r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int aliasCount>;	$i1 = $i0 + 1;	r1.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: int aliasCount> = $i1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1