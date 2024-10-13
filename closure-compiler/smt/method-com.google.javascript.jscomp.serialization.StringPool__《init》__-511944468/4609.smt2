(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var946 0)
(declare-sort var3569 0)
(declare-sort var3990 0)
(declare-sort var1905 0)
(declare-sort var2311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3990) void)
(declare-fun cast-from-var946-to-var3990 (var946) var3990)
(declare-fun maxLength/2044646696 (var946) Int)
(declare-fun pool/2044646696 (var946) var3569)
(declare-fun get/-1216255739 (var1905 Int) var3990)
(declare-fun cast-from-var3569-to-var1905 (var3569) var1905)
(declare-fun cast-from-var3990-to-String (var3990) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2311_checkState/1431124798 (Bool) void)
(declare-const null-var946 var946)
(declare-const null-Int Int)
(declare-const null-var3569 var3569)
(declare-const var3557 var946) ; Statement: r0 := @this: com.google.javascript.jscomp.serialization.StringPool 
(assert (not (= var3557 null-var946)))
(declare-const var3788 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3788 null-Int)))
(declare-const var961 var3569) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList 
(assert (not (= var961 null-var3569)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var946-to-var3990 var3557))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3557!1 var946)
(declare-const var3557!2 var946)
(assert (not (= var3557!2 null-var946)))
(assert (= (maxLength/2044646696 var3557!2) var3788)) ; Statement: r0.<com.google.javascript.jscomp.serialization.StringPool: int maxLength> = i0 
(declare-const var3557!3 var946)
(assert (not (= var3557!3 null-var946)))
(assert (= (pool/2044646696 var3557!3) var961)) ; Statement: r0.<com.google.javascript.jscomp.serialization.StringPool: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList pool> = r1 
(assert true)
(define-const var3313 var3990 (get/-1216255739 (cast-from-var3569-to-var1905 var961) 0)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: java.lang.Object get(int)>(0) 
(define-const var2789 String (cast-from-var3990-to-String var3313)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var3245 Bool (isEmpty/-1285796103 var2789)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
;(assert (var2311_checkState/1431124798 var3245)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3245!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var946-to-var3990=([com.google.javascript.jscomp.serialization.StringPool], java.lang.Object), maxLength/2044646696=([com.google.javascript.jscomp.serialization.StringPool], int), pool/2044646696=([com.google.javascript.jscomp.serialization.StringPool], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3569-to-var1905=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List), cast-from-var3990-to-String=([java.lang.Object], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2311_checkState/1431124798=([boolean], void)}
; {var946=com.google.javascript.jscomp.serialization.StringPool, var3557=r0, var3788=i0, var3569=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var961=r1, var3990=java.lang.Object, var1905=java.util.List, var3313=$r2, var2789=$r3, var3245=$z0, var2311=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.serialization.StringPool=var946, r0=var3557, i0=var3788, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3569, r1=var961, java.lang.Object=var3990, java.util.List=var1905, $r2=var3313, $r3=var2789, $z0=var3245, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2311}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.serialization.StringPool;	i0 := @parameter0: int;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.serialization.StringPool: int maxLength> = i0;	r0.<com.google.javascript.jscomp.serialization.StringPool: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList pool> = r1;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: java.lang.Object get(int)>(0);	$r3 = (java.lang.String) $r2;	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	return
;block_num 1