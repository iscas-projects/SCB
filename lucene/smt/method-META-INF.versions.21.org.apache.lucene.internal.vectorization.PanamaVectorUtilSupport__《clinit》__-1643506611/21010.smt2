(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3277 0)
(declare-sort var1645 0)
(declare-sort var478 0)
(declare-sort var1052 0)
(declare-sort var1567 0)
(declare-sort var1496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3277!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var1645_preferredShape/-2089537863 () var1645)
(declare-fun vectorBitSize/1272887746 (var1645) Int)
(declare-fun orElse/1064659938 (var478 Int) Int)
(declare-fun var1645_forBitSize/-697242203 (Int) var1645)
(declare-fun var1567_of/-67104035 (ClassObject var1645) var1567)
(declare-fun var1567_vectorBitSize/1296486173 (var1567) Int)
(declare-fun var1567_withLanes/-99643836 (var1567 ClassObject) var1567)
(declare-const var1052-TESTS_VECTOR_SIZE var478)
(declare-const Int-TYPE ClassObject)
(declare-const var3277-INT_SPECIES var1567)
(declare-const Float32-TYPE ClassObject)
(declare-const var3277-VECTOR_BITSIZE Int)
(declare-const null-var1567 var1567)
(declare-const var1496-OS_ARCH String)
(declare-const var1052-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var3599 ClassObject var3277!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var2878 Bool (desiredAssertionStatus/-1561484483 var3599)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var2878 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1637 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2] 
(assert true) ; Non Conditional
(define-const var3577 Bool var1637) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var1763 var1645 var1645_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var2277 Int (vectorBitSize/1272887746 var1763)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var3827 var478 var1052-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var1097 Int (orElse/1064659938 var3827 var2277)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var3881 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var2038 var1645 (var1645_forBitSize/-697242203 var1097)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var3032 var1567 (var1567_of/-67104035 var3881 var2038)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var604 var1567 var3032) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var3651 var1567 var3277-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var3319 Int (var1567_vectorBitSize/1296486173 var3651)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var1327 Int var3319) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var3229 var1567 var3277-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var1907 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var3194 var1567 (var1567_withLanes/-99643836 var3229 var1907)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var2498 var1567 var3194) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var1853 Int var3277-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (< var1853 256)) ; Cond: $i1 < 256 
(define-const var3783 var1567 null-var1567) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(define-const var2719 var1567 null-var1567) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null 
(assert true) ; Non Conditional
(define-const var2018 String var1496-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var1443 Bool (= var2018 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var1443 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2889 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var1582 Bool var1052-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var1582 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1448 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var1118 Bool var1448) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var1645_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var1645_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var1567_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var1567_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var1567_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies)}
; {var3277=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var3599=$r0, var2878=$z0, var1637=$z2, var3577=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var1645=jdk.incubator.vector.VectorShape, var1763=$r1, var2277=$i7, var478=java.util.OptionalInt, var1052=org.apache.lucene.internal.vectorization.VectorizationProvider, var3827=$r2, var1097=$i8, var3881=$r3, var2038=$r4, var1567=jdk.incubator.vector.VectorSpecies, var3032=$r5, var604=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var3651=$r6, var3319=$i0, var1327=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var3229=$r8, var1907=$r7, var3194=$r9, var2498=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var1853=$i1, var3783=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var2719=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var1496=org.apache.lucene.util.Constants, var2018=$r10, var1443=$z1, var2889=$z3, var1582=$z4, var1448=$z5, var1118=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var3277, $r0=var3599, $z0=var2878, $z2=var1637, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var3577, jdk.incubator.vector.VectorShape=var1645, $r1=var1763, $i7=var2277, java.util.OptionalInt=var478, org.apache.lucene.internal.vectorization.VectorizationProvider=var1052, $r2=var3827, $i8=var1097, $r3=var3881, $r4=var2038, jdk.incubator.vector.VectorSpecies=var1567, $r5=var3032, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var604, $r6=var3651, $i0=var3319, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var1327, $r8=var3229, $r7=var1907, $r9=var3194, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var2498, $i1=var1853, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var3783, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var2719, org.apache.lucene.util.Constants=var1496, $r10=var2018, $z1=var1443, $z3=var2889, $z4=var1582, $z5=var1448, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var1118}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null;	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9