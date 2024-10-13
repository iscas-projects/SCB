(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3962 0)
(declare-sort var1991 0)
(declare-sort var1211 0)
(declare-sort var2441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun var1991_put/1464166817 (var1991 var2441 var2441) var2441)
(declare-fun cast-from-String-to-var2441 (String) var2441)
(declare-const null-var3962 var3962)
(declare-const null-var1991 var1991)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var840 var3962) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream 
(assert (not (= var840 null-var3962)))
(declare-const var3437 var1991) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var3437 null-var1991)))
(declare-const var1634 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1634 null-String)))
(declare-const var229 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var229 null-Int)))
(declare-const var1792 Int) ; Statement: l2 := @parameter3: long 
(assert (not (= var1792 null-Int)))
(define-const var408 Int (ite (> var229 0) 1 (ite (< var229 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1808 Int (cast-from-Int-to-Int var408)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 < 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(assert (< var1808 0)) ; Cond: $i4 < 0 
(define-const var1855 String (String_valueOf/-107395227 var229)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
;(assert (var1991_put/1464166817 var3437 (cast-from-String-to-var2441 var1634) (cast-from-String-to-var2441 var1855))) ; Statement: interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r2) 

(declare-const var3437!1 var1991)
(declare-const var1634!1 String)
(declare-const var1855!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String_valueOf/-107395227=([long], java.lang.String), var1991_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2441=([java.lang.String], java.lang.Object)}
; {var3962=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, var840=r3, var1991=java.util.Map, var3437=r0, var1634=r1, var1211=null_type, var229=l0, var1792=l2, var408=$b1, var1808=$i4, var1855=$r2, var2441=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream=var3962, r3=var840, java.util.Map=var1991, r0=var3437, r1=var1634, null_type=var1211, l0=var229, l2=var1792, $b1=var408, $i4=var1808, $r2=var1855, java.lang.Object=var2441}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream;	r0 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.String;	l0 := @parameter2: long;	l2 := @parameter3: long;	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 < 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r2);	return
;block_num 3