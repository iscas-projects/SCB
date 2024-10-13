(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1298 0)
(declare-sort var3653 0)
(declare-sort var1912 0)
(declare-sort var2543 0)
(declare-sort var2475 0)
(declare-sort var2012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1298!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var3653_preferredShape/-2089537863 () var3653)
(declare-fun vectorBitSize/1272887746 (var3653) Int)
(declare-fun orElse/1064659938 (var1912 Int) Int)
(declare-fun var3653_forBitSize/-697242203 (Int) var3653)
(declare-fun var2475_of/-67104035 (ClassObject var3653) var2475)
(declare-fun var2475_vectorBitSize/1296486173 (var2475) Int)
(declare-fun var2475_withLanes/-99643836 (var2475 ClassObject) var2475)
(declare-const var2543-TESTS_VECTOR_SIZE var1912)
(declare-const Int-TYPE ClassObject)
(declare-const var1298-INT_SPECIES var2475)
(declare-const Float32-TYPE ClassObject)
(declare-const var1298-VECTOR_BITSIZE Int)
(declare-const null-var2475 var2475)
(declare-const var2012-OS_ARCH String)
(declare-const var2543-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var446 ClassObject var1298!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var875 Bool (desiredAssertionStatus/-1561484483 var446)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var875 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1539 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2] 
(assert true) ; Non Conditional
(define-const var1877 Bool var1539) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var3180 var3653 var3653_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var2148 Int (vectorBitSize/1272887746 var3180)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var62 var1912 var2543-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var1774 Int (orElse/1064659938 var62 var2148)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var3842 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var3371 var3653 (var3653_forBitSize/-697242203 var1774)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var287 var2475 (var2475_of/-67104035 var3842 var3371)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var3172 var2475 var287) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var2152 var2475 var1298-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var392 Int (var2475_vectorBitSize/1296486173 var2152)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var2224 Int var392) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var1594 var2475 var1298-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var1672 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var2199 var2475 (var2475_withLanes/-99643836 var1594 var1672)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var338 var2475 var2199) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var868 Int var1298-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (< var868 256)) ; Cond: $i1 < 256 
(define-const var775 var2475 null-var2475) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(define-const var625 var2475 null-var2475) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null 
(assert true) ; Non Conditional
(define-const var2982 String var2012-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var3577 Bool (= var2982 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var3577 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3100 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var1175 Bool var2543-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var1175 1 0) 0))) ; Cond: $z4 != 0 
(define-const var791 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var3485 Bool var791) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var3653_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var3653_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var2475_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var2475_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var2475_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies)}
; {var1298=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var446=$r0, var875=$z0, var1539=$z2, var1877=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var3653=jdk.incubator.vector.VectorShape, var3180=$r1, var2148=$i7, var1912=java.util.OptionalInt, var2543=org.apache.lucene.internal.vectorization.VectorizationProvider, var62=$r2, var1774=$i8, var3842=$r3, var3371=$r4, var2475=jdk.incubator.vector.VectorSpecies, var287=$r5, var3172=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var2152=$r6, var392=$i0, var2224=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var1594=$r8, var1672=$r7, var2199=$r9, var338=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var868=$i1, var775=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var625=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var2012=org.apache.lucene.util.Constants, var2982=$r10, var3577=$z1, var3100=$z3, var1175=$z4, var791=$z5, var3485=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var1298, $r0=var446, $z0=var875, $z2=var1539, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var1877, jdk.incubator.vector.VectorShape=var3653, $r1=var3180, $i7=var2148, java.util.OptionalInt=var1912, org.apache.lucene.internal.vectorization.VectorizationProvider=var2543, $r2=var62, $i8=var1774, $r3=var3842, $r4=var3371, jdk.incubator.vector.VectorSpecies=var2475, $r5=var287, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var3172, $r6=var2152, $i0=var392, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var2224, $r8=var1594, $r7=var1672, $r9=var2199, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var338, $i1=var868, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var775, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var625, org.apache.lucene.util.Constants=var2012, $r10=var2982, $z1=var3577, $z3=var3100, $z4=var1175, $z5=var791, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var3485}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = null;	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9