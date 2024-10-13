(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun info/-778566539 (var3006) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun typeParameterBoundTarget/-1065155598 (var3006 Int Int Int Int) void)
(declare-const null-var3006 var3006)
(declare-const null-Int Int)
(declare-const var3584 var3006) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker 
(assert (not (= var3584 null-var3006)))
(declare-const var3596 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3596 null-Int)))
(declare-const var1925 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1925 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r11 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 1: goto $r11 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 2: goto $r18 = new java.lang.RuntimeException;     case 3: goto $r18 = new java.lang.RuntimeException;     case 4: goto $r18 = new java.lang.RuntimeException;     case 5: goto $r18 = new java.lang.RuntimeException;     case 6: goto $r18 = new java.lang.RuntimeException;     case 7: goto $r18 = new java.lang.RuntimeException;     case 8: goto $r18 = new java.lang.RuntimeException;     case 9: goto $r18 = new java.lang.RuntimeException;     case 10: goto $r18 = new java.lang.RuntimeException;     case 11: goto $r18 = new java.lang.RuntimeException;     case 12: goto $r18 = new java.lang.RuntimeException;     case 13: goto $r18 = new java.lang.RuntimeException;     case 14: goto $r18 = new java.lang.RuntimeException;     case 15: goto $r18 = new java.lang.RuntimeException;     case 16: goto $r10 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 17: goto $r8 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 18: goto $r8 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 19: goto virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void emptyTarget(int,int)>(i1, i0);     case 20: goto virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void emptyTarget(int,int)>(i1, i0);     case 21: goto virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void emptyTarget(int,int)>(i1, i0);     case 22: goto $r7 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 23: goto $r6 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 24: goto $r18 = new java.lang.RuntimeException;     case 25: goto $r18 = new java.lang.RuntimeException;     case 26: goto $r18 = new java.lang.RuntimeException;     case 27: goto $r18 = new java.lang.RuntimeException;     case 28: goto $r18 = new java.lang.RuntimeException;     case 29: goto $r18 = new java.lang.RuntimeException;     case 30: goto $r18 = new java.lang.RuntimeException;     case 31: goto $r18 = new java.lang.RuntimeException;     case 32: goto $r18 = new java.lang.RuntimeException;     case 33: goto $r18 = new java.lang.RuntimeException;     case 34: goto $r18 = new java.lang.RuntimeException;     case 35: goto $r18 = new java.lang.RuntimeException;     case 36: goto $r18 = new java.lang.RuntimeException;     case 37: goto $r18 = new java.lang.RuntimeException;     case 38: goto $r18 = new java.lang.RuntimeException;     case 39: goto $r18 = new java.lang.RuntimeException;     case 40: goto $r18 = new java.lang.RuntimeException;     case 41: goto $r18 = new java.lang.RuntimeException;     case 42: goto $r18 = new java.lang.RuntimeException;     case 43: goto $r18 = new java.lang.RuntimeException;     case 44: goto $r18 = new java.lang.RuntimeException;     case 45: goto $r18 = new java.lang.RuntimeException;     case 46: goto $r18 = new java.lang.RuntimeException;     case 47: goto $r18 = new java.lang.RuntimeException;     case 48: goto $r18 = new java.lang.RuntimeException;     case 49: goto $r18 = new java.lang.RuntimeException;     case 50: goto $r18 = new java.lang.RuntimeException;     case 51: goto $r18 = new java.lang.RuntimeException;     case 52: goto $r18 = new java.lang.RuntimeException;     case 53: goto $r18 = new java.lang.RuntimeException;     case 54: goto $r18 = new java.lang.RuntimeException;     case 55: goto $r18 = new java.lang.RuntimeException;     case 56: goto $r18 = new java.lang.RuntimeException;     case 57: goto $r18 = new java.lang.RuntimeException;     case 58: goto $r18 = new java.lang.RuntimeException;     case 59: goto $r18 = new java.lang.RuntimeException;     case 60: goto $r18 = new java.lang.RuntimeException;     case 61: goto $r18 = new java.lang.RuntimeException;     case 62: goto $r18 = new java.lang.RuntimeException;     case 63: goto $r18 = new java.lang.RuntimeException;     case 64: goto $r5 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 65: goto $r5 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 66: goto $r4 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 67: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 68: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 69: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 70: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 71: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 72: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 73: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 74: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 75: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     default: goto $r18 = new java.lang.RuntimeException; } 
(assert (and (= var1925 17) (and (not (= var1925 16)) (and (not (= var1925 15)) (and (not (= var1925 14)) (and (not (= var1925 13)) (and (not (= var1925 12)) (and (not (= var1925 11)) (and (not (= var1925 10)) (and (not (= var1925 9)) (and (not (= var1925 8)) (and (not (= var1925 7)) (and (not (= var1925 6)) (and (not (= var1925 5)) (and (not (= var1925 4)) (and (not (= var1925 3)) (and (not (= var1925 2)) (and (not (= var1925 1)) (and (not (= var1925 0)) true))))))))))))))))))) ; Intersect: Cond: i0 == 17  and Intersect: Negate: Cond: i0 == 16   and Intersect: Negate: Cond: i0 == 15   and Intersect: Negate: Cond: i0 == 14   and Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional                  
(define-const var1558 (Array Int Int) (info/-778566539 var3584)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info> 
(define-const var2996 Int (select var1558 var3596)) ; Statement: $b12 = $r8[i1] 
(define-const var1681 Int (cast-from-Int-to-Int var2996)) ; Statement: $s32 = (short) $b12 
(define-const var1327 Int (bv2nat (bvand ((_ int2bv 64) var1681) ((_ int2bv 64) 255)))) ; Statement: s21 = $s32 & 255 
(define-const var2400 (Array Int Int) (info/-778566539 var3584)) ; Statement: $r9 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info> 
(define-const var2287 Int (+ var3596 1)) ; Statement: $i13 = i1 + 1 
(define-const var2020 Int (select var2400 var2287)) ; Statement: $b14 = $r9[$i13] 
(define-const var3072 Int (cast-from-Int-to-Int var2020)) ; Statement: $s33 = (short) $b14 
(define-const var3 Int (bv2nat (bvand ((_ int2bv 64) var3072) ((_ int2bv 64) 255)))) ; Statement: s22 = $s33 & 255 
(define-const var1821 Int (cast-from-Int-to-Int var1327)) ; Statement: $i34 = (int) s21 
(define-const var2209 Int (cast-from-Int-to-Int var3)) ; Statement: $i35 = (int) s22 
(assert true)
;(assert (typeParameterBoundTarget/-1065155598 var3584 var3596 var1925 var1821 var2209)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void typeParameterBoundTarget(int,int,int,int)>(i1, i0, $i34, $i35) 

(declare-const var3584!1 var3006)
(declare-const var3596!1 Int)
(declare-const var1925!1 Int)
(declare-const var1821!1 Int)
(declare-const var2209!1 Int)
(define-const var620 Int (+ var3596!1 2)) ; Statement: $i15 = i1 + 2 
 ; Statement: return $i15 
(check-sat)
(get-model)
(get-unsat-core)
; {info/-778566539=([org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker], byte[]), cast-from-Int-to-Int=([byte], short), typeParameterBoundTarget/-1065155598=([org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker, int, int, int, int], void)}
; {var3006=org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker, var3584=r0, var3596=i1, var1925=i0, var1558=$r8, var2996=$b12, var1681=$s32, var1327=s21, var2400=$r9, var2287=$i13, var2020=$b14, var3072=$s33, var3=s22, var1821=$i34, var2209=$i35, var620=$i15}
; {org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker=var3006, r0=var3584, i1=var3596, i0=var1925, $r8=var1558, $b12=var2996, $s32=var1681, s21=var1327, $r9=var2400, $i13=var2287, $b14=var2020, $s33=var3072, s22=var3, $i34=var1821, $i35=var2209, $i15=var620}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker;	i1 := @parameter0: int;	i0 := @parameter1: int;	tableswitch(i0) {     case 0: goto $r11 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 1: goto $r11 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 2: goto $r18 = new java.lang.RuntimeException;     case 3: goto $r18 = new java.lang.RuntimeException;     case 4: goto $r18 = new java.lang.RuntimeException;     case 5: goto $r18 = new java.lang.RuntimeException;     case 6: goto $r18 = new java.lang.RuntimeException;     case 7: goto $r18 = new java.lang.RuntimeException;     case 8: goto $r18 = new java.lang.RuntimeException;     case 9: goto $r18 = new java.lang.RuntimeException;     case 10: goto $r18 = new java.lang.RuntimeException;     case 11: goto $r18 = new java.lang.RuntimeException;     case 12: goto $r18 = new java.lang.RuntimeException;     case 13: goto $r18 = new java.lang.RuntimeException;     case 14: goto $r18 = new java.lang.RuntimeException;     case 15: goto $r18 = new java.lang.RuntimeException;     case 16: goto $r10 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 17: goto $r8 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 18: goto $r8 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 19: goto virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void emptyTarget(int,int)>(i1, i0);     case 20: goto virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void emptyTarget(int,int)>(i1, i0);     case 21: goto virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void emptyTarget(int,int)>(i1, i0);     case 22: goto $r7 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 23: goto $r6 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 24: goto $r18 = new java.lang.RuntimeException;     case 25: goto $r18 = new java.lang.RuntimeException;     case 26: goto $r18 = new java.lang.RuntimeException;     case 27: goto $r18 = new java.lang.RuntimeException;     case 28: goto $r18 = new java.lang.RuntimeException;     case 29: goto $r18 = new java.lang.RuntimeException;     case 30: goto $r18 = new java.lang.RuntimeException;     case 31: goto $r18 = new java.lang.RuntimeException;     case 32: goto $r18 = new java.lang.RuntimeException;     case 33: goto $r18 = new java.lang.RuntimeException;     case 34: goto $r18 = new java.lang.RuntimeException;     case 35: goto $r18 = new java.lang.RuntimeException;     case 36: goto $r18 = new java.lang.RuntimeException;     case 37: goto $r18 = new java.lang.RuntimeException;     case 38: goto $r18 = new java.lang.RuntimeException;     case 39: goto $r18 = new java.lang.RuntimeException;     case 40: goto $r18 = new java.lang.RuntimeException;     case 41: goto $r18 = new java.lang.RuntimeException;     case 42: goto $r18 = new java.lang.RuntimeException;     case 43: goto $r18 = new java.lang.RuntimeException;     case 44: goto $r18 = new java.lang.RuntimeException;     case 45: goto $r18 = new java.lang.RuntimeException;     case 46: goto $r18 = new java.lang.RuntimeException;     case 47: goto $r18 = new java.lang.RuntimeException;     case 48: goto $r18 = new java.lang.RuntimeException;     case 49: goto $r18 = new java.lang.RuntimeException;     case 50: goto $r18 = new java.lang.RuntimeException;     case 51: goto $r18 = new java.lang.RuntimeException;     case 52: goto $r18 = new java.lang.RuntimeException;     case 53: goto $r18 = new java.lang.RuntimeException;     case 54: goto $r18 = new java.lang.RuntimeException;     case 55: goto $r18 = new java.lang.RuntimeException;     case 56: goto $r18 = new java.lang.RuntimeException;     case 57: goto $r18 = new java.lang.RuntimeException;     case 58: goto $r18 = new java.lang.RuntimeException;     case 59: goto $r18 = new java.lang.RuntimeException;     case 60: goto $r18 = new java.lang.RuntimeException;     case 61: goto $r18 = new java.lang.RuntimeException;     case 62: goto $r18 = new java.lang.RuntimeException;     case 63: goto $r18 = new java.lang.RuntimeException;     case 64: goto $r5 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 65: goto $r5 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 66: goto $r4 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 67: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 68: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 69: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 70: goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 71: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 72: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 73: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 74: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     case 75: goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;     default: goto $r18 = new java.lang.RuntimeException; };	$r8 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;	$b12 = $r8[i1];	$s32 = (short) $b12;	s21 = $s32 & 255;	$r9 = r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: byte[] info>;	$i13 = i1 + 1;	$b14 = $r9[$i13];	$s33 = (short) $b14;	s22 = $s33 & 255;	$i34 = (int) s21;	$i35 = (int) s22;	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.TypeAnnotationsAttribute$SubWalker: void typeParameterBoundTarget(int,int,int,int)>(i1, i0, $i34, $i35);	$i15 = i1 + 2;	return $i15
;block_num 2