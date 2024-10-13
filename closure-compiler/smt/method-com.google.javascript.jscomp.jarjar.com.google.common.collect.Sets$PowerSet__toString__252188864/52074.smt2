(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3907 0)
(declare-sort var2394 0)
(declare-sort var131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun inputSet/1580988192 (var3907) var2394)
(declare-fun append/-1031950772 (String var131) String)
(declare-fun cast-from-var2394-to-var131 (var2394) var131)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3907 var3907)
(declare-const var1435 var3907) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$PowerSet 
(assert (not (= var1435 null-var3907)))
(define-const var2701 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2701)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2701!1 String)
(assert (= var2701!1 ""))
(assert true)
(define-const var1163 String (append/672562846 var2701!1 "powerSet(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("powerSet(") 
(declare-const var2701!2 String)
(assert (= var2701!2 (str.++ var2701!1 "powerSet(")))
(define-const var3350 var2394 (inputSet/1580988192 var1435)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$PowerSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap inputSet> 
(assert true)
(define-const var2275 String (append/-1031950772 var1163 (cast-from-var2394-to-var131 var3350))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1163!1 String)
(assert (str.prefixof var1163 var1163!1))
(assert true)
(define-const var2607 String (append/672562846 var2275 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2275!1 String)
(assert (= var2275!1 (str.++ var2275 ")")))
(assert true)
(define-const var3390 String (toString/-2075883882 var2607)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), inputSet/1580988192=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$PowerSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2394-to-var131=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3907=com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$PowerSet, var1435=r1, var2701=$r0, var1163=$r3, var2394=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3350=$r2, var131=java.lang.Object, var2275=$r4, var2607=$r5, var3390=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$PowerSet=var3907, r1=var1435, $r0=var2701, $r3=var1163, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2394, $r2=var3350, java.lang.Object=var131, $r4=var2275, $r5=var2607, $r6=var3390}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$PowerSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("powerSet(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$PowerSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap inputSet>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1