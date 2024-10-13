(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var1349 0)
(declare-sort var988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun map/1632629563 (var240) var1349)
(declare-fun append/-1031950772 (String var988) String)
(declare-fun cast-from-var1349-to-var988 (var1349) var988)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var240 var240)
(declare-const var875 var240) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionForMapNoDefault 
(assert (not (= var875 null-var240)))
(define-const var817 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var817)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var817!1 String)
(assert (= var817!1 ""))
(assert true)
(define-const var576 String (append/672562846 var817!1 "Functions.forMap(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forMap(") 
(declare-const var817!2 String)
(assert (= var817!2 (str.++ var817!1 "Functions.forMap(")))
(define-const var2363 var1349 (map/1632629563 var875)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionForMapNoDefault: java.util.Map map> 
(assert true)
(define-const var1565 String (append/-1031950772 var576 (cast-from-var1349-to-var988 var2363))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var576!1 String)
(assert (str.prefixof var576 var576!1))
(assert true)
(define-const var3028 String (append/672562846 var1565 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1565!1 String)
(assert (= var1565!1 (str.++ var1565 ")")))
(assert true)
(define-const var1686 String (toString/-2075883882 var3028)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), map/1632629563=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionForMapNoDefault], java.util.Map), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1349-to-var988=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var240=com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionForMapNoDefault, var875=r1, var817=$r0, var576=$r3, var1349=java.util.Map, var2363=$r2, var988=java.lang.Object, var1565=$r4, var3028=$r5, var1686=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionForMapNoDefault=var240, r1=var875, $r0=var817, $r3=var576, java.util.Map=var1349, $r2=var2363, java.lang.Object=var988, $r4=var1565, $r5=var3028, $r6=var1686}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionForMapNoDefault;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forMap(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionForMapNoDefault: java.util.Map map>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1