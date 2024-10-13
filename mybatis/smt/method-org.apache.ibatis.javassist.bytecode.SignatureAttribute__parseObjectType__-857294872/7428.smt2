(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3957 0)
(declare-sort var2121 0)
(declare-sort var2333 0)
(declare-sort var975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var2121) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var975_parseArray/-1826973640 (String var2121) var2333)
(declare-const null-String String)
(declare-const null-var2121 var2121)
(declare-const null-Bool Bool)
(declare-const var1082 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1082 null-String)))
(declare-const var1975 var2121) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var1975 null-var2121)))
(declare-const var2060 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2060 null-Bool)))
(define-const var3294 Int (position/442744389 var1975)) ; Statement: i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (and true (and (> (str.len var1082) var3294) (<= 0 var3294))))
(define-const var2435 Int (charAt/698050440 var1082 var3294)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0) 
(define-const var1608 Int (cast-from-Int-to-Int var2435)) ; Statement: $i4 = (int) $c1 
 ; Statement: lookupswitch($i4) {     case 76: goto $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null);     case 84: goto i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59);     case 91: goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);     default: goto if z0 == 0 goto $r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1); } 
(assert (and (= var1608 91) (and (not (= var1608 84)) (and (not (= var1608 76)) true)))) ; Intersect: Cond: $i4 == 91  and Intersect: Negate: Cond: $i4 == 84   and Intersect: Negate: Cond: $i4 == 76   and Non Conditional   
(define-const var2017 var2333 (var975_parseArray/-1826973640 var1082 var1975)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var975_parseArray/-1826973640=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType)}
; {var1082=r1, var3957=null_type, var2121=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var1975=r0, var2060=z0, var3294=i0, var2435=$c1, var1608=$i4, var2333=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var975=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var2017=$r2}
; {r1=var1082, null_type=var3957, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var2121, r0=var1975, z0=var2060, i0=var3294, $c1=var2435, $i4=var1608, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var2333, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var975, $r2=var2017}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	z0 := @parameter2: boolean;	i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0);	$i4 = (int) $c1;	lookupswitch($i4) {     case 76: goto $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null);     case 84: goto i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59);     case 91: goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);     default: goto if z0 == 0 goto $r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1); };	$r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);	return $r2
;block_num 2