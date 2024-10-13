(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2380 0)
(declare-sort var2119 0)
(declare-sort var3920 0)
(declare-sort var3066 0)
(declare-sort var62 0)
(declare-sort var2818 0)
(declare-sort var2571 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2380!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var2119_preferredShape/-2089537863 () var2119)
(declare-fun vectorBitSize/1272887746 (var2119) Int)
(declare-fun orElse/1064659938 (var3920 Int) Int)
(declare-fun var2119_forBitSize/-697242203 (Int) var2119)
(declare-fun var62_of/-67104035 (ClassObject var2119) var62)
(declare-fun var62_vectorBitSize/1296486173 (var62) Int)
(declare-fun var62_withLanes/-99643836 (var62 ClassObject) var62)
(declare-fun var62_withShape/-2000220019 (var62 var2119) var62)
(declare-const var3066-TESTS_VECTOR_SIZE var3920)
(declare-const Int-TYPE ClassObject)
(declare-const var2380-INT_SPECIES var62)
(declare-const Float32-TYPE ClassObject)
(declare-const var2380-VECTOR_BITSIZE Int)
(declare-const var2818-SPECIES_MAX var62)
(declare-const var2571-SPECIES_MAX var62)
(declare-const var3108-OS_ARCH String)
(declare-const var3066-TESTS_FORCE_INTEGER_VECTORS Bool)
(define-const var3447 ClassObject var2380!class) ; Statement: $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;" 
(assert true)
(define-const var539 Bool (desiredAssertionStatus/-1561484483 var3447)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var539 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1885 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2] 
(assert true) ; Non Conditional
(define-const var1950 Bool var1885) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2 
(define-const var3198 var2119 var2119_preferredShape/-2089537863) ; Statement: $r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>() 
(assert true)
(define-const var2475 Int (vectorBitSize/1272887746 var3198)) ; Statement: $i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>() 
(define-const var2683 var3920 var3066-TESTS_VECTOR_SIZE) ; Statement: $r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE> 
(assert true)
(define-const var1129 Int (orElse/1064659938 var2683 var2475)) ; Statement: $i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7) 
(define-const var1265 ClassObject Int-TYPE) ; Statement: $r3 = <java.lang.Integer: java.lang.Class TYPE> 
(define-const var53 var2119 (var2119_forBitSize/-697242203 var1129)) ; Statement: $r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8) 
(define-const var1502 var62 (var62_of/-67104035 var1265 var53)) ; Statement: $r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4) 
(define-const var1745 var62 var1502) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5 
(define-const var682 var62 var2380-INT_SPECIES) ; Statement: $r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var1244 Int (var62_vectorBitSize/1296486173 var682)) ; Statement: $i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>() 
(define-const var3226 Int var1244) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0 
(define-const var1597 var62 var2380-INT_SPECIES) ; Statement: $r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> 
(define-const var1999 ClassObject Float32-TYPE) ; Statement: $r7 = <java.lang.Float: java.lang.Class TYPE> 
(define-const var456 var62 (var62_withLanes/-99643836 var1597 var1999)) ; Statement: $r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7) 
(define-const var2363 var62 var456) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9 
(define-const var2343 Int var2380-VECTOR_BITSIZE) ; Statement: $i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
 ; Statement: if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null 
(assert (not (< var2343 256))) ; Negate: Cond: $i1 < 256  
(define-const var3341 var62 var2818-SPECIES_MAX) ; Statement: $r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var3632 Int var2380-VECTOR_BITSIZE) ; Statement: $i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var260 Int (div var3632 (to_int (^ 2 2)))) ; Statement: $i4 = $i3 >> 2 
(define-const var2905 var2119 (var2119_forBitSize/-697242203 var260)) ; Statement: $r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4) 
(define-const var827 var62 (var62_withShape/-2000220019 var3341 var2905)) ; Statement: $r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12) 
(define-const var769 var62 var827) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13 
(define-const var2135 var62 var2571-SPECIES_MAX) ; Statement: $r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX> 
(define-const var522 Int var2380-VECTOR_BITSIZE) ; Statement: $i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> 
(define-const var1867 Int (div var522 (to_int (^ 2 1)))) ; Statement: $i6 = $i5 >> 1 
(define-const var54 var2119 (var2119_forBitSize/-697242203 var1867)) ; Statement: $r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6) 
(define-const var3707 var62 (var62_withShape/-2000220019 var2135 var54)) ; Statement: $r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15) 
(define-const var3029 var62 var3707) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16 
 ; Statement: goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>] 
(assert true) ; Non Conditional
(define-const var501 String var3108-OS_ARCH) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert true)
(define-const var711 Bool (= var501 "amd64")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64") 
 ; Statement: if $z1 == 0 goto $z3 = 0 
(assert (= (ite var711 1 0) 0)) ; Cond: $z1 == 0 
(define-const var460 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var3045 Bool var3066-TESTS_FORCE_INTEGER_VECTORS) ; Statement: $z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS> 
 ; Statement: if $z4 != 0 goto $z5 = 1 
(assert (not (= (ite var3045 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1361 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5] 
(assert true) ; Non Conditional
(define-const var599 Bool var1361) ; Statement: <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var2119_preferredShape/-2089537863=([], jdk.incubator.vector.VectorShape), vectorBitSize/1272887746=([jdk.incubator.vector.VectorShape], int), orElse/1064659938=([java.util.OptionalInt, int], int), var2119_forBitSize/-697242203=([int], jdk.incubator.vector.VectorShape), var62_of/-67104035=([java.lang.Class, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies), var62_vectorBitSize/1296486173=([jdk.incubator.vector.VectorSpecies], int), var62_withLanes/-99643836=([jdk.incubator.vector.VectorSpecies, java.lang.Class], jdk.incubator.vector.VectorSpecies), var62_withShape/-2000220019=([jdk.incubator.vector.VectorSpecies, jdk.incubator.vector.VectorShape], jdk.incubator.vector.VectorSpecies)}
; {var2380=org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport, var3447=$r0, var539=$z0, var1885=$z2, var1950=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>, var2119=jdk.incubator.vector.VectorShape, var3198=$r1, var2475=$i7, var3920=java.util.OptionalInt, var3066=org.apache.lucene.internal.vectorization.VectorizationProvider, var2683=$r2, var1129=$i8, var1265=$r3, var53=$r4, var62=jdk.incubator.vector.VectorSpecies, var1502=$r5, var1745=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>, var682=$r6, var1244=$i0, var3226=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>, var1597=$r8, var1999=$r7, var456=$r9, var2363=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>, var2343=$i1, var2818=jdk.incubator.vector.ByteVector, var3341=$r11, var3632=$i3, var260=$i4, var2905=$r12, var827=$r13, var769=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>, var2571=jdk.incubator.vector.ShortVector, var2135=$r14, var522=$i5, var1867=$i6, var54=$r15, var3707=$r16, var3029=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>, var3108=org.apache.lucene.util.Constants, var501=$r10, var711=$z1, var460=$z3, var3045=$z4, var1361=$z5, var599=<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>}
; {org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport=var2380, $r0=var3447, $z0=var539, $z2=var1885, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled>=var1950, jdk.incubator.vector.VectorShape=var2119, $r1=var3198, $i7=var2475, java.util.OptionalInt=var3920, org.apache.lucene.internal.vectorization.VectorizationProvider=var3066, $r2=var2683, $i8=var1129, $r3=var1265, $r4=var53, jdk.incubator.vector.VectorSpecies=var62, $r5=var1502, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>=var1745, $r6=var682, $i0=var1244, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>=var3226, $r8=var1597, $r7=var1999, $r9=var456, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES>=var2363, $i1=var2343, jdk.incubator.vector.ByteVector=var2818, $r11=var3341, $i3=var3632, $i4=var260, $r12=var2905, $r13=var827, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES>=var769, jdk.incubator.vector.ShortVector=var2571, $r14=var2135, $i5=var522, $i6=var1867, $r15=var54, $r16=var3707, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES>=var3029, org.apache.lucene.util.Constants=var3108, $r10=var501, $z1=var711, $z3=var460, $z4=var3045, $z5=var1361, <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS>=var599}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = class "Lorg/apache/lucene/internal/vectorization/PanamaVectorUtilSupport;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean $assertionsDisabled> = $z2;	$r1 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape preferredShape()>();	$i7 = virtualinvoke $r1.<jdk.incubator.vector.VectorShape: int vectorBitSize()>();	$r2 = <org.apache.lucene.internal.vectorization.VectorizationProvider: java.util.OptionalInt TESTS_VECTOR_SIZE>;	$i8 = virtualinvoke $r2.<java.util.OptionalInt: int orElse(int)>($i7);	$r3 = <java.lang.Integer: java.lang.Class TYPE>;	$r4 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i8);	$r5 = staticinvoke <jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies of(java.lang.Class,jdk.incubator.vector.VectorShape)>($r3, $r4);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES> = $r5;	$r6 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$i0 = interfaceinvoke $r6.<jdk.incubator.vector.VectorSpecies: int vectorBitSize()>();	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE> = $i0;	$r8 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies INT_SPECIES>;	$r7 = <java.lang.Float: java.lang.Class TYPE>;	$r9 = interfaceinvoke $r8.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withLanes(java.lang.Class)>($r7);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies FLOAT_SPECIES> = $r9;	$i1 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	if $i1 < 256 goto <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = null;	$r11 = <jdk.incubator.vector.ByteVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i3 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i4 = $i3 >> 2;	$r12 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i4);	$r13 = interfaceinvoke $r11.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r12);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies BYTE_SPECIES> = $r13;	$r14 = <jdk.incubator.vector.ShortVector: jdk.incubator.vector.VectorSpecies SPECIES_MAX>;	$i5 = <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: int VECTOR_BITSIZE>;	$i6 = $i5 >> 1;	$r15 = staticinvoke <jdk.incubator.vector.VectorShape: jdk.incubator.vector.VectorShape forBitSize(int)>($i6);	$r16 = interfaceinvoke $r14.<jdk.incubator.vector.VectorSpecies: jdk.incubator.vector.VectorSpecies withShape(jdk.incubator.vector.VectorShape)>($r15);	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: jdk.incubator.vector.VectorSpecies SHORT_SPECIES> = $r16;	goto [?= $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>];	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("amd64");	if $z1 == 0 goto $z3 = 0;	$z3 = 0;	$z4 = <org.apache.lucene.internal.vectorization.VectorizationProvider: boolean TESTS_FORCE_INTEGER_VECTORS>;	if $z4 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= <org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5];	<org.apache.lucene.internal.vectorization.PanamaVectorUtilSupport: boolean HAS_FAST_INTEGER_VECTORS> = $z5;	return
;block_num 9