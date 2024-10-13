(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2591 0)
(declare-sort var871 0)
(declare-sort var1735 0)
(declare-sort var2125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun rankMap/1165736760 (var2591) var871)
(declare-fun keySet/-1809185322 (var871) var1735)
(declare-fun append/-1031950772 (String var2125) String)
(declare-fun cast-from-var1735-to-var2125 (var1735) var2125)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2591 var2591)
(declare-const var1649 var2591) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ExplicitOrdering 
(assert (not (= var1649 null-var2591)))
(define-const var3697 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3697)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3697!1 String)
(assert (= var3697!1 ""))
(assert true)
(define-const var782 String (append/672562846 var3697!1 "Ordering.explicit(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ordering.explicit(") 
(declare-const var3697!2 String)
(assert (= var3697!2 (str.++ var3697!1 "Ordering.explicit(")))
(define-const var513 var871 (rankMap/1165736760 var1649)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ExplicitOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap rankMap> 
(assert true)
(define-const var2037 var1735 (keySet/-1809185322 var513)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet keySet()>() 
(assert true)
(define-const var2583 String (append/-1031950772 var782 (cast-from-var1735-to-var2125 var2037))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var782!1 String)
(assert (str.prefixof var782 var782!1))
(assert true)
(define-const var1461 String (append/672562846 var2583 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2583!1 String)
(assert (= var2583!1 (str.++ var2583 ")")))
(assert true)
(define-const var3567 String (toString/-2075883882 var1461)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), rankMap/1165736760=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ExplicitOrdering], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), keySet/-1809185322=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1735-to-var2125=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2591=com.google.javascript.jscomp.jarjar.com.google.common.collect.ExplicitOrdering, var1649=r1, var3697=$r0, var782=$r4, var871=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var513=$r2, var1735=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2037=$r3, var2125=java.lang.Object, var2583=$r5, var1461=$r6, var3567=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ExplicitOrdering=var2591, r1=var1649, $r0=var3697, $r4=var782, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var871, $r2=var513, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1735, $r3=var2037, java.lang.Object=var2125, $r5=var2583, $r6=var1461, $r7=var3567}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ExplicitOrdering;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ordering.explicit(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ExplicitOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap rankMap>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet keySet()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1