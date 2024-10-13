(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var532 0)
(declare-sort var2889 0)
(declare-sort var13 0)
(declare-sort var420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var2889) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var420_parseClassType2/181761063 (String var2889 var13) var13)
(declare-const null-String String)
(declare-const null-var2889 var2889)
(declare-const null-var13 var13)
(declare-const var3817 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3817 null-String)))
(declare-const var1837 var2889) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var1837 null-var2889)))
(define-const var1809 Int (position/442744389 var1837)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (and true (and (> (str.len var3817) var1809) (<= 0 var1809))))
(define-const var979 Int (charAt/698050440 var3817 var1809)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0) 
(define-const var1561 Int (cast-from-Int-to-Int var979)) ; Statement: $i2 = (int) $c1 
 ; Statement: if $i2 != 76 goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r0) 
(assert (not (not (= var1561 76)))) ; Negate: Cond: $i2 != 76  
(define-const var694 var13 (var420_parseClassType2/181761063 var3817 var1837 null-var13)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r0, r1, null) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var420_parseClassType2/181761063=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)}
; {var3817=r0, var532=null_type, var2889=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var1837=r1, var1809=$i0, var979=$c1, var1561=$i2, var13=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var420=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var694=$r3}
; {r0=var3817, null_type=var532, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var2889, r1=var1837, $i0=var1809, $c1=var979, $i2=var1561, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var13, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var420, $r3=var694}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	$i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0);	$i2 = (int) $c1;	if $i2 != 76 goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r0);	$r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r0, r1, null);	return $r3
;block_num 2