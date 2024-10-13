(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3607 0)
(declare-sort var2626 0)
(declare-sort var3209 0)
(declare-sort var1011 0)
(declare-sort var1001 0)
(declare-sort var547 0)
(declare-sort var1148 0)
(declare-sort var2251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3607!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var2626_preferredShape/-2089537863 () var2626)
(declare-fun vectorBitSize/1272887746 (var2626) Int)
(declare-fun orElse/1064659938 (var3209 Int) Int)
(declare-fun var2626_forBitSize/-697242203 (Int) var2626)
(declare-fun var1001_of/-67104035 (ClassObject var2626) var1001)
(declare-fun var1001_vectorBitSize/1296486173 (var1001) Int)
(declare-fun var1001_withLanes/-99643836 (var1001 ClassObject) var1001)
(declare-fun var1001_withShape/-2000220019 (var1001 var2626) var1001)
(declare-const var1011-TESTS_VECTOR_SIZE var3209)
(declare-const Int-TYPE ClassObject)
(declare-const var3607-INT_SPECIES var1001)
(declare-const Float32-TYPE ClassObject)
(declare-const var3607-VECTOR_BITSIZE Int)
(declare-const var547-SPECIES_MAX var1001)
(declare-const var1148-SPECIES_MAX var1001)
(declare-const var2251-OS_ARCH String)
(declare-const var1011-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var3736 ClassObject var3607!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var2459 Bool (desiredAssertionStatus/-1561484483 var3736)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var2459 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var207 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2] 
(assert true) ; Non Conditional
(define-const var2633 Bool var207) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var1902 var2626 var2626_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var1418 Int (vectorBitSize/1272887746 var1902)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var3343 var3209 var1011-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var2385 Int (orElse/1064659938 var3343 var1418)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var526 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var3072 var2626 (var2626_forBitSize/-697242203 var2385)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var2728 var1001 (var1001_of/-67104035 var526 var3072)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var3707 var1001 var2728) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var733 var1001 var3607-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var2585 Int (var1001_vectorBitSize/1296486173 var733)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var1286 Int var2585) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var3990 var1001 var3607-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var3236 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var2584 var1001 (var1001_withLanes/-99643836 var3990 var3236)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var1101 var1001 var2584) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var2003 Int var3607-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (not (< var2003 256))) ; Negate: Cond: $i1 < 256  
(define-const var154 var1001 var547-SPECIES_MAX) ; Statement: $r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var2907 Int var3607-VECTOR_BITSIZE) ; Statement: $i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var1458 Int (div var2907 (to_int (^ 2 2)))) ; Statement: $i4 = $i3 >> 2 
(define-const var1356 var2626 (var2626_forBitSize/-697242203 var1458)) ; Statement: $r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4) 
(define-const var2321 var1001 (var1001_withShape/-2000220019 var154 var1356)) ; Statement: $r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12) 
(define-const var3105 var1001 var2321) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13 
(define-const var3908 var1001 var1148-SPECIES_MAX) ; Statement: $r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var1843 Int var3607-VECTOR_BITSIZE) ; Statement: $i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var251 Int (div var1843 (to_int (^ 2 1)))) ; Statement: $i6 = $i5 >> 1 
(define-const var2840 var2626 (var2626_forBitSize/-697242203 var251)) ; Statement: $r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6) 
(define-const var1513 var1001 (var1001_withShape/-2000220019 var3908 var2840)) ; Statement: $r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15) 
(define-const var2830 var1001 var1513) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16 
 ; Statement: goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>] 
(assert true) ; Non Conditional
(define-const var3446 String var2251-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var2275 Bool (= var3446 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var2275 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2104 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var2701 Bool var1011-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var2701 1 0) 0))) ; Cond: $z4 != 0 
(define-const var3821 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var274 Bool var3821) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var2626_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var2626_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var1001_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var1001_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var1001_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies), var1001_withShape/-2000220019=([jdk.incubator.vector.VectorSpecies, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies)}
; {var3607=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var3736=$r0, var2459=$z0, var207=$z2, var2633=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var2626=jdk.incubator.vector.VectorShape, var1902=$r1, var1418=$i7, var3209=java.util.OptionalInt, var1011=org.apache.lucene.internal.vectorization.VectorizationProvider, var3343=$r2, var2385=$i8, var526=$r3, var3072=$r4, var1001=jdk.incubator.vector.VectorSpecies, var2728=$r5, var3707=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var733=$r6, var2585=$i0, var1286=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var3990=$r8, var3236=$r7, var2584=$r9, var1101=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var2003=$i1, var547=jdk.incubator.vector.ByteVector, var154=$r11, var2907=$i3, var1458=$i4, var1356=$r12, var2321=$r13, var3105=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var1148=jdk.incubator.vector.ShortVector, var3908=$r14, var1843=$i5, var251=$i6, var2840=$r15, var1513=$r16, var2830=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var2251=org.apache.lucene.util.Constants, var3446=$r10, var2275=$z1, var2104=$z3, var2701=$z4, var3821=$z5, var274=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var3607, $r0=var3736, $z0=var2459, $z2=var207, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var2633, jdk.incubator.vector.VectorShape=var2626, $r1=var1902, $i7=var1418, java.util.OptionalInt=var3209, org.apache.lucene.internal.vectorization.VectorizationProvider=var1011, $r2=var3343, $i8=var2385, $r3=var526, $r4=var3072, jdk.incubator.vector.VectorSpecies=var1001, $r5=var2728, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var3707, $r6=var733, $i0=var2585, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var1286, $r8=var3990, $r7=var3236, $r9=var2584, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var1101, $i1=var2003, jdk.incubator.vector.ByteVector=var547, $r11=var154, $i3=var2907, $i4=var1458, $r12=var1356, $r13=var2321, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var3105, jdk.incubator.vector.ShortVector=var1148, $r14=var3908, $i5=var1843, $i6=var251, $r15=var2840, $r16=var1513, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var2830, org.apache.lucene.util.Constants=var2251, $r10=var3446, $z1=var2275, $z3=var2104, $z4=var2701, $z5=var3821, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var274}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	$r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i4 = $i3 >> 2;	$r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4);	$r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13;	$r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i6 = $i5 >> 1;	$r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6);	$r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16;	goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>];	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9