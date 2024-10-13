(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2506 0)
(declare-sort var3049 0)
(declare-sort var1717 0)
(declare-sort var1419 0)
(declare-sort var1828 0)
(declare-sort var867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2506!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var3049_preferredShape/-2089537863 () var3049)
(declare-fun vectorBitSize/1272887746 (var3049) Int)
(declare-fun orElse/1064659938 (var1717 Int) Int)
(declare-fun var3049_forBitSize/-697242203 (Int) var3049)
(declare-fun var1828_of/-67104035 (ClassObject var3049) var1828)
(declare-fun var1828_vectorBitSize/1296486173 (var1828) Int)
(declare-fun var1828_withLanes/-99643836 (var1828 ClassObject) var1828)
(declare-const var1419-TESTS_VECTOR_SIZE var1717)
(declare-const Int-TYPE ClassObject)
(declare-const var2506-INT_SPECIES var1828)
(declare-const Float32-TYPE ClassObject)
(declare-const var2506-VECTOR_BITSIZE Int)
(declare-const null-var1828 var1828)
(declare-const var867-OS_ARCH String)
(declare-const var1419-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var1203 ClassObject var2506!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var2442 Bool (desiredAssertionStatus/-1561484483 var1203)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var2442 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3956 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1927 Bool var3956) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var51 var3049 var3049_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var2633 Int (vectorBitSize/1272887746 var51)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var824 var1717 var1419-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var3082 Int (orElse/1064659938 var824 var2633)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var2762 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var881 var3049 (var3049_forBitSize/-697242203 var3082)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var3658 var1828 (var1828_of/-67104035 var2762 var881)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var2670 var1828 var3658) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var275 var1828 var2506-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var704 Int (var1828_vectorBitSize/1296486173 var275)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var1120 Int var704) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var1265 var1828 var2506-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var666 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var2981 var1828 (var1828_withLanes/-99643836 var1265 var666)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var576 var1828 var2981) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var395 Int var2506-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (< var395 256)) ; Cond: $i1 < 256 
(define-const var3683 var1828 null-var1828) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(define-const var2164 var1828 null-var1828) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null 
(assert true) ; Non Conditional
(define-const var1238 String var867-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var2484 Bool (= var1238 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var2484 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2247 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var2236 Bool var1419-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var2236 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1752 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var3672 Bool var1752) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var3049_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var3049_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var1828_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var1828_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var1828_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies)}
; {var2506=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var1203=$r0, var2442=$z0, var3956=$z2, var1927=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var3049=jdk.incubator.vector.VectorShape, var51=$r1, var2633=$i7, var1717=java.util.OptionalInt, var1419=org.apache.lucene.internal.vectorization.VectorizationProvider, var824=$r2, var3082=$i8, var2762=$r3, var881=$r4, var1828=jdk.incubator.vector.VectorSpecies, var3658=$r5, var2670=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var275=$r6, var704=$i0, var1120=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var1265=$r8, var666=$r7, var2981=$r9, var576=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var395=$i1, var3683=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var2164=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var867=org.apache.lucene.util.Constants, var1238=$r10, var2484=$z1, var2247=$z3, var2236=$z4, var1752=$z5, var3672=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var2506, $r0=var1203, $z0=var2442, $z2=var3956, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var1927, jdk.incubator.vector.VectorShape=var3049, $r1=var51, $i7=var2633, java.util.OptionalInt=var1717, org.apache.lucene.internal.vectorization.VectorizationProvider=var1419, $r2=var824, $i8=var3082, $r3=var2762, $r4=var881, jdk.incubator.vector.VectorSpecies=var1828, $r5=var3658, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var2670, $r6=var275, $i0=var704, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var1120, $r8=var1265, $r7=var666, $r9=var2981, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var576, $i1=var395, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var3683, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var2164, org.apache.lucene.util.Constants=var867, $r10=var1238, $z1=var2484, $z3=var2247, $z4=var2236, $z5=var1752, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var3672}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null;	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9