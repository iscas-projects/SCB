(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun desc/1665060946 (var3930) String)
(declare-fun curPos/1665060946 (var3930) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var3930 var3930)
(declare-const var2239 var3930) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator 
(assert (not (= var2239 null-var3930)))
(define-const var2001 String (desc/1665060946 var2239)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc> 
(define-const var2476 Int (curPos/1665060946 var2239)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos> 
(assert (and true (and (> (str.len var2001) var2476) (<= 0 var2476))))
(define-const var703 Int (charAt/698050440 var2001 var2476)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
 ; Statement: return $c1 
(check-sat)
(get-model)
(get-unsat-core)
; {desc/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], java.lang.String), curPos/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int), charAt/698050440=([java.lang.String, int], char)}
; {var3930=org.apache.ibatis.javassist.bytecode.Descriptor$Iterator, var2239=r0, var2001=$r1, var2476=$i0, var703=$c1}
; {org.apache.ibatis.javassist.bytecode.Descriptor$Iterator=var3930, r0=var2239, $r1=var2001, $i0=var2476, $c1=var703}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	return $c1
;block_num 1