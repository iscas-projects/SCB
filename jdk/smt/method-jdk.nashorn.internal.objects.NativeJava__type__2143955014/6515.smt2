(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1589 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var3820_arrayType/400883185 (String) ClassObject)
(declare-const null-String String)
(declare-const var276 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var276 null-String)))
(assert true)
(define-const var3645 Bool (endsWith/985337093 var276 "[]")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("[]") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class simpleType(java.lang.String)>(r0) 
(assert (not (= (ite var3645 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3568 ClassObject (var3820_arrayType/400883185 var276)) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class arrayType(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var3820_arrayType/400883185=([java.lang.String], java.lang.Class)}
; {var276=r0, var1589=null_type, var3645=$z0, var3820=jdk.nashorn.internal.objects.NativeJava, var3568=$r2}
; {r0=var276, null_type=var1589, $z0=var3645, jdk.nashorn.internal.objects.NativeJava=var3820, $r2=var3568}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	if $z0 == 0 goto $r1 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class simpleType(java.lang.String)>(r0);	$r2 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class arrayType(java.lang.String)>(r0);	return $r2
;block_num 2