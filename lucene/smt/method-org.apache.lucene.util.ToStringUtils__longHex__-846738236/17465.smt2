(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var293 Int) ; Statement: l3 := @parameter0: long 
(assert (not (= var293 null-Int)))
(define-const var3113 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[16] 
(define-const var377 Int 16) ; Statement: i4 = 16 
(assert true) ; Non Conditional
(define-const var2035 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var377!1 Int (+ var377 var2035)) ; Statement: i4 = i4 + $i6 
 ; Statement: if i4 < 0 goto $r4 = new java.lang.String 
(assert (< var377!1 0)) ; Cond: i4 < 0 
(define-const var1030 String String-init) ; Statement: $r4 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1030 var3113)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var1030!1 String)
(declare-const var3113!1 (Array Int Int))
(define-const var2827 String (str.++ "0x\u0001" var1030!1)) ; Statement: $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("0x\u0001") 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var293=l3, var3113=r0, var377=i4, var2035=$i6, var1030=$r4, var2827=$r2}
; {l3=var293, r0=var3113, i4=var377, $i6=var2035, $r4=var1030, $r2=var2827}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts l3 := @parameter0: long;	r0 = newarray (char)[16];	i4 = 16;	$i6 = (int) -1;	i4 = i4 + $i6;	if i4 < 0 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	specialinvoke $r4.<java.lang.String: void <init>(char[])>(r0);	$r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("0x\u0001");	return $r2
;block_num 3