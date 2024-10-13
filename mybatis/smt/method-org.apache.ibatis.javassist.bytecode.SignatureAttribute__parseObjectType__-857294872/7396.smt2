(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1693 0)
(declare-sort var972 0)
(declare-sort var2538 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var972) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1709_parseClassType2/181761063 (String var972 var2538) var2538)
(declare-const null-String String)
(declare-const null-var972 var972)
(declare-const null-Bool Bool)
(declare-const null-var2538 var2538)
(declare-const var2169 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2169 null-String)))
(declare-const var1531 var972) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var1531 null-var972)))
(declare-const var2150 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2150 null-Bool)))
(define-const var2274 Int (position/442744389 var1531)) ; Statement: i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (and true (and (> (str.len var2169) var2274) (<= 0 var2274))))
(define-const var798 Int (charAt/698050440 var2169 var2274)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0) 
(define-const var1437 Int (cast-from-Int-to-Int var798)) ; Statement: $i4 = (int) $c1 
 ; Statement: lookupswitch($i4) {     case 76: goto $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null);     case 84: goto i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59);     case 91: goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);     default: goto if z0 == 0 goto $r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1); } 
(assert (and (= var1437 76) true)) ; Intersect: Cond: $i4 == 76  and Non Conditional 
(define-const var1015 var2538 (var1709_parseClassType2/181761063 var2169 var1531 null-var2538)) ; Statement: $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1709_parseClassType2/181761063=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)}
; {var2169=r1, var1693=null_type, var972=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var1531=r0, var2150=z0, var2274=i0, var798=$c1, var1437=$i4, var2538=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var1709=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var1015=$r4}
; {r1=var2169, null_type=var1693, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var972, r0=var1531, z0=var2150, i0=var2274, $c1=var798, $i4=var1437, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var2538, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var1709, $r4=var1015}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	z0 := @parameter2: boolean;	i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0);	$i4 = (int) $c1;	lookupswitch($i4) {     case 76: goto $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null);     case 84: goto i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59);     case 91: goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);     default: goto if z0 == 0 goto $r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1); };	$r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null);	return $r4
;block_num 2