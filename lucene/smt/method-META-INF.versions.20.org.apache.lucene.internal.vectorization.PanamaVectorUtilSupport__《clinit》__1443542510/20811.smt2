(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3768 0)
(declare-sort var3599 0)
(declare-sort var2528 0)
(declare-sort var2430 0)
(declare-sort var1695 0)
(declare-sort var3682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3768!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var3599_preferredShape/-2089537863 () var3599)
(declare-fun vectorBitSize/1272887746 (var3599) Int)
(declare-fun orElse/1064659938 (var2528 Int) Int)
(declare-fun var3599_forBitSize/-697242203 (Int) var3599)
(declare-fun var1695_of/-67104035 (ClassObject var3599) var1695)
(declare-fun var1695_vectorBitSize/1296486173 (var1695) Int)
(declare-fun var1695_withLanes/-99643836 (var1695 ClassObject) var1695)
(declare-const var2430-TESTS_VECTOR_SIZE var2528)
(declare-const Int-TYPE ClassObject)
(declare-const var3768-INT_SPECIES var1695)
(declare-const Float32-TYPE ClassObject)
(declare-const var3768-VECTOR_BITSIZE Int)
(declare-const null-var1695 var1695)
(declare-const var3682-OS_ARCH String)
(declare-const var2430-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var3805 ClassObject var3768!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var1680 Bool (desiredAssertionStatus/-1561484483 var3805)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1680 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3764 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3734 Bool var3764) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var2681 var3599 var3599_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var526 Int (vectorBitSize/1272887746 var2681)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var3498 var2528 var2430-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var627 Int (orElse/1064659938 var3498 var526)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var1459 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var3126 var3599 (var3599_forBitSize/-697242203 var627)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var252 var1695 (var1695_of/-67104035 var1459 var3126)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var1993 var1695 var252) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var405 var1695 var3768-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var3819 Int (var1695_vectorBitSize/1296486173 var405)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var3696 Int var3819) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var969 var1695 var3768-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var771 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var3750 var1695 (var1695_withLanes/-99643836 var969 var771)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var2395 var1695 var3750) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var649 Int var3768-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (< var649 256)) ; Cond: $i1 < 256 
(define-const var5 var1695 null-var1695) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(define-const var2953 var1695 null-var1695) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null 
(assert true) ; Non Conditional
(define-const var1287 String var3682-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var3519 Bool (= var1287 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var3519 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3908 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var2743 Bool var2430-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var2743 1 0) 0))) ; Cond: $z4 != 0 
(define-const var384 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var1804 Bool var384) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var3599_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var3599_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var1695_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var1695_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var1695_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies)}
; {var3768=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var3805=$r0, var1680=$z0, var3764=$z2, var3734=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var3599=jdk.incubator.vector.VectorShape, var2681=$r1, var526=$i7, var2528=java.util.OptionalInt, var2430=org.apache.lucene.internal.vectorization.VectorizationProvider, var3498=$r2, var627=$i8, var1459=$r3, var3126=$r4, var1695=jdk.incubator.vector.VectorSpecies, var252=$r5, var1993=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var405=$r6, var3819=$i0, var3696=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var969=$r8, var771=$r7, var3750=$r9, var2395=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var649=$i1, var5=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var2953=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var3682=org.apache.lucene.util.Constants, var1287=$r10, var3519=$z1, var3908=$z3, var2743=$z4, var384=$z5, var1804=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var3768, $r0=var3805, $z0=var1680, $z2=var3764, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var3734, jdk.incubator.vector.VectorShape=var3599, $r1=var2681, $i7=var526, java.util.OptionalInt=var2528, org.apache.lucene.internal.vectorization.VectorizationProvider=var2430, $r2=var3498, $i8=var627, $r3=var1459, $r4=var3126, jdk.incubator.vector.VectorSpecies=var1695, $r5=var252, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var1993, $r6=var405, $i0=var3819, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var3696, $r8=var969, $r7=var771, $r9=var3750, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var2395, $i1=var649, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var5, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var2953, org.apache.lucene.util.Constants=var3682, $r10=var1287, $z1=var3519, $z3=var3908, $z4=var2743, $z5=var384, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var1804}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null;	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9