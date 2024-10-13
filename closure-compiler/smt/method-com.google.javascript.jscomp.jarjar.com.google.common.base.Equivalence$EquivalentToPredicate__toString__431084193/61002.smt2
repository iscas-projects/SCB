(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1001 0)
(declare-sort var3453 0)
(declare-sort var3285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun equivalence/442135753 (var1001) var3453)
(declare-fun append/-1031950772 (String var3285) String)
(declare-fun cast-from-var3453-to-var3285 (var3453) var3285)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/442135753 (var1001) var3285)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1001 var1001)
(declare-const var1584 var1001) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate 
(assert (not (= var1584 null-var1001)))
(define-const var1036 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1036)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1036!1 String)
(assert (= var1036!1 ""))
(define-const var1017 var3453 (equivalence/442135753 var1584)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence equivalence> 
(assert true)
(define-const var106 String (append/-1031950772 var1036!1 (cast-from-var3453-to-var3285 var1017))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1036!2 String)
(assert (str.prefixof var1036!1 var1036!2))
(assert true)
(define-const var459 String (append/672562846 var106 ".equivalentTo(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".equivalentTo(") 
(declare-const var106!1 String)
(assert (= var106!1 (str.++ var106 ".equivalentTo(")))
(define-const var2463 var3285 (target/442135753 var1584)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate: java.lang.Object target> 
(assert true)
(define-const var269 String (append/-1031950772 var459 var2463)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var459!1 String)
(assert (str.prefixof var459 var459!1))
(assert true)
(define-const var334 String (append/672562846 var269 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var269!1 String)
(assert (= var269!1 (str.++ var269 ")")))
(assert true)
(define-const var3791 String (toString/-2075883882 var334)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), equivalence/442135753=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3453-to-var3285=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/442135753=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1001=com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate, var1584=r1, var1036=$r0, var3453=com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence, var1017=$r2, var3285=java.lang.Object, var106=$r3, var459=$r5, var2463=$r4, var269=$r6, var334=$r7, var3791=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate=var1001, r1=var1584, $r0=var1036, com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence=var3453, $r2=var1017, java.lang.Object=var3285, $r3=var106, $r5=var459, $r4=var2463, $r6=var269, $r7=var334, $r8=var3791}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence equivalence>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".equivalentTo(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence$EquivalentToPredicate: java.lang.Object target>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1