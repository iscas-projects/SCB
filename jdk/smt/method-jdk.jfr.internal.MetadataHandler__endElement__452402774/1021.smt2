(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2598 0)
(declare-sort var3099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2598 var2598)
(declare-const null-String String)
(declare-const var937 var2598) ; Statement: r1 := @this: jdk.jfr.internal.MetadataHandler 
(assert (not (= var937 null-var2598)))
(declare-const var2042 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2042 null-String)))
(declare-const var348 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var348 null-String)))
(declare-const var2182 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2182 null-String)))
(define-const var48 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var393 Int (hashCode/-467973558 var2182)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 2622298: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Type");     case 67338874: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Event");     case 67875034: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Field");     default: goto tableswitch(b1) {     case 0: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 1: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 2: goto $r2 = r1.<jdk.jfr.internal.MetadataHandler: jdk.jfr.internal.MetadataHandler$TypeElement currentType>;     default: goto return; }; } 
(assert (and (not (= var393 67875034)) (and (not (= var393 67338874)) (and (not (= var393 2622298)) true)))) ; Intersect: Negate: Cond: $i0 == 67875034   and Intersect: Negate: Cond: $i0 == 67338874   and Intersect: Negate: Cond: $i0 == 2622298   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 1: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 2: goto $r2 = r1.<jdk.jfr.internal.MetadataHandler: jdk.jfr.internal.MetadataHandler$TypeElement currentType>;     default: goto return; } 
(assert (and (not (= var48 2)) (and (not (= var48 1)) (and (not (= var48 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var2598=jdk.jfr.internal.MetadataHandler, var937=r1, var2042=r9, var3099=null_type, var348=r10, var2182=r0, var48=b1, var393=$i0}
; {jdk.jfr.internal.MetadataHandler=var2598, r1=var937, r9=var2042, null_type=var3099, r10=var348, r0=var2182, b1=var48, $i0=var393}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: jdk.jfr.internal.MetadataHandler;	r9 := @parameter0: java.lang.String;	r10 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 2622298: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Type");     case 67338874: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Event");     case 67875034: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Field");     default: goto tableswitch(b1) {     case 0: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 1: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 2: goto $r2 = r1.<jdk.jfr.internal.MetadataHandler: jdk.jfr.internal.MetadataHandler$TypeElement currentType>;     default: goto return; }; };	tableswitch(b1) {     case 0: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 1: goto $r8 = r1.<jdk.jfr.internal.MetadataHandler: java.util.Map types>;     case 2: goto $r2 = r1.<jdk.jfr.internal.MetadataHandler: jdk.jfr.internal.MetadataHandler$TypeElement currentType>;     default: goto return; };	return
;block_num 3