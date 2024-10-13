(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var60 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sort/-41019612 (var60) Int)
(declare-const null-var60 var60)
(declare-const var325 var60) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var325 null-var60)))
(define-const var3487 Int (sort/-41019612 var325)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort> 
 ; Statement: tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r8 = new java.lang.StringBuilder;     case 10: goto $r9 = new java.lang.String;     default: goto return null; } 
(assert (and (not (= var3487 10)) (and (not (= var3487 9)) (and (not (= var3487 8)) (and (not (= var3487 7)) (and (not (= var3487 6)) (and (not (= var3487 5)) (and (not (= var3487 4)) (and (not (= var3487 3)) (and (not (= var3487 2)) (and (not (= var3487 1)) (and (not (= var3487 0)) true)))))))))))) ; Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional           
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {sort/-41019612=([jdk.internal.org.objectweb.asm.Type], int)}
; {var60=jdk.internal.org.objectweb.asm.Type, var325=r0, var3487=$i0}
; {jdk.internal.org.objectweb.asm.Type=var60, r0=var325, $i0=var3487}
;seq 
;cnt {}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Type;	$i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort>;	tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r8 = new java.lang.StringBuilder;     case 10: goto $r9 = new java.lang.String;     default: goto return null; };	return null
;block_num 2