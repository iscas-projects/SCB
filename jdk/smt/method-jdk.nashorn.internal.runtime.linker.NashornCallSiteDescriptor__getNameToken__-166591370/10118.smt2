(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3384 0)
(declare-sort var1813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1813-init () var1813)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun <init>/1107025377 (var1813 String) void)
(declare-const null-var3384 var3384)
(declare-const null-Int Int)
(declare-const var1797 var3384) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor 
(assert (not (= var1797 null-var3384)))
(declare-const var2675 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2675 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "dyn";     case 1: goto $r5 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;     case 2: goto $r1 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operand>;     default: goto $r2 = new java.lang.IndexOutOfBoundsException; } 
(assert (and (not (= var2675 2)) (and (not (= var2675 1)) (and (not (= var2675 0)) true)))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional   
(define-const var102 var1813 var1813-init) ; Statement: $r2 = new java.lang.IndexOutOfBoundsException 
(define-const var1241 String (String_valueOf/1240665136 var2675)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (<init>/1107025377 var102 var1241)) ; Statement: specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r3) 

(declare-const var102!1 var1813)
(declare-const var1241!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1813-init=([], java.lang.IndexOutOfBoundsException), String_valueOf/1240665136=([int], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3384=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var1797=r0, var2675=i0, var1813=java.lang.IndexOutOfBoundsException, var102=$r2, var1241=$r3}
; {jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var3384, r0=var1797, i0=var2675, java.lang.IndexOutOfBoundsException=var1813, $r2=var102, $r3=var1241}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "dyn";     case 1: goto $r5 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;     case 2: goto $r1 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operand>;     default: goto $r2 = new java.lang.IndexOutOfBoundsException; };	$r2 = new java.lang.IndexOutOfBoundsException;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	specialinvoke $r2.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r3);	throw $r2
;block_num 2