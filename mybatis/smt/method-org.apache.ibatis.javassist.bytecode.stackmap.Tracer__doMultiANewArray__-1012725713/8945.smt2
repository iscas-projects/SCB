(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3849 0)
(declare-sort var3371 0)
(declare-sort var2500 0)
(declare-sort var2185 0)
(declare-sort var3906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3371_readU16bit/-514445618 ((Array Int Int) Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun stackTop/-2024160490 (var3849) Int)
(declare-fun cpool/-2024160490 (var3849) var2500)
(declare-fun getClassInfo/1878292087 (var2500 Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun stackTypes/-2024160490 (var3849) (Array Int var2185))
(declare-fun var3906-init () var3906)
(declare-fun <init>/494465362 (var3906 String) void)
(declare-fun cast-from-var3906-to-var2185 (var3906) var2185)
(declare-const null-var3849 var3849)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var2185__ (Array Int var2185))
(declare-const var2564 var3849) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var2564 null-var3849)))
(declare-const var1030 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1030 null-Int)))
(declare-const var347 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var347 null-__Array__Int__Int__)))
(define-const var2160 Int (+ var1030 1)) ; Statement: $i1 = i0 + 1 
(define-const var1123 Int (var3371_readU16bit/-514445618 var347 var2160)) ; Statement: i2 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>(r0, $i1) 
(define-const var789 Int (+ var1030 3)) ; Statement: $i3 = i0 + 3 
(define-const var648 Int (select var347 var789)) ; Statement: $b4 = r0[$i3] 
(define-const var3019 Int (cast-from-Int-to-Int var648)) ; Statement: $s11 = (short) $b4 
(define-const var1312 Int (bv2nat (bvand ((_ int2bv 64) var3019) ((_ int2bv 64) 255)))) ; Statement: s5 = $s11 & 255 
(define-const var1420 Int (stackTop/-2024160490 var2564)) ; Statement: $i7 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> 
(define-const var3363 Int (cast-from-Int-to-Int var1312)) ; Statement: $i12 = (int) s5 
(define-const var2978 Int (- var3363 1)) ; Statement: $i6 = $i12 - 1 
(define-const var2967 Int (- var1420 var2978)) ; Statement: $i8 = $i7 - $i6 
(declare-const var2564!1 var3849)
(assert (not (= var2564!1 null-var3849)))
(assert (= (stackTop/-2024160490 var2564!1) var2967)) ; Statement: r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i8 
(define-const var456 var2500 (cpool/-2024160490 var2564!1)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.ConstPool cpool> 
(assert true)
(define-const var275 String (getClassInfo/1878292087 var456 var1123)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i2) 
(assert true)
(define-const var515 String (replace/1524665721 var275 46 47)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var523 (Array Int var2185) (stackTypes/-2024160490 var2564!1)) ; Statement: $r6 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes> 
(define-const var1336 Int (stackTop/-2024160490 var2564!1)) ; Statement: $i9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> 
(define-const var1248 Int (- var1336 1)) ; Statement: $i10 = $i9 - 1 
(define-const var3323 var3906 var3906-init) ; Statement: $r7 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName 
(assert true)
;(assert (<init>/494465362 var3323 var515)) ; Statement: specialinvoke $r7.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName: void <init>(java.lang.String)>(r4) 

(declare-const var3323!1 var3906)
(declare-const var515!1 String)
(declare-const var523!1 (Array Int var2185))
(assert (not (= var523!1 null-__Array__Int__var2185__)))
(assert (= (select var523!1 var1248) (cast-from-var3906-to-var2185 var3323!1))) ; Statement: $r6[$i10] = $r7 
 ; Statement: return 4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3371_readU16bit/-514445618=([byte[], int], int), cast-from-Int-to-Int=([byte], short), stackTop/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], int), cpool/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.ConstPool), getClassInfo/1878292087=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), stackTypes/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]), var3906-init=([], org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName), <init>/494465362=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName, java.lang.String], void), cast-from-var3906-to-var2185=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName], org.apache.ibatis.javassist.bytecode.stackmap.TypeData)}
; {var3849=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var2564=r1, var1030=i0, var347=r0, var2160=$i1, var3371=org.apache.ibatis.javassist.bytecode.ByteArray, var1123=i2, var789=$i3, var648=$b4, var3019=$s11, var1312=s5, var1420=$i7, var3363=$i12, var2978=$i6, var2967=$i8, var2500=org.apache.ibatis.javassist.bytecode.ConstPool, var456=$r2, var275=$r3, var515=r4, var2185=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var523=$r6, var1336=$i9, var1248=$i10, var3906=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName, var3323=$r7}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var3849, r1=var2564, i0=var1030, r0=var347, $i1=var2160, org.apache.ibatis.javassist.bytecode.ByteArray=var3371, i2=var1123, $i3=var789, $b4=var648, $s11=var3019, s5=var1312, $i7=var1420, $i12=var3363, $i6=var2978, $i8=var2967, org.apache.ibatis.javassist.bytecode.ConstPool=var2500, $r2=var456, $r3=var275, r4=var515, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var2185, $r6=var523, $i9=var1336, $i10=var1248, org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName=var3906, $r7=var3323}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	i0 := @parameter0: int;	r0 := @parameter1: byte[];	$i1 = i0 + 1;	i2 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>(r0, $i1);	$i3 = i0 + 3;	$b4 = r0[$i3];	$s11 = (short) $b4;	s5 = $s11 & 255;	$i7 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$i12 = (int) s5;	$i6 = $i12 - 1;	$i8 = $i7 - $i6;	r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i8;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.ConstPool cpool>;	$r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r6 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$i9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$i10 = $i9 - 1;	$r7 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;	specialinvoke $r7.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName: void <init>(java.lang.String)>(r4);	$r6[$i10] = $r7;	return 4
;block_num 1