(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2539 0)
(declare-sort var1009 0)
(declare-sort var214 0)
(declare-sort var2642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun directory/687146279 (var2539) var214)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun put/-1127386829 (var214 var2642 var2642) var2642)
(declare-fun cast-from-String-to-var2642 (String) var2642)
(declare-fun cast-from-Int-to-var2642 (Int) var2642)
(declare-const null-var2539 var2539)
(declare-const null-String String)
(declare-const var3171 var2539) ; Statement: r2 := @this: jdk.nashorn.internal.codegen.Namespace 
(assert (not (= var3171 null-var2539)))
(declare-const var1761 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1761 null-String)))
(assert true)
(define-const var3155 Int (length/-134980193 var1761)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2145 Int (cast-from-Int-to-Int 32768)) ; Statement: $i4 = (int) 32768 
 ; Statement: if $i0 <= $i4 goto $r16 = r0 
(assert (<= var3155 var2145)) ; Cond: $i0 <= $i4 
(define-const var466 String var1761) ; Statement: $r16 = r0 
(assert true) ; Non Conditional
(define-const var2457 String var466) ; Statement: r1 = $r16 
(define-const var3133 var2539 var3171) ; Statement: r17 = r2 
(assert true) ; Non Conditional
 ; Statement: if r17 == null goto $r3 = r2.<jdk.nashorn.internal.codegen.Namespace: java.util.HashMap directory> 
(assert (= var3133 null-var2539)) ; Cond: r17 == null 
(define-const var2074 var214 (directory/687146279 var3171)) ; Statement: $r3 = r2.<jdk.nashorn.internal.codegen.Namespace: java.util.HashMap directory> 
(define-const var3418 Int (Int_valueOf/-1371140006 0)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
(assert true)
;(assert (put/-1127386829 var2074 (cast-from-String-to-var2642 var2457) (cast-from-Int-to-var2642 var3418))) ; Statement: virtualinvoke $r3.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r4) 

(declare-const var2074!1 var214)
(declare-const var2457!1 String)
(declare-const var3418!1 Int)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), directory/687146279=([jdk.nashorn.internal.codegen.Namespace], java.util.HashMap), Int_valueOf/-1371140006=([int], java.lang.Integer), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2642=([java.lang.String], java.lang.Object), cast-from-Int-to-var2642=([java.lang.Integer], java.lang.Object)}
; {var2539=jdk.nashorn.internal.codegen.Namespace, var3171=r2, var1761=r0, var1009=null_type, var3155=$i0, var2145=$i4, var466=$r16, var2457=r1, var3133=r17, var214=java.util.HashMap, var2074=$r3, var3418=$r4, var2642=java.lang.Object}
; {jdk.nashorn.internal.codegen.Namespace=var2539, r2=var3171, r0=var1761, null_type=var1009, $i0=var3155, $i4=var2145, $r16=var466, r1=var2457, r17=var3133, java.util.HashMap=var214, $r3=var2074, $r4=var3418, java.lang.Object=var2642}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.codegen.Namespace;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = (int) 32768;	if $i0 <= $i4 goto $r16 = r0;	$r16 = r0;	r1 = $r16;	r17 = r2;	if r17 == null goto $r3 = r2.<jdk.nashorn.internal.codegen.Namespace: java.util.HashMap directory>;	$r3 = r2.<jdk.nashorn.internal.codegen.Namespace: java.util.HashMap directory>;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	virtualinvoke $r3.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r4);	return r1
;block_num 5