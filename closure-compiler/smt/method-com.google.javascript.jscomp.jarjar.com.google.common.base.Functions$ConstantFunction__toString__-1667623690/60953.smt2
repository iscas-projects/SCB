(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1249 0)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1417995562 (var1249) var122)
(declare-fun append/-1031950772 (String var122) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1249 var1249)
(declare-const var789 var1249) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ConstantFunction 
(assert (not (= var789 null-var1249)))
(define-const var1854 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1854)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1854!1 String)
(assert (= var1854!1 ""))
(assert true)
(define-const var1411 String (append/672562846 var1854!1 "Functions.constant(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.constant(") 
(declare-const var1854!2 String)
(assert (= var1854!2 (str.++ var1854!1 "Functions.constant(")))
(define-const var1798 var122 (value/-1417995562 var789)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ConstantFunction: java.lang.Object value> 
(assert true)
(define-const var674 String (append/-1031950772 var1411 var1798)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1411!1 String)
(assert (str.prefixof var1411 var1411!1))
(assert true)
(define-const var1920 String (append/672562846 var674 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var674!1 String)
(assert (= var674!1 (str.++ var674 ")")))
(assert true)
(define-const var613 String (toString/-2075883882 var1920)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1417995562=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ConstantFunction], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1249=com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ConstantFunction, var789=r1, var1854=$r0, var1411=$r3, var122=java.lang.Object, var1798=$r2, var674=$r4, var1920=$r5, var613=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ConstantFunction=var1249, r1=var789, $r0=var1854, $r3=var1411, java.lang.Object=var122, $r2=var1798, $r4=var674, $r5=var1920, $r6=var613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ConstantFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.constant(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ConstantFunction: java.lang.Object value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1