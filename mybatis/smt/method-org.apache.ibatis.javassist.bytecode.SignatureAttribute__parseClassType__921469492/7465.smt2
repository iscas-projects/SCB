(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3112 0)
(declare-sort var3133 0)
(declare-sort var1758 0)
(declare-sort var1236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var3133) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1236_error/-1216190606 (String) var1758)
(declare-const null-String String)
(declare-const null-var3133 var3133)
(declare-const var3775 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3775 null-String)))
(declare-const var1993 var3133) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var1993 null-var3133)))
(define-const var2458 Int (position/442744389 var1993)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (and true (and (> (str.len var3775) var2458) (<= 0 var2458))))
(define-const var1774 Int (charAt/698050440 var3775 var2458)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0) 
(define-const var2187 Int (cast-from-Int-to-Int var1774)) ; Statement: $i2 = (int) $c1 
 ; Statement: if $i2 != 76 goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r0) 
(assert (not (= var2187 76))) ; Cond: $i2 != 76 
(define-const var379 var1758 (var1236_error/-1216190606 var3775)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r0) 
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1236_error/-1216190606=([java.lang.String], org.apache.ibatis.javassist.bytecode.BadBytecode)}
; {var3775=r0, var3112=null_type, var3133=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var1993=r1, var2458=$i0, var1774=$c1, var2187=$i2, var1758=org.apache.ibatis.javassist.bytecode.BadBytecode, var1236=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var379=$r2}
; {r0=var3775, null_type=var3112, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var3133, r1=var1993, $i0=var2458, $c1=var1774, $i2=var2187, org.apache.ibatis.javassist.bytecode.BadBytecode=var1758, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var1236, $r2=var379}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	$i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0);	$i2 = (int) $c1;	if $i2 != 76 goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r0);	$r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r0);	throw $r2
;block_num 2