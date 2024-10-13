(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2939 0)
(declare-sort var2120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2120_generateAlias/1038270051 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2939 var2939)
(declare-const var3334 var2939) ; Statement: r5 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var3334 null-var2939)))
(define-const var3120 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3120)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3120!1 String)
(assert (= var3120!1 ""))
(define-const var3851 String (var2120_generateAlias/1038270051 "this" 0)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String generateAlias(java.lang.String,int)>("this", 0) 
(assert true)
(define-const var2172 String (append/672562846 var3120!1 var3851)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3120!2 String)
(assert (= var3120!2 (str.++ var3120!1 var3851)))
(assert true)
(define-const var74 String (append/-1166366385 var2172 95)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var2172!1 String)
(assert (str.prefixof var2172 var2172!1))
(assert true)
(define-const var2909 String (toString/-2075883882 var74)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2120_generateAlias/1038270051=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2939=org.hibernate.loader.criteria.CriteriaQueryTranslator, var3334=r5, var3120=$r0, var2120=org.hibernate.internal.util.StringHelper, var3851=$r1, var2172=$r2, var74=$r3, var2909=$r4}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var2939, r5=var3334, $r0=var3120, org.hibernate.internal.util.StringHelper=var2120, $r1=var3851, $r2=var2172, $r3=var74, $r4=var2909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String generateAlias(java.lang.String,int)>("this", 0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1