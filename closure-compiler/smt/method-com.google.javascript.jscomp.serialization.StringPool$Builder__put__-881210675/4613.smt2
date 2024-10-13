(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1957 0)
(declare-sort var617 0)
(declare-sort var3441 0)
(declare-sort var559 0)
(declare-sort var1663 0)
(declare-sort var379 0)
(declare-sort var1413 0)
(declare-sort var870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3441_checkNotNull/1446102589 (var559) var559)
(declare-fun cast-from-String-to-var559 (String) var559)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun maxLength/-476969985 (var1957) Int)
(declare-fun pool/-476969985 (var1957) var1663)
(declare-fun var1413_bootstrap$/-1862708255 (var1957) var379)
(declare-fun computeIfAbsent/611583258 (var870 var559 var379) var559)
(declare-fun cast-from-var1663-to-var870 (var1663) var870)
(declare-fun cast-from-var559-to-Int (var559) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-var1957 var1957)
(declare-const null-String String)
(declare-const var1030 var1957) ; Statement: r1 := @this: com.google.javascript.jscomp.serialization.StringPool$Builder 
(assert (not (= var1030 null-var1957)))
(declare-const var2058 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2058 null-String)))
;(assert (var3441_checkNotNull/1446102589 (cast-from-String-to-var559 var2058))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2058!1 String)
(assert true)
(define-const var1860 Int (length/-134980193 var2058!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1747 Int (maxLength/-476969985 var1030)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.serialization.StringPool$Builder: int maxLength> 
 ; Statement: if $i1 <= $i0 goto $r2 = r1.<com.google.javascript.jscomp.serialization.StringPool$Builder: java.util.LinkedHashMap pool> 
(assert (<= var1860 var1747)) ; Cond: $i1 <= $i0 
(define-const var2393 var1663 (pool/-476969985 var1030)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.serialization.StringPool$Builder: java.util.LinkedHashMap pool> 
(define-const var2339 var379 (var1413_bootstrap$/-1862708255 var1030)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.serialization.StringPool$Builder$lambda_put_0__97: java.util.function.Function bootstrap$(com.google.javascript.jscomp.serialization.StringPool$Builder)>(r1) 
(assert true)
(define-const var2726 var559 (computeIfAbsent/611583258 (cast-from-var1663-to-var870 var2393) (cast-from-String-to-var559 var2058!1) var2339)) ; Statement: $r4 = virtualinvoke $r2.<java.util.LinkedHashMap: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r0, $r3) 
(define-const var3229 Int (cast-from-var559-to-Int var2726)) ; Statement: $r5 = (java.lang.Integer) $r4 
(assert true)
(define-const var235 Int (intValue/-1815674922 var3229)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3441_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var559=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), maxLength/-476969985=([com.google.javascript.jscomp.serialization.StringPool$Builder], int), pool/-476969985=([com.google.javascript.jscomp.serialization.StringPool$Builder], java.util.LinkedHashMap), var1413_bootstrap$/-1862708255=([com.google.javascript.jscomp.serialization.StringPool$Builder], java.util.function.Function), computeIfAbsent/611583258=([java.util.HashMap, java.lang.Object, java.util.function.Function], java.lang.Object), cast-from-var1663-to-var870=([java.util.LinkedHashMap], java.util.HashMap), cast-from-var559-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var1957=com.google.javascript.jscomp.serialization.StringPool$Builder, var1030=r1, var2058=r0, var617=null_type, var3441=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var559=java.lang.Object, var1860=$i1, var1747=$i0, var1663=java.util.LinkedHashMap, var2393=$r2, var379=java.util.function.Function, var1413=com.google.javascript.jscomp.serialization.StringPool$Builder$lambda_put_0__97, var2339=$r3, var870=java.util.HashMap, var2726=$r4, var3229=$r5, var235=$i2}
; {com.google.javascript.jscomp.serialization.StringPool$Builder=var1957, r1=var1030, r0=var2058, null_type=var617, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3441, java.lang.Object=var559, $i1=var1860, $i0=var1747, java.util.LinkedHashMap=var1663, $r2=var2393, java.util.function.Function=var379, com.google.javascript.jscomp.serialization.StringPool$Builder$lambda_put_0__97=var1413, $r3=var2339, java.util.HashMap=var870, $r4=var2726, $r5=var3229, $i2=var235}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.serialization.StringPool$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = r1.<com.google.javascript.jscomp.serialization.StringPool$Builder: int maxLength>;	if $i1 <= $i0 goto $r2 = r1.<com.google.javascript.jscomp.serialization.StringPool$Builder: java.util.LinkedHashMap pool>;	$r2 = r1.<com.google.javascript.jscomp.serialization.StringPool$Builder: java.util.LinkedHashMap pool>;	$r3 = staticinvoke <com.google.javascript.jscomp.serialization.StringPool$Builder$lambda_put_0__97: java.util.function.Function bootstrap$(com.google.javascript.jscomp.serialization.StringPool$Builder)>(r1);	$r4 = virtualinvoke $r2.<java.util.LinkedHashMap: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r0, $r3);	$r5 = (java.lang.Integer) $r4;	$i2 = virtualinvoke $r5.<java.lang.Integer: int intValue()>();	return $i2
;block_num 2