(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var1494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1494-init () var1494)
(declare-fun <init>/875830710 (var1494 String) void)
(declare-const null-String String)
(declare-const var1886 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1886 null-String)))
(assert true)
(define-const var2453 Int (length/-134980193 var1886)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 128 goto i3 = 0 
(assert (not (< var2453 128))) ; Negate: Cond: $i0 < 128  
(define-const var1098 var1494 var1494-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2885 String (str.++ "Illegal service name: \u0027\u0001\u0027 is too long (must be < 128 chars)." var1886)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Illegal service name: \'\u0001\' is too long (must be < 128 chars).") 
(assert true)
;(assert (<init>/875830710 var1098 var2885)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var1098!1 var1494)
(declare-const var2885!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1494-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1886=r0, var851=null_type, var2453=$i0, var1494=java.lang.IllegalArgumentException, var1098=$r3, var2885=$r4}
; {r0=var1886, null_type=var851, $i0=var2453, java.lang.IllegalArgumentException=var1494, $r3=var1098, $r4=var2885}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 < 128 goto i3 = 0;	$r3 = new java.lang.IllegalArgumentException;	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Illegal service name: \'\u0001\' is too long (must be < 128 chars).");	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r3
;block_num 2