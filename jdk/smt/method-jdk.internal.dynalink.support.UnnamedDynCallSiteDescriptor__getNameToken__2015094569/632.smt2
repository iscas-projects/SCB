(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var897 0)
(declare-sort var2649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2649-init () var2649)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun <init>/1107025377 (var2649 String) void)
(declare-const null-var897 var897)
(declare-const null-Int Int)
(declare-const var2435 var897) ; Statement: r0 := @this: jdk.internal.dynalink.support.UnnamedDynCallSiteDescriptor 
(assert (not (= var2435 null-var897)))
(declare-const var1285 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1285 null-Int)))
 ; Statement: lookupswitch(i0) {     case 0: goto return "dyn";     case 1: goto $r1 = r0.<jdk.internal.dynalink.support.UnnamedDynCallSiteDescriptor: java.lang.String op>;     default: goto $r2 = new java.lang.IndexOutOfBoundsException; } 
(assert (and (not (= var1285 1)) (and (not (= var1285 0)) true))) ; Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional  
(define-const var316 var2649 var2649-init) ; Statement: $r2 = new java.lang.IndexOutOfBoundsException 
(define-const var3794 String (String_valueOf/1240665136 var1285)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (<init>/1107025377 var316 var3794)) ; Statement: specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r3) 

(declare-const var316!1 var2649)
(declare-const var3794!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2649-init=([], java.lang.IndexOutOfBoundsException), String_valueOf/1240665136=([int], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var897=jdk.internal.dynalink.support.UnnamedDynCallSiteDescriptor, var2435=r0, var1285=i0, var2649=java.lang.IndexOutOfBoundsException, var316=$r2, var3794=$r3}
; {jdk.internal.dynalink.support.UnnamedDynCallSiteDescriptor=var897, r0=var2435, i0=var1285, java.lang.IndexOutOfBoundsException=var2649, $r2=var316, $r3=var3794}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.UnnamedDynCallSiteDescriptor;	i0 := @parameter0: int;	lookupswitch(i0) {     case 0: goto return "dyn";     case 1: goto $r1 = r0.<jdk.internal.dynalink.support.UnnamedDynCallSiteDescriptor: java.lang.String op>;     default: goto $r2 = new java.lang.IndexOutOfBoundsException; };	$r2 = new java.lang.IndexOutOfBoundsException;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r3);	throw $r2
;block_num 2