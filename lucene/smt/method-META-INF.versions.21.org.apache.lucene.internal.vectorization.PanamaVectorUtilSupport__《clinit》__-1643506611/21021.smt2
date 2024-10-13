(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var274 0)
(declare-sort var2192 0)
(declare-sort var1225 0)
(declare-sort var322 0)
(declare-sort var2556 0)
(declare-sort var2720 0)
(declare-sort var2025 0)
(declare-sort var3330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var274!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var2192_preferredShape/-2089537863 () var2192)
(declare-fun vectorBitSize/1272887746 (var2192) Int)
(declare-fun orElse/1064659938 (var1225 Int) Int)
(declare-fun var2192_forBitSize/-697242203 (Int) var2192)
(declare-fun var2556_of/-67104035 (ClassObject var2192) var2556)
(declare-fun var2556_vectorBitSize/1296486173 (var2556) Int)
(declare-fun var2556_withLanes/-99643836 (var2556 ClassObject) var2556)
(declare-fun var2556_withShape/-2000220019 (var2556 var2192) var2556)
(declare-const var322-TESTS_VECTOR_SIZE var1225)
(declare-const Int-TYPE ClassObject)
(declare-const var274-INT_SPECIES var2556)
(declare-const Float32-TYPE ClassObject)
(declare-const var274-VECTOR_BITSIZE Int)
(declare-const var2720-SPECIES_MAX var2556)
(declare-const var2025-SPECIES_MAX var2556)
(declare-const var3330-OS_ARCH String)
(declare-const var322-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var3547 ClassObject var274!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var3812 Bool (desiredAssertionStatus/-1561484483 var3547)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var3812 1 0) 0))) ; Cond: $z0 != 0 
(define-const var289 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1948 Bool var289) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var1344 var2192 var2192_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var3102 Int (vectorBitSize/1272887746 var1344)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var3983 var1225 var322-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var1402 Int (orElse/1064659938 var3983 var3102)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var1509 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var2048 var2192 (var2192_forBitSize/-697242203 var1402)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var3349 var2556 (var2556_of/-67104035 var1509 var2048)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var3093 var2556 var3349) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var1789 var2556 var274-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var3614 Int (var2556_vectorBitSize/1296486173 var1789)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var3245 Int var3614) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var1266 var2556 var274-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var3152 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var3641 var2556 (var2556_withLanes/-99643836 var1266 var3152)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var3049 var2556 var3641) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var3889 Int var274-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (not (< var3889 256))) ; Negate: Cond: $i1 < 256  
(define-const var684 var2556 var2720-SPECIES_MAX) ; Statement: $r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var1962 Int var274-VECTOR_BITSIZE) ; Statement: $i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var2372 Int (div var1962 (to_int (^ 2 2)))) ; Statement: $i4 = $i3 >> 2 
(define-const var1792 var2192 (var2192_forBitSize/-697242203 var2372)) ; Statement: $r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4) 
(define-const var3834 var2556 (var2556_withShape/-2000220019 var684 var1792)) ; Statement: $r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12) 
(define-const var1565 var2556 var3834) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13 
(define-const var252 var2556 var2025-SPECIES_MAX) ; Statement: $r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var3540 Int var274-VECTOR_BITSIZE) ; Statement: $i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var2167 Int (div var3540 (to_int (^ 2 1)))) ; Statement: $i6 = $i5 >> 1 
(define-const var3798 var2192 (var2192_forBitSize/-697242203 var2167)) ; Statement: $r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6) 
(define-const var991 var2556 (var2556_withShape/-2000220019 var252 var3798)) ; Statement: $r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15) 
(define-const var373 var2556 var991) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16 
 ; Statement: goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>] 
(assert true) ; Non Conditional
(define-const var1688 String var3330-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var2689 Bool (= var1688 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var2689 1 0) 0)) ; Cond: $z1 == 0 
(define-const var692 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var3996 Bool var322-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var3996 1 0) 0))) ; Cond: $z4 != 0 
(define-const var2413 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var3270 Bool var2413) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var2192_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var2192_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var2556_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var2556_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var2556_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies), var2556_withShape/-2000220019=([jdk.incubator.vector.VectorSpecies, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies)}
; {var274=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var3547=$r0, var3812=$z0, var289=$z2, var1948=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var2192=jdk.incubator.vector.VectorShape, var1344=$r1, var3102=$i7, var1225=java.util.OptionalInt, var322=org.apache.lucene.internal.vectorization.VectorizationProvider, var3983=$r2, var1402=$i8, var1509=$r3, var2048=$r4, var2556=jdk.incubator.vector.VectorSpecies, var3349=$r5, var3093=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var1789=$r6, var3614=$i0, var3245=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var1266=$r8, var3152=$r7, var3641=$r9, var3049=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var3889=$i1, var2720=jdk.incubator.vector.ByteVector, var684=$r11, var1962=$i3, var2372=$i4, var1792=$r12, var3834=$r13, var1565=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var2025=jdk.incubator.vector.ShortVector, var252=$r14, var3540=$i5, var2167=$i6, var3798=$r15, var991=$r16, var373=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var3330=org.apache.lucene.util.Constants, var1688=$r10, var2689=$z1, var692=$z3, var3996=$z4, var2413=$z5, var3270=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var274, $r0=var3547, $z0=var3812, $z2=var289, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var1948, jdk.incubator.vector.VectorShape=var2192, $r1=var1344, $i7=var3102, java.util.OptionalInt=var1225, org.apache.lucene.internal.vectorization.VectorizationProvider=var322, $r2=var3983, $i8=var1402, $r3=var1509, $r4=var2048, jdk.incubator.vector.VectorSpecies=var2556, $r5=var3349, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var3093, $r6=var1789, $i0=var3614, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var3245, $r8=var1266, $r7=var3152, $r9=var3641, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var3049, $i1=var3889, jdk.incubator.vector.ByteVector=var2720, $r11=var684, $i3=var1962, $i4=var2372, $r12=var1792, $r13=var3834, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var1565, jdk.incubator.vector.ShortVector=var2025, $r14=var252, $i5=var3540, $i6=var2167, $r15=var3798, $r16=var991, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var373, org.apache.lucene.util.Constants=var3330, $r10=var1688, $z1=var2689, $z3=var692, $z4=var3996, $z5=var2413, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var3270}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	$r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i4 = $i3 >> 2;	$r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4);	$r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13;	$r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i6 = $i5 >> 1;	$r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6);	$r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16;	goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>];	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9