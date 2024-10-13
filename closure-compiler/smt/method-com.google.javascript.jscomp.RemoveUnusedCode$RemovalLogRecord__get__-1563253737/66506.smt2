(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2783 0)
(declare-sort var1111 0)
(declare-sort var3919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun kind/184399049 (var2783) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun nameSupplier/184399049 (var2783) var1111)
(declare-fun var1111_get/1017044072 (var1111) var3919)
(declare-fun cast-from-var3919-to-String (var3919) String)
(declare-fun functionNameSupplier/184399049 (var2783) var1111)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(declare-const null-var2783 var2783)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3632 var2783) ; Statement: r1 := @this: com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord 
(assert (not (= var3632 null-var2783)))
(define-const var2013 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.CharSequence)[3] 
(define-const var2797 String (kind/184399049 var3632)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord: java.lang.String kind> 
(declare-const var2013!1 (Array Int String))
(assert (not (= var2013!1 null-__Array__Int__String__)))
(assert (= (select var2013!1 0) (cast-from-String-to-String var2797))) ; Statement: $r0[0] = $r2 
(define-const var1472 var1111 (nameSupplier/184399049 var3632)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord: java.util.function.Supplier nameSupplier> 
(define-const var1130 var3919 (var1111_get/1017044072 var1472)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.function.Supplier: java.lang.Object get()>() 
(define-const var1744 String (cast-from-var3919-to-String var1130)) ; Statement: $r5 = (java.lang.CharSequence) $r4 
(declare-const var2013!2 (Array Int String))
(assert (not (= var2013!2 null-__Array__Int__String__)))
(assert (= (select var2013!2 1) var1744)) ; Statement: $r0[1] = $r5 
(define-const var614 var1111 (functionNameSupplier/184399049 var3632)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord: java.util.function.Supplier functionNameSupplier> 
(define-const var2949 var3919 (var1111_get/1017044072 var614)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.function.Supplier: java.lang.Object get()>() 
(define-const var357 String (cast-from-var3919-to-String var2949)) ; Statement: $r8 = (java.lang.CharSequence) $r7 
(declare-const var2013!3 (Array Int String))
(assert (not (= var2013!3 null-__Array__Int__String__)))
(assert (= (select var2013!3 2) var357)) ; Statement: $r0[2] = $r8 
(define-const var3969 String (String_join/-1520935655 (cast-from-String-to-String "\t") var2013!3)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("\t", $r0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.CharSequence[]), kind/184399049=([com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), nameSupplier/184399049=([com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord], java.util.function.Supplier), var1111_get/1017044072=([java.util.function.Supplier], java.lang.Object), cast-from-var3919-to-String=([java.lang.Object], java.lang.CharSequence), functionNameSupplier/184399049=([com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord], java.util.function.Supplier), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String)}
; {var2783=com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord, var3632=r1, var2013=$r0, var2797=$r2, var1111=java.util.function.Supplier, var1472=$r3, var3919=java.lang.Object, var1130=$r4, var1744=$r5, var614=$r6, var2949=$r7, var357=$r8, var3969=$r9}
; {com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord=var2783, r1=var3632, $r0=var2013, $r2=var2797, java.util.function.Supplier=var1111, $r3=var1472, java.lang.Object=var3919, $r4=var1130, $r5=var1744, $r6=var614, $r7=var2949, $r8=var357, $r9=var3969}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord;	$r0 = newarray (java.lang.CharSequence)[3];	$r2 = r1.<com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord: java.lang.String kind>;	$r0[0] = $r2;	$r3 = r1.<com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord: java.util.function.Supplier nameSupplier>;	$r4 = interfaceinvoke $r3.<java.util.function.Supplier: java.lang.Object get()>();	$r5 = (java.lang.CharSequence) $r4;	$r0[1] = $r5;	$r6 = r1.<com.google.javascript.jscomp.RemoveUnusedCode$RemovalLogRecord: java.util.function.Supplier functionNameSupplier>;	$r7 = interfaceinvoke $r6.<java.util.function.Supplier: java.lang.Object get()>();	$r8 = (java.lang.CharSequence) $r7;	$r0[2] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("\t", $r0);	return $r9
;block_num 1