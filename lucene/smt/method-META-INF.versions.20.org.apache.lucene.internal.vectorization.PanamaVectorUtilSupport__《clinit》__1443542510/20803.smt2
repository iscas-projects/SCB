(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1196 0)
(declare-sort var2737 0)
(declare-sort var1999 0)
(declare-sort var1127 0)
(declare-sort var988 0)
(declare-sort var2888 0)
(declare-sort var646 0)
(declare-sort var3756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1196!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var2737_preferredShape/-2089537863 () var2737)
(declare-fun vectorBitSize/1272887746 (var2737) Int)
(declare-fun orElse/1064659938 (var1999 Int) Int)
(declare-fun var2737_forBitSize/-697242203 (Int) var2737)
(declare-fun var988_of/-67104035 (ClassObject var2737) var988)
(declare-fun var988_vectorBitSize/1296486173 (var988) Int)
(declare-fun var988_withLanes/-99643836 (var988 ClassObject) var988)
(declare-fun var988_withShape/-2000220019 (var988 var2737) var988)
(declare-const var1127-TESTS_VECTOR_SIZE var1999)
(declare-const Int-TYPE ClassObject)
(declare-const var1196-INT_SPECIES var988)
(declare-const Float32-TYPE ClassObject)
(declare-const var1196-VECTOR_BITSIZE Int)
(declare-const var2888-SPECIES_MAX var988)
(declare-const var646-SPECIES_MAX var988)
(declare-const var3756-OS_ARCH String)
(declare-const var1127-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var887 ClassObject var1196!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var3161 Bool (desiredAssertionStatus/-1561484483 var887)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var3161 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2489 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var950 Bool var2489) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var3268 var2737 var2737_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var2005 Int (vectorBitSize/1272887746 var3268)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var3078 var1999 var1127-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var247 Int (orElse/1064659938 var3078 var2005)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var3091 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var1033 var2737 (var2737_forBitSize/-697242203 var247)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var3818 var988 (var988_of/-67104035 var3091 var1033)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var2617 var988 var3818) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var51 var988 var1196-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var36 Int (var988_vectorBitSize/1296486173 var51)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var2255 Int var36) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var3842 var988 var1196-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var2217 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var2675 var988 (var988_withLanes/-99643836 var3842 var2217)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var3043 var988 var2675) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var3669 Int var1196-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (not (< var3669 256))) ; Negate: Cond: $i1 < 256  
(define-const var810 var988 var2888-SPECIES_MAX) ; Statement: $r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var484 Int var1196-VECTOR_BITSIZE) ; Statement: $i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var1062 Int (div var484 (to_int (^ 2 2)))) ; Statement: $i4 = $i3 >> 2 
(define-const var949 var2737 (var2737_forBitSize/-697242203 var1062)) ; Statement: $r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4) 
(define-const var2796 var988 (var988_withShape/-2000220019 var810 var949)) ; Statement: $r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12) 
(define-const var2668 var988 var2796) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13 
(define-const var1082 var988 var646-SPECIES_MAX) ; Statement: $r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var3975 Int var1196-VECTOR_BITSIZE) ; Statement: $i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var690 Int (div var3975 (to_int (^ 2 1)))) ; Statement: $i6 = $i5 >> 1 
(define-const var550 var2737 (var2737_forBitSize/-697242203 var690)) ; Statement: $r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6) 
(define-const var670 var988 (var988_withShape/-2000220019 var1082 var550)) ; Statement: $r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15) 
(define-const var178 var988 var670) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16 
 ; Statement: goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>] 
(assert true) ; Non Conditional
(define-const var3476 String var3756-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var1017 Bool (= var3476 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var1017 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2780 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var3288 Bool var1127-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var3288 1 0) 0))) ; Cond: $z4 != 0 
(define-const var2610 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var1812 Bool var2610) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var2737_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var2737_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var988_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var988_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var988_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies), var988_withShape/-2000220019=([jdk.incubator.vector.VectorSpecies, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies)}
; {var1196=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var887=$r0, var3161=$z0, var2489=$z2, var950=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var2737=jdk.incubator.vector.VectorShape, var3268=$r1, var2005=$i7, var1999=java.util.OptionalInt, var1127=org.apache.lucene.internal.vectorization.VectorizationProvider, var3078=$r2, var247=$i8, var3091=$r3, var1033=$r4, var988=jdk.incubator.vector.VectorSpecies, var3818=$r5, var2617=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var51=$r6, var36=$i0, var2255=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var3842=$r8, var2217=$r7, var2675=$r9, var3043=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var3669=$i1, var2888=jdk.incubator.vector.ByteVector, var810=$r11, var484=$i3, var1062=$i4, var949=$r12, var2796=$r13, var2668=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var646=jdk.incubator.vector.ShortVector, var1082=$r14, var3975=$i5, var690=$i6, var550=$r15, var670=$r16, var178=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var3756=org.apache.lucene.util.Constants, var3476=$r10, var1017=$z1, var2780=$z3, var3288=$z4, var2610=$z5, var1812=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var1196, $r0=var887, $z0=var3161, $z2=var2489, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var950, jdk.incubator.vector.VectorShape=var2737, $r1=var3268, $i7=var2005, java.util.OptionalInt=var1999, org.apache.lucene.internal.vectorization.VectorizationProvider=var1127, $r2=var3078, $i8=var247, $r3=var3091, $r4=var1033, jdk.incubator.vector.VectorSpecies=var988, $r5=var3818, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var2617, $r6=var51, $i0=var36, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var2255, $r8=var3842, $r7=var2217, $r9=var2675, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var3043, $i1=var3669, jdk.incubator.vector.ByteVector=var2888, $r11=var810, $i3=var484, $i4=var1062, $r12=var949, $r13=var2796, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var2668, jdk.incubator.vector.ShortVector=var646, $r14=var1082, $i5=var3975, $i6=var690, $r15=var550, $r16=var670, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var178, org.apache.lucene.util.Constants=var3756, $r10=var3476, $z1=var1017, $z3=var2780, $z4=var3288, $z5=var2610, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var1812}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	$r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i4 = $i3 >> 2;	$r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4);	$r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13;	$r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i6 = $i5 >> 1;	$r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6);	$r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16;	goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>];	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9