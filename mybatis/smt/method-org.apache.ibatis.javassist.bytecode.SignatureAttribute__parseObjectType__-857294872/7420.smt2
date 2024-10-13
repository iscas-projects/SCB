(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1069 0)
(declare-sort var2123 0)
(declare-sort var257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var2123) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun indexOf/485169684 (var2123 String Int) Int)
(declare-fun var257-init () var257)
(declare-fun <init>/1565913905 (var257 String Int Int) void)
(declare-const null-String String)
(declare-const null-var2123 var2123)
(declare-const null-Bool Bool)
(declare-const var2907 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2907 null-String)))
(declare-const var3591 var2123) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var3591 null-var2123)))
(declare-const var2132 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2132 null-Bool)))
(define-const var2256 Int (position/442744389 var3591)) ; Statement: i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (and true (and (> (str.len var2907) var2256) (<= 0 var2256))))
(define-const var1208 Int (charAt/698050440 var2907 var2256)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0) 
(define-const var2453 Int (cast-from-Int-to-Int var1208)) ; Statement: $i4 = (int) $c1 
 ; Statement: lookupswitch($i4) {     case 76: goto $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null);     case 84: goto i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59);     case 91: goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);     default: goto if z0 == 0 goto $r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1); } 
(assert (and (= var2453 84) (and (not (= var2453 76)) true))) ; Intersect: Cond: $i4 == 84  and Intersect: Negate: Cond: $i4 == 76   and Non Conditional  
(assert true)
(define-const var2339 Int (indexOf/485169684 var3591 var2907 59)) ; Statement: i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59) 
(define-const var3632 var257 var257-init) ; Statement: $r6 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable 
(define-const var2466 Int (+ var2256 1)) ; Statement: $i3 = i0 + 1 
(assert true)
;(assert (<init>/1565913905 var3632 var2907 var2466 var2339)) ; Statement: specialinvoke $r6.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable: void <init>(java.lang.String,int,int)>(r1, $i3, i2) 

(declare-const var3632!1 var257)
(declare-const var2907!1 String)
(declare-const var2466!1 Int)
(declare-const var2339!1 Int)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/485169684=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, java.lang.String, int], int), var257-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable), <init>/1565913905=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable, java.lang.String, int, int], void)}
; {var2907=r1, var1069=null_type, var2123=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var3591=r0, var2132=z0, var2256=i0, var1208=$c1, var2453=$i4, var2339=i2, var257=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable, var3632=$r6, var2466=$i3}
; {r1=var2907, null_type=var1069, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var2123, r0=var3591, z0=var2132, i0=var2256, $c1=var1208, $i4=var2453, i2=var2339, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable=var257, $r6=var3632, $i3=var2466}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	z0 := @parameter2: boolean;	i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0);	$i4 = (int) $c1;	lookupswitch($i4) {     case 76: goto $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, null);     case 84: goto i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59);     case 91: goto $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType parseArray(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, r0);     default: goto if z0 == 0 goto $r5 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1); };	i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int indexOf(java.lang.String,int)>(r1, 59);	$r6 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable;	$i3 = i0 + 1;	specialinvoke $r6.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable: void <init>(java.lang.String,int,int)>(r1, $i3, i2);	return $r6
;block_num 2