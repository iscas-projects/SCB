(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var983 0)
(declare-sort var540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var540-init () var540)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var540 String) void)
(declare-const null-var983 var983)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var801 var983) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var801 null-var983)))
(declare-const var1054 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1054 null-Int)))
(declare-const var1690 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var1690 null-__Array__Int__Int__)))
(define-const var82 Int (+ var1054 1)) ; Statement: $i1 = i0 + 1 
(define-const var974 Int (select var1690 var82)) ; Statement: $b2 = r0[$i1] 
(define-const var2664 Int (cast-from-Int-to-Int var974)) ; Statement: $s8 = (short) $b2 
(define-const var467 Int (bv2nat (bvand ((_ int2bv 64) var2664) ((_ int2bv 64) 255)))) ; Statement: s3 = $s8 & 255 
(define-const var2098 Int (cast-from-Int-to-Int var467)) ; Statement: $i9 = (int) s3 
 ; Statement: lookupswitch($i9) {     case 21: goto $r9 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType INTEGER>;     case 22: goto $r8 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;     case 23: goto $r7 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType FLOAT>;     case 24: goto $r6 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;     case 25: goto $i5 = i0 + 2;     case 54: goto $r5 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType INTEGER>;     case 55: goto $r4 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;     case 56: goto $r3 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType FLOAT>;     case 57: goto $r2 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;     case 58: goto $i4 = i0 + 2;     case 132: goto return 6;     case 169: goto virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void visitRET(int,byte[])>(i0, r0);     default: goto $r16 = new java.lang.RuntimeException; } 
(assert (and (not (= var2098 169)) (and (not (= var2098 132)) (and (not (= var2098 58)) (and (not (= var2098 57)) (and (not (= var2098 56)) (and (not (= var2098 55)) (and (not (= var2098 54)) (and (not (= var2098 25)) (and (not (= var2098 24)) (and (not (= var2098 23)) (and (not (= var2098 22)) (and (not (= var2098 21)) true))))))))))))) ; Intersect: Negate: Cond: $i9 == 169   and Intersect: Negate: Cond: $i9 == 132   and Intersect: Negate: Cond: $i9 == 58   and Intersect: Negate: Cond: $i9 == 57   and Intersect: Negate: Cond: $i9 == 56   and Intersect: Negate: Cond: $i9 == 55   and Intersect: Negate: Cond: $i9 == 54   and Intersect: Negate: Cond: $i9 == 25   and Intersect: Negate: Cond: $i9 == 24   and Intersect: Negate: Cond: $i9 == 23   and Intersect: Negate: Cond: $i9 == 22   and Intersect: Negate: Cond: $i9 == 21   and Non Conditional            
(define-const var1943 var540 var540-init) ; Statement: $r16 = new java.lang.RuntimeException 
(define-const var37 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var37)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var37!1 String)
(assert (= var37!1 ""))
(assert true)
(define-const var1608 String (append/672562846 var37!1 "bad WIDE instruction: ")) ; Statement: $r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad WIDE instruction: ") 
(declare-const var37!2 String)
(assert (= var37!2 (str.++ var37!1 "bad WIDE instruction: ")))
(define-const var1981 Int (cast-from-Int-to-Int var467)) ; Statement: $i10 = (int) s3 
(assert true)
(define-const var2871 String (append/-1001720160 var1608 var1981)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(declare-const var1608!1 String)
(assert (str.prefixof var1608 var1608!1))
(assert true)
(define-const var2560 String (toString/-2075883882 var2871)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1943 var2560)) ; Statement: specialinvoke $r16.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var1943!1 var540)
(declare-const var2560!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], short), var540-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var983=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var801=r1, var1054=i0, var1690=r0, var82=$i1, var974=$b2, var2664=$s8, var467=s3, var2098=$i9, var540=java.lang.RuntimeException, var1943=$r16, var37=$r15, var1608=$r12, var1981=$i10, var2871=$r13, var2560=$r14}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var983, r1=var801, i0=var1054, r0=var1690, $i1=var82, $b2=var974, $s8=var2664, s3=var467, $i9=var2098, java.lang.RuntimeException=var540, $r16=var1943, $r15=var37, $r12=var1608, $i10=var1981, $r13=var2871, $r14=var2560}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	i0 := @parameter0: int;	r0 := @parameter1: byte[];	$i1 = i0 + 1;	$b2 = r0[$i1];	$s8 = (short) $b2;	s3 = $s8 & 255;	$i9 = (int) s3;	lookupswitch($i9) {     case 21: goto $r9 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType INTEGER>;     case 22: goto $r8 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;     case 23: goto $r7 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType FLOAT>;     case 24: goto $r6 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;     case 25: goto $i5 = i0 + 2;     case 54: goto $r5 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType INTEGER>;     case 55: goto $r4 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;     case 56: goto $r3 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType FLOAT>;     case 57: goto $r2 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;     case 58: goto $i4 = i0 + 2;     case 132: goto return 6;     case 169: goto virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void visitRET(int,byte[])>(i0, r0);     default: goto $r16 = new java.lang.RuntimeException; };	$r16 = new java.lang.RuntimeException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad WIDE instruction: ");	$i10 = (int) s3;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14);	throw $r16
;block_num 2