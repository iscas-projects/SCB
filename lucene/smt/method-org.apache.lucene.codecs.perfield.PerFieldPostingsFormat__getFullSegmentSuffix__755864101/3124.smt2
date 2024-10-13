(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1253 0)
(declare-sort var2878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2878-init () var2878)
(declare-fun <init>/-1092629202 (var2878 String) void)
(declare-const null-String String)
(declare-const var1408 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1408 null-String)))
(declare-const var1314 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1314 null-String)))
(declare-const var2885 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2885 null-String)))
(assert true)
(define-const var475 Int (length/-134980193 var1314)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var475 0))) ; Cond: $i0 != 0 
(define-const var3804 var2878 var2878-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var241 String (str.++ "cannot embed PerFieldPostingsFormat inside itself (field \u0022\u0001\u0022 returned PerFieldPostingsFormat)" var1408)) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("cannot embed PerFieldPostingsFormat inside itself (field \"\u0001\" returned PerFieldPostingsFormat)") 
(assert true)
;(assert (<init>/-1092629202 var3804 var241)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r3) 

(declare-const var3804!1 var2878)
(declare-const var241!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2878-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1408=r2, var1253=null_type, var1314=r0, var2885=r4, var475=$i0, var2878=java.lang.IllegalStateException, var3804=$r1, var241=$r3}
; {r2=var1408, null_type=var1253, r0=var1314, r4=var2885, $i0=var475, java.lang.IllegalStateException=var2878, $r1=var3804, $r3=var241}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("cannot embed PerFieldPostingsFormat inside itself (field \"\u0001\" returned PerFieldPostingsFormat)");	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r3);	throw $r1
;block_num 2