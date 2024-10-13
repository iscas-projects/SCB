(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1323 0)
(declare-sort var64 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun tokenName/-1415157499 (var1323) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/74511955 (var64) Int)
(declare-fun cast-from-var1323-to-var64 (var1323) var64)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1323 var1323)
(declare-const var1374 var1323) ; Statement: r1 := @this: org.antlr.v4.runtime.tree.pattern.TokenTagToken 
(assert (not (= var1374 null-var1323)))
(define-const var856 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var856)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var856!1 String)
(assert (= var856!1 ""))
(define-const var2396 String (tokenName/-1415157499 var1374)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String tokenName> 
(assert true)
(define-const var994 String (append/672562846 var856!1 var2396)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var856!2 String)
(assert (= var856!2 (str.++ var856!1 var2396)))
(assert true)
(define-const var2268 String (append/672562846 var994 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var994!1 String)
(assert (= var994!1 (str.++ var994 ":")))
(define-const var727 Int (type/74511955 (cast-from-var1323-to-var64 var1374))) ; Statement: $i0 = r1.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: int type> 
(assert true)
(define-const var3691 String (append/-1001720160 var2268 var727)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2268!1 String)
(assert (str.prefixof var2268 var2268!1))
(assert true)
(define-const var3018 String (toString/-2075883882 var3691)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), tokenName/-1415157499=([org.antlr.v4.runtime.tree.pattern.TokenTagToken], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/74511955=([org.antlr.v4.runtime.CommonToken], int), cast-from-var1323-to-var64=([org.antlr.v4.runtime.tree.pattern.TokenTagToken], org.antlr.v4.runtime.CommonToken), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1323=org.antlr.v4.runtime.tree.pattern.TokenTagToken, var1374=r1, var856=$r0, var2396=$r2, var994=$r3, var2268=$r4, var64=org.antlr.v4.runtime.CommonToken, var727=$i0, var3691=$r5, var3018=$r6}
; {org.antlr.v4.runtime.tree.pattern.TokenTagToken=var1323, r1=var1374, $r0=var856, $r2=var2396, $r3=var994, $r4=var2268, org.antlr.v4.runtime.CommonToken=var64, $i0=var727, $r5=var3691, $r6=var3018}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.tree.pattern.TokenTagToken;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String tokenName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r1.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: int type>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1