(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun precedence/-1875912268 (var2961) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2961 var2961)
(declare-const var1221 var2961) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.PrecedencePredicateTransition 
(assert (not (= var1221 null-var2961)))
(define-const var535 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var535)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var535!1 String)
(assert (= var535!1 ""))
(define-const var3429 Int (precedence/-1875912268 var1221)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: int precedence> 
(assert true)
(define-const var871 String (append/-1001720160 var535!1 var3429)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var535!2 String)
(assert (str.prefixof var535!1 var535!2))
(assert true)
(define-const var1660 String (append/672562846 var871 " >= _p")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" >= _p") 
(declare-const var871!1 String)
(assert (= var871!1 (str.++ var871 " >= _p")))
(assert true)
(define-const var1506 String (toString/-2075883882 var1660)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), precedence/-1875912268=([org.antlr.v4.runtime.atn.PrecedencePredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2961=org.antlr.v4.runtime.atn.PrecedencePredicateTransition, var1221=r1, var535=$r0, var3429=$i0, var871=$r2, var1660=$r3, var1506=$r4}
; {org.antlr.v4.runtime.atn.PrecedencePredicateTransition=var2961, r1=var1221, $r0=var535, $i0=var3429, $r2=var871, $r3=var1660, $r4=var1506}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.PrecedencePredicateTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: int precedence>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" >= _p");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1