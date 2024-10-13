(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3366 0)
(declare-sort var3623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3623-init () var3623)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun <init>/1107025377 (var3623 String) void)
(declare-const null-var3366 var3366)
(declare-const null-Int Int)
(declare-const var2692 var3366) ; Statement: r0 := @this: jdk.internal.dynalink.support.NamedDynCallSiteDescriptor 
(assert (not (= var2692 null-var3366)))
(declare-const var3854 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3854 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "dyn";     case 1: goto $r2 = virtualinvoke r0.<jdk.internal.dynalink.support.NamedDynCallSiteDescriptor: java.lang.String getOp()>();     case 2: goto $r1 = r0.<jdk.internal.dynalink.support.NamedDynCallSiteDescriptor: java.lang.String name>;     default: goto $r3 = new java.lang.IndexOutOfBoundsException; } 
(assert (and (not (= var3854 2)) (and (not (= var3854 1)) (and (not (= var3854 0)) true)))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional   
(define-const var2888 var3623 var3623-init) ; Statement: $r3 = new java.lang.IndexOutOfBoundsException 
(define-const var2051 String (String_valueOf/1240665136 var3854)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (<init>/1107025377 var2888 var2051)) ; Statement: specialinvoke $r3.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r4) 

(declare-const var2888!1 var3623)
(declare-const var2051!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3623-init=([], java.lang.IndexOutOfBoundsException), String_valueOf/1240665136=([int], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3366=jdk.internal.dynalink.support.NamedDynCallSiteDescriptor, var2692=r0, var3854=i0, var3623=java.lang.IndexOutOfBoundsException, var2888=$r3, var2051=$r4}
; {jdk.internal.dynalink.support.NamedDynCallSiteDescriptor=var3366, r0=var2692, i0=var3854, java.lang.IndexOutOfBoundsException=var3623, $r3=var2888, $r4=var2051}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.NamedDynCallSiteDescriptor;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "dyn";     case 1: goto $r2 = virtualinvoke r0.<jdk.internal.dynalink.support.NamedDynCallSiteDescriptor: java.lang.String getOp()>();     case 2: goto $r1 = r0.<jdk.internal.dynalink.support.NamedDynCallSiteDescriptor: java.lang.String name>;     default: goto $r3 = new java.lang.IndexOutOfBoundsException; };	$r3 = new java.lang.IndexOutOfBoundsException;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	specialinvoke $r3.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r4);	throw $r3
;block_num 2