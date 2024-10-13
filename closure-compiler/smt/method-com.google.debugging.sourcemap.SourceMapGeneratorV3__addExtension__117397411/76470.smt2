(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1815 0)
(declare-sort var2110 0)
(declare-sort var3965 0)
(declare-sort var329 0)
(declare-sort var3021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun extensions/-1058964508 (var1815) var329)
(declare-fun put/-1127386829 (var3021 var3965 var3965) var3965)
(declare-fun cast-from-var329-to-var3021 (var329) var3021)
(declare-fun cast-from-String-to-var3965 (String) var3965)
(declare-const null-var1815 var1815)
(declare-const null-String String)
(declare-const null-var3965 var3965)
(declare-const var2447 var1815) ; Statement: r1 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3 
(assert (not (= var2447 null-var1815)))
(declare-const var174 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var174 null-String)))
(declare-const var1141 var3965) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1141 null-var3965)))
(assert true)
(define-const var543 Bool (startsWith/-1785782452 var174 "x_")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("x_") 
 ; Statement: if $z0 != 0 goto $r3 = r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions> 
(assert (not (= (ite var543 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1726 var329 (extensions/-1058964508 var2447)) ; Statement: $r3 = r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions> 
(assert true)
;(assert (put/-1127386829 (cast-from-var329-to-var3021 var1726) (cast-from-String-to-var3965 var174) var1141)) ; Statement: virtualinvoke $r3.<java.util.LinkedHashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r2) 

(declare-const var1726!1 var329)
(declare-const var174!1 String)
(declare-const var1141!1 var3965)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), extensions/-1058964508=([com.google.debugging.sourcemap.SourceMapGeneratorV3], java.util.LinkedHashMap), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var329-to-var3021=([java.util.LinkedHashMap], java.util.HashMap), cast-from-String-to-var3965=([java.lang.String], java.lang.Object)}
; {var1815=com.google.debugging.sourcemap.SourceMapGeneratorV3, var2447=r1, var174=r0, var2110=null_type, var3965=java.lang.Object, var1141=r2, var543=$z0, var329=java.util.LinkedHashMap, var1726=$r3, var3021=java.util.HashMap}
; {com.google.debugging.sourcemap.SourceMapGeneratorV3=var1815, r1=var2447, r0=var174, null_type=var2110, java.lang.Object=var3965, r2=var1141, $z0=var543, java.util.LinkedHashMap=var329, $r3=var1726, java.util.HashMap=var3021}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("x_");	if $z0 != 0 goto $r3 = r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions>;	$r3 = r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions>;	virtualinvoke $r3.<java.util.LinkedHashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r2);	return
;block_num 2