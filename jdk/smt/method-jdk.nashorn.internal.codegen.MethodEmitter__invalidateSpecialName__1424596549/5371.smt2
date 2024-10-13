(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var788 0)
(declare-sort var3705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var788 var788)
(declare-const null-String String)
(declare-const var1317 var788) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var1317 null-var788)))
(declare-const var1146 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1146 null-String)))
(define-const var1706 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var677 Int (hashCode/-467973558 var1146)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3045982: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 93029230: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("apply");     default: goto lookupswitch(b1) {     case 0: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     case 1: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     default: goto return r1; }; } 
(assert (and (not (= var677 93029230)) (and (not (= var677 3045982)) true))) ; Intersect: Negate: Cond: $i0 == 93029230   and Intersect: Negate: Cond: $i0 == 3045982   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     case 1: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     default: goto return r1; } 
(assert (and (not (= var1706 1)) (and (not (= var1706 0)) true))) ; Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var788=jdk.nashorn.internal.codegen.MethodEmitter, var1317=r1, var1146=r0, var3705=null_type, var1706=b1, var677=$i0}
; {jdk.nashorn.internal.codegen.MethodEmitter=var788, r1=var1317, r0=var1146, null_type=var3705, b1=var1706, $i0=var677}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3045982: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 93029230: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("apply");     default: goto lookupswitch(b1) {     case 0: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     case 1: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     default: goto return r1; }; };	lookupswitch(b1) {     case 0: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     case 1: goto specialinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object,java.lang.Object)>("invalidate_name", "name=", r0);     default: goto return r1; };	return r1
;block_num 3