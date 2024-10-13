(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1503 0)
(declare-sort var2762 0)
(declare-sort var2154 0)
(declare-sort var3881 0)
(declare-sort var3857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun loadedLibs/87573868 (var1503) var2154)
(declare-fun get/499451311 (var2154 var3881) var3881)
(declare-fun cast-from-String-to-var3881 (String) var3881)
(declare-fun cast-from-var3881-to-var3857 (var3881) var3857)
(declare-const null-var1503 var1503)
(declare-const null-String String)
(declare-const null-var2154 var2154)
(declare-const var3270 var1503) ; Statement: r0 := @this: freemarker.core.Environment 
(assert (not (= var3270 null-var1503)))
(declare-const var1457 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1457 null-String)))
(assert true)
(define-const var1583 Bool (startsWith/-1785782452 var1457 "/")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs> 
(assert (= (ite var1583 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3596 var2154 (loadedLibs/87573868 var3270)) ; Statement: $r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs> 
 ; Statement: if $r1 == null goto return null 
(assert (not (= var3596 null-var2154))) ; Negate: Cond: $r1 == null  
(define-const var798 var2154 (loadedLibs/87573868 var3270)) ; Statement: $r2 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs> 
(assert true)
(define-const var2566 var3881 (get/499451311 var798 (cast-from-String-to-var3881 var1457))) ; Statement: $r3 = virtualinvoke $r2.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r5) 
(define-const var1235 var3857 (cast-from-var3881-to-var3857 var2566)) ; Statement: $r4 = (freemarker.core.Environment$Namespace) $r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), loadedLibs/87573868=([freemarker.core.Environment], java.util.HashMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-String-to-var3881=([java.lang.String], java.lang.Object), cast-from-var3881-to-var3857=([java.lang.Object], freemarker.core.Environment$Namespace)}
; {var1503=freemarker.core.Environment, var3270=r0, var1457=r5, var2762=null_type, var1583=$z0, var2154=java.util.HashMap, var3596=$r1, var798=$r2, var3881=java.lang.Object, var2566=$r3, var3857=freemarker.core.Environment$Namespace, var1235=$r4}
; {freemarker.core.Environment=var1503, r0=var3270, r5=var1457, null_type=var2762, $z0=var1583, java.util.HashMap=var2154, $r1=var3596, $r2=var798, java.lang.Object=var3881, $r3=var2566, freemarker.core.Environment$Namespace=var3857, $r4=var1235}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.Environment;	r5 := @parameter0: java.lang.String;	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs>;	$r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs>;	if $r1 == null goto return null;	$r2 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs>;	$r3 = virtualinvoke $r2.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r5);	$r4 = (freemarker.core.Environment$Namespace) $r3;	return $r4
;block_num 3