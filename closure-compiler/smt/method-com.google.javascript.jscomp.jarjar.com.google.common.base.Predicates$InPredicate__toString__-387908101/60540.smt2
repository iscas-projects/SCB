(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var134 0)
(declare-sort var1344 0)
(declare-sort var498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/-891623269 (var134) var1344)
(declare-fun append/-1031950772 (String var498) String)
(declare-fun cast-from-var1344-to-var498 (var1344) var498)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var134 var134)
(declare-const var2246 var134) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InPredicate 
(assert (not (= var2246 null-var134)))
(define-const var1059 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1059)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1059!1 String)
(assert (= var1059!1 ""))
(assert true)
(define-const var755 String (append/672562846 var1059!1 "Predicates.in(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.in(") 
(declare-const var1059!2 String)
(assert (= var1059!2 (str.++ var1059!1 "Predicates.in(")))
(define-const var1857 var1344 (target/-891623269 var2246)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InPredicate: java.util.Collection target> 
(assert true)
(define-const var2414 String (append/-1031950772 var755 (cast-from-var1344-to-var498 var1857))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var755!1 String)
(assert (str.prefixof var755 var755!1))
(assert true)
(define-const var2508 String (append/672562846 var2414 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 ")")))
(assert true)
(define-const var1195 String (toString/-2075883882 var2508)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/-891623269=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InPredicate], java.util.Collection), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1344-to-var498=([java.util.Collection], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var134=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InPredicate, var2246=r1, var1059=$r0, var755=$r3, var1344=java.util.Collection, var1857=$r2, var498=java.lang.Object, var2414=$r4, var2508=$r5, var1195=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InPredicate=var134, r1=var2246, $r0=var1059, $r3=var755, java.util.Collection=var1344, $r2=var1857, java.lang.Object=var498, $r4=var2414, $r5=var2508, $r6=var1195}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.in(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InPredicate: java.util.Collection target>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1