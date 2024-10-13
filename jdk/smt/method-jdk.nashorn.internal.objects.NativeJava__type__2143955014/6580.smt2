(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3068 0)
(declare-sort var1246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1246_simpleType/132423604 (String) ClassObject)
(declare-const null-String String)
(declare-const var518 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var518 null-String)))
(assert true)
(define-const var3606 Bool (endsWith/985337093 var518 "[]")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("[]") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class simpleType(java.lang.String)>(r0) 
(assert (= (ite var3606 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3634 ClassObject (var1246_simpleType/132423604 var518)) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class simpleType(java.lang.String)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1246_simpleType/132423604=([java.lang.String], java.lang.Class)}
; {var518=r0, var3068=null_type, var3606=$z0, var1246=jdk.nashorn.internal.objects.NativeJava, var3634=$r1}
; {r0=var518, null_type=var3068, $z0=var3606, jdk.nashorn.internal.objects.NativeJava=var1246, $r1=var3634}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	if $z0 == 0 goto $r1 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class simpleType(java.lang.String)>(r0);	$r1 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class simpleType(java.lang.String)>(r0);	return $r1
;block_num 2