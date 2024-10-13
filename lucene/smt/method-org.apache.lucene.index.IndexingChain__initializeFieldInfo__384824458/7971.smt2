(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1580 0)
(declare-sort var3210 0)
(declare-sort var2684 0)
(declare-sort var3711 0)
(declare-sort var2525 0)
(declare-sort var1558 0)
(declare-sort var3674 0)
(declare-sort var940 0)
(declare-sort var622 0)
(declare-sort var2686 0)
(declare-sort var3187 0)
(declare-sort var941 0)
(declare-sort var2743 0)
(declare-sort var410 0)
(declare-sort var912 0)
(declare-sort var2227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-464421982 (var3210) var2684)
(declare-fun indexWriterConfig/-282539681 (var1580) var3711)
(declare-fun getIndexSort/-601370018 (var3711) var2525)
(declare-fun vectorDimension/1656372054 (var2684) Int)
(declare-fun fieldInfos/-282539681 (var1580) var1558)
(declare-fun var3674-init () var3674)
(declare-fun fieldName/-464421982 (var3210) String)
(declare-fun storeTermVector/1656372054 (var2684) Bool)
(declare-fun omitNorms/1656372054 (var2684) Bool)
(declare-fun indexOptions/1656372054 (var2684) var940)
(declare-fun docValuesType/1656372054 (var2684) var622)
(declare-fun attributes/1656372054 (var2684) var2686)
(declare-fun pointDimensionCount/1656372054 (var2684) Int)
(declare-fun pointIndexDimensionCount/1656372054 (var2684) Int)
(declare-fun pointNumBytes/1656372054 (var2684) Int)
(declare-fun vectorEncoding/1656372054 (var2684) var3187)
(declare-fun vectorSimilarityFunction/1656372054 (var2684) var941)
(declare-fun getSoftDeletesFieldName/693589989 (var1558) String)
(declare-fun getParentFieldName/-1422355085 (var1558) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/284007519 (var3674 String Int Bool Bool Bool var940 var622 Int var2686 Int Int Int Int var3187 var941 Bool Bool) void)
(declare-fun add/-1387900188 (var1558 var3674) var3674)
(declare-fun setFieldInfo/-1019552399 (var3210 var3674) void)
(declare-fun getIndexOptions/-558583747 (var3674) var940)
(declare-fun getDocValuesType/460885377 (var3674) var622)
(declare-fun ordinal/-291641772 (var410) Int)
(declare-fun cast-from-var622-to-var410 (var622) var410)
(declare-fun var912-init () var912)
(declare-fun cast-from-var622-to-String (var622) String)
(declare-fun <init>/582965326 (var912 var2227) void)
(declare-fun cast-from-String-to-var2227 (String) var2227)
(declare-const null-var1580 var1580)
(declare-const null-var3210 var3210)
(declare-const null-var2525 var2525)
(declare-const var940-NONE var940)
(declare-const var2743-$SwitchMap$org$apache$lucene$index$DocValuesType (Array Int Int))
(declare-const var266 var1580) ; Statement: r2 := @this: org.apache.lucene.index.IndexingChain 
(assert (not (= var266 null-var1580)))
(declare-const var281 var3210) ; Statement: r0 := @parameter0: org.apache.lucene.index.IndexingChain$PerField 
(assert (not (= var281 null-var3210)))
(define-const var3951 var2684 (schema/-464421982 var281)) ; Statement: r1 = r0.<org.apache.lucene.index.IndexingChain$PerField: org.apache.lucene.index.IndexingChain$FieldSchema schema> 
(define-const var3550 var3711 (indexWriterConfig/-282539681 var266)) ; Statement: $r3 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.LiveIndexWriterConfig indexWriterConfig> 
(assert true)
(define-const var2971 var2525 (getIndexSort/-601370018 var3550)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.lucene.index.LiveIndexWriterConfig: org.apache.lucene.search.Sort getIndexSort()>() 
 ; Statement: if $r4 == null goto $i9 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int vectorDimension> 
(assert (= var2971 null-var2525)) ; Cond: $r4 == null 
(define-const var444 Int (vectorDimension/1656372054 var3951)) ; Statement: $i9 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int vectorDimension> 
 ; Statement: if $i9 == 0 goto $r7 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos> 
(assert (= var444 0)) ; Cond: $i9 == 0 
(define-const var3603 var1558 (fieldInfos/-282539681 var266)) ; Statement: $r7 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos> 
(define-const var2901 var3674 var3674-init) ; Statement: $r54 = new org.apache.lucene.index.FieldInfo 
(define-const var353 String (fieldName/-464421982 var281)) ; Statement: $r8 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName> 
(define-const var3838 Bool (storeTermVector/1656372054 var3951)) ; Statement: $z0 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: boolean storeTermVector> 
(define-const var3229 Bool (omitNorms/1656372054 var3951)) ; Statement: $z1 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: boolean omitNorms> 
(define-const var3811 var940 (indexOptions/1656372054 var3951)) ; Statement: $r9 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.IndexOptions indexOptions> 
(define-const var358 var622 (docValuesType/1656372054 var3951)) ; Statement: $r10 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.DocValuesType docValuesType> 
(define-const var1030 var2686 (attributes/1656372054 var3951)) ; Statement: $r11 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: java.util.Map attributes> 
(define-const var1057 Int (pointDimensionCount/1656372054 var3951)) ; Statement: $i0 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int pointDimensionCount> 
(define-const var952 Int (pointIndexDimensionCount/1656372054 var3951)) ; Statement: $i1 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int pointIndexDimensionCount> 
(define-const var1017 Int (pointNumBytes/1656372054 var3951)) ; Statement: $i2 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int pointNumBytes> 
(define-const var1424 Int (vectorDimension/1656372054 var3951)) ; Statement: $i3 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int vectorDimension> 
(define-const var1141 var3187 (vectorEncoding/1656372054 var3951)) ; Statement: $r12 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.VectorEncoding vectorEncoding> 
(define-const var3165 var941 (vectorSimilarityFunction/1656372054 var3951)) ; Statement: $r13 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.VectorSimilarityFunction vectorSimilarityFunction> 
(define-const var3278 String (fieldName/-464421982 var281)) ; Statement: $r14 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName> 
(define-const var1119 var1558 (fieldInfos/-282539681 var266)) ; Statement: $r6 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos> 
(assert true)
(define-const var1454 String (getSoftDeletesFieldName/693589989 var1119)) ; Statement: $r15 = virtualinvoke $r6.<org.apache.lucene.index.FieldInfos$Builder: java.lang.String getSoftDeletesFieldName()>() 
(assert true)
(define-const var879 Bool (= var3278 var1454)) ; Statement: $z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>($r15) 
(define-const var1560 String (fieldName/-464421982 var281)) ; Statement: $r17 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName> 
(define-const var1726 var1558 (fieldInfos/-282539681 var266)) ; Statement: $r16 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos> 
(assert true)
(define-const var3924 String (getParentFieldName/-1422355085 var1726)) ; Statement: $r18 = virtualinvoke $r16.<org.apache.lucene.index.FieldInfos$Builder: java.lang.String getParentFieldName()>() 
(assert true)
(define-const var806 Bool (= var1560 var3924)) ; Statement: $z2 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>($r18) 
(define-const var3386 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
(assert true)
;(assert (<init>/284007519 var2901 var353 var3386 var3838 var3229 (ite (= 1 0) true false) var3811 var358 -1 var1030 var1057 var952 var1017 var1424 var1141 var3165 var879 var806)) ; Statement: specialinvoke $r54.<org.apache.lucene.index.FieldInfo: void <init>(java.lang.String,int,boolean,boolean,boolean,org.apache.lucene.index.IndexOptions,org.apache.lucene.index.DocValuesType,long,java.util.Map,int,int,int,int,org.apache.lucene.index.VectorEncoding,org.apache.lucene.index.VectorSimilarityFunction,boolean,boolean)>($r8, $i12, $z0, $z1, 0, $r9, $r10, -1L, $r11, $i0, $i1, $i2, $i3, $r12, $r13, $z3, $z2) 

(declare-const var2901!1 var3674)
(declare-const var353!1 String)
(declare-const var3386!1 Int)
(declare-const var3838!1 Bool)
(declare-const var3229!1 Bool)
(declare-const var2778 Int)
(declare-const var3811!1 var940)
(declare-const var358!1 var622)
(declare-const var2613 Int)
(declare-const var1030!1 var2686)
(declare-const var1057!1 Int)
(declare-const var952!1 Int)
(declare-const var1017!1 Int)
(declare-const var1424!1 Int)
(declare-const var1141!1 var3187)
(declare-const var3165!1 var941)
(declare-const var879!1 Bool)
(declare-const var806!1 Bool)
(assert true)
(define-const var158 var3674 (add/-1387900188 var3603 var2901!1)) ; Statement: $r46 = virtualinvoke $r7.<org.apache.lucene.index.FieldInfos$Builder: org.apache.lucene.index.FieldInfo add(org.apache.lucene.index.FieldInfo)>($r54) 
(assert true)
;(assert (setFieldInfo/-1019552399 var281 var158)) ; Statement: virtualinvoke r0.<org.apache.lucene.index.IndexingChain$PerField: void setFieldInfo(org.apache.lucene.index.FieldInfo)>($r46) 

(declare-const var281!1 var3210)
(declare-const var158!1 var3674)
(assert true)
(define-const var1112 var940 (getIndexOptions/-558583747 var158!1)) ; Statement: $r20 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: org.apache.lucene.index.IndexOptions getIndexOptions()>() 
(define-const var1624 var940 var940-NONE) ; Statement: $r19 = <org.apache.lucene.index.IndexOptions: org.apache.lucene.index.IndexOptions NONE> 
 ; Statement: if $r20 == $r19 goto $r40 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: org.apache.lucene.index.DocValuesType getDocValuesType()>() 
(assert (= var1112 var1624)) ; Cond: $r20 == $r19 
(assert true)
(define-const var1957 var622 (getDocValuesType/460885377 var158!1)) ; Statement: $r40 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: org.apache.lucene.index.DocValuesType getDocValuesType()>() 
(define-const var1506 (Array Int Int) var2743-$SwitchMap$org$apache$lucene$index$DocValuesType) ; Statement: $r21 = <org.apache.lucene.index.IndexingChain$3: int[] $SwitchMap$org$apache$lucene$index$DocValuesType> 
(assert true)
(define-const var1392 Int (ordinal/-291641772 (cast-from-var622-to-var410 var1957))) ; Statement: $i4 = virtualinvoke $r40.<org.apache.lucene.index.DocValuesType: int ordinal()>() 
(define-const var371 Int (select var1506 var1392)) ; Statement: $i5 = $r21[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto goto [?= $i10 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: int getPointDimensionCount()>()];     case 2: goto $r55 = new org.apache.lucene.index.NumericDocValuesWriter;     case 3: goto $r56 = new org.apache.lucene.index.BinaryDocValuesWriter;     case 4: goto $r57 = new org.apache.lucene.index.SortedDocValuesWriter;     case 5: goto $r58 = new org.apache.lucene.index.SortedNumericDocValuesWriter;     case 6: goto $r59 = new org.apache.lucene.index.SortedSetDocValuesWriter;     default: goto $r60 = new java.lang.AssertionError; } 
(assert (and (not (= var371 6)) (and (not (= var371 5)) (and (not (= var371 4)) (and (not (= var371 3)) (and (not (= var371 2)) (and (not (= var371 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var886 var912 var912-init) ; Statement: $r60 = new java.lang.AssertionError 
(define-const var2573 String (str.++ "unrecognized DocValues.Type: \u0001" (cast-from-var622-to-String var1957))) ; Statement: $r39 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (org.apache.lucene.index.DocValuesType)>($r40) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("unrecognized DocValues.Type: \u0001") 
(assert true)
;(assert (<init>/582965326 var886 (cast-from-String-to-var2227 var2573))) ; Statement: specialinvoke $r60.<java.lang.AssertionError: void <init>(java.lang.Object)>($r39) 

(declare-const var886!1 var912)
(declare-const var2573!1 String)
 ; Statement: throw $r60 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-464421982=([org.apache.lucene.index.IndexingChain$PerField], org.apache.lucene.index.IndexingChain$FieldSchema), indexWriterConfig/-282539681=([org.apache.lucene.index.IndexingChain], org.apache.lucene.index.LiveIndexWriterConfig), getIndexSort/-601370018=([org.apache.lucene.index.LiveIndexWriterConfig], org.apache.lucene.search.Sort), vectorDimension/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], int), fieldInfos/-282539681=([org.apache.lucene.index.IndexingChain], org.apache.lucene.index.FieldInfos$Builder), var3674-init=([], org.apache.lucene.index.FieldInfo), fieldName/-464421982=([org.apache.lucene.index.IndexingChain$PerField], java.lang.String), storeTermVector/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], boolean), omitNorms/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], boolean), indexOptions/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], org.apache.lucene.index.IndexOptions), docValuesType/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], org.apache.lucene.index.DocValuesType), attributes/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], java.util.Map), pointDimensionCount/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], int), pointIndexDimensionCount/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], int), pointNumBytes/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], int), vectorEncoding/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], org.apache.lucene.index.VectorEncoding), vectorSimilarityFunction/1656372054=([org.apache.lucene.index.IndexingChain$FieldSchema], org.apache.lucene.index.VectorSimilarityFunction), getSoftDeletesFieldName/693589989=([org.apache.lucene.index.FieldInfos$Builder], java.lang.String), getParentFieldName/-1422355085=([org.apache.lucene.index.FieldInfos$Builder], java.lang.String), cast-from-Int-to-Int=([int], int), <init>/284007519=([org.apache.lucene.index.FieldInfo, java.lang.String, int, boolean, boolean, boolean, org.apache.lucene.index.IndexOptions, org.apache.lucene.index.DocValuesType, long, java.util.Map, int, int, int, int, org.apache.lucene.index.VectorEncoding, org.apache.lucene.index.VectorSimilarityFunction, boolean, boolean], void), add/-1387900188=([org.apache.lucene.index.FieldInfos$Builder, org.apache.lucene.index.FieldInfo], org.apache.lucene.index.FieldInfo), setFieldInfo/-1019552399=([org.apache.lucene.index.IndexingChain$PerField, org.apache.lucene.index.FieldInfo], void), getIndexOptions/-558583747=([org.apache.lucene.index.FieldInfo], org.apache.lucene.index.IndexOptions), getDocValuesType/460885377=([org.apache.lucene.index.FieldInfo], org.apache.lucene.index.DocValuesType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var622-to-var410=([org.apache.lucene.index.DocValuesType], java.lang.Enum), var912-init=([], java.lang.AssertionError), cast-from-var622-to-String=([org.apache.lucene.index.DocValuesType], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2227=([java.lang.String], java.lang.Object)}
; {var1580=org.apache.lucene.index.IndexingChain, var266=r2, var3210=org.apache.lucene.index.IndexingChain$PerField, var281=r0, var2684=org.apache.lucene.index.IndexingChain$FieldSchema, var3951=r1, var3711=org.apache.lucene.index.LiveIndexWriterConfig, var3550=$r3, var2525=org.apache.lucene.search.Sort, var2971=$r4, var444=$i9, var1558=org.apache.lucene.index.FieldInfos$Builder, var3603=$r7, var3674=org.apache.lucene.index.FieldInfo, var2901=$r54, var353=$r8, var3838=$z0, var3229=$z1, var940=org.apache.lucene.index.IndexOptions, var3811=$r9, var622=org.apache.lucene.index.DocValuesType, var358=$r10, var2686=java.util.Map, var1030=$r11, var1057=$i0, var952=$i1, var1017=$i2, var1424=$i3, var3187=org.apache.lucene.index.VectorEncoding, var1141=$r12, var941=org.apache.lucene.index.VectorSimilarityFunction, var3165=$r13, var3278=$r14, var1119=$r6, var1454=$r15, var879=$z3, var1560=$r17, var1726=$r16, var3924=$r18, var806=$z2, var3386=$i12, var2778=0, var2613=-1L, var158=$r46, var1112=$r20, var1624=$r19, var1957=$r40, var2743=org.apache.lucene.index.IndexingChain$3, var1506=$r21, var410=java.lang.Enum, var1392=$i4, var371=$i5, var912=java.lang.AssertionError, var886=$r60, var2573=$r39, var2227=java.lang.Object}
; {org.apache.lucene.index.IndexingChain=var1580, r2=var266, org.apache.lucene.index.IndexingChain$PerField=var3210, r0=var281, org.apache.lucene.index.IndexingChain$FieldSchema=var2684, r1=var3951, org.apache.lucene.index.LiveIndexWriterConfig=var3711, $r3=var3550, org.apache.lucene.search.Sort=var2525, $r4=var2971, $i9=var444, org.apache.lucene.index.FieldInfos$Builder=var1558, $r7=var3603, org.apache.lucene.index.FieldInfo=var3674, $r54=var2901, $r8=var353, $z0=var3838, $z1=var3229, org.apache.lucene.index.IndexOptions=var940, $r9=var3811, org.apache.lucene.index.DocValuesType=var622, $r10=var358, java.util.Map=var2686, $r11=var1030, $i0=var1057, $i1=var952, $i2=var1017, $i3=var1424, org.apache.lucene.index.VectorEncoding=var3187, $r12=var1141, org.apache.lucene.index.VectorSimilarityFunction=var941, $r13=var3165, $r14=var3278, $r6=var1119, $r15=var1454, $z3=var879, $r17=var1560, $r16=var1726, $r18=var3924, $z2=var806, $i12=var3386, 0=var2778, -1L=var2613, $r46=var158, $r20=var1112, $r19=var1624, $r40=var1957, org.apache.lucene.index.IndexingChain$3=var2743, $r21=var1506, java.lang.Enum=var410, $i4=var1392, $i5=var371, java.lang.AssertionError=var912, $r60=var886, $r39=var2573, java.lang.Object=var2227}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r2 := @this: org.apache.lucene.index.IndexingChain;	r0 := @parameter0: org.apache.lucene.index.IndexingChain$PerField;	r1 = r0.<org.apache.lucene.index.IndexingChain$PerField: org.apache.lucene.index.IndexingChain$FieldSchema schema>;	$r3 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.LiveIndexWriterConfig indexWriterConfig>;	$r4 = virtualinvoke $r3.<org.apache.lucene.index.LiveIndexWriterConfig: org.apache.lucene.search.Sort getIndexSort()>();	if $r4 == null goto $i9 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int vectorDimension>;	$i9 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int vectorDimension>;	if $i9 == 0 goto $r7 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos>;	$r7 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos>;	$r54 = new org.apache.lucene.index.FieldInfo;	$r8 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName>;	$z0 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: boolean storeTermVector>;	$z1 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: boolean omitNorms>;	$r9 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.IndexOptions indexOptions>;	$r10 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.DocValuesType docValuesType>;	$r11 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: java.util.Map attributes>;	$i0 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int pointDimensionCount>;	$i1 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int pointIndexDimensionCount>;	$i2 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int pointNumBytes>;	$i3 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: int vectorDimension>;	$r12 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.VectorEncoding vectorEncoding>;	$r13 = r1.<org.apache.lucene.index.IndexingChain$FieldSchema: org.apache.lucene.index.VectorSimilarityFunction vectorSimilarityFunction>;	$r14 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName>;	$r6 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos>;	$r15 = virtualinvoke $r6.<org.apache.lucene.index.FieldInfos$Builder: java.lang.String getSoftDeletesFieldName()>();	$z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>($r15);	$r17 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName>;	$r16 = r2.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.FieldInfos$Builder fieldInfos>;	$r18 = virtualinvoke $r16.<org.apache.lucene.index.FieldInfos$Builder: java.lang.String getParentFieldName()>();	$z2 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>($r18);	$i12 = (int) -1;	specialinvoke $r54.<org.apache.lucene.index.FieldInfo: void <init>(java.lang.String,int,boolean,boolean,boolean,org.apache.lucene.index.IndexOptions,org.apache.lucene.index.DocValuesType,long,java.util.Map,int,int,int,int,org.apache.lucene.index.VectorEncoding,org.apache.lucene.index.VectorSimilarityFunction,boolean,boolean)>($r8, $i12, $z0, $z1, 0, $r9, $r10, -1L, $r11, $i0, $i1, $i2, $i3, $r12, $r13, $z3, $z2);	$r46 = virtualinvoke $r7.<org.apache.lucene.index.FieldInfos$Builder: org.apache.lucene.index.FieldInfo add(org.apache.lucene.index.FieldInfo)>($r54);	virtualinvoke r0.<org.apache.lucene.index.IndexingChain$PerField: void setFieldInfo(org.apache.lucene.index.FieldInfo)>($r46);	$r20 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: org.apache.lucene.index.IndexOptions getIndexOptions()>();	$r19 = <org.apache.lucene.index.IndexOptions: org.apache.lucene.index.IndexOptions NONE>;	if $r20 == $r19 goto $r40 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: org.apache.lucene.index.DocValuesType getDocValuesType()>();	$r40 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: org.apache.lucene.index.DocValuesType getDocValuesType()>();	$r21 = <org.apache.lucene.index.IndexingChain$3: int[] $SwitchMap$org$apache$lucene$index$DocValuesType>;	$i4 = virtualinvoke $r40.<org.apache.lucene.index.DocValuesType: int ordinal()>();	$i5 = $r21[$i4];	tableswitch($i5) {     case 1: goto goto [?= $i10 = virtualinvoke $r46.<org.apache.lucene.index.FieldInfo: int getPointDimensionCount()>()];     case 2: goto $r55 = new org.apache.lucene.index.NumericDocValuesWriter;     case 3: goto $r56 = new org.apache.lucene.index.BinaryDocValuesWriter;     case 4: goto $r57 = new org.apache.lucene.index.SortedDocValuesWriter;     case 5: goto $r58 = new org.apache.lucene.index.SortedNumericDocValuesWriter;     case 6: goto $r59 = new org.apache.lucene.index.SortedSetDocValuesWriter;     default: goto $r60 = new java.lang.AssertionError; };	$r60 = new java.lang.AssertionError;	$r39 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (org.apache.lucene.index.DocValuesType)>($r40) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("unrecognized DocValues.Type: \u0001");	specialinvoke $r60.<java.lang.AssertionError: void <init>(java.lang.Object)>($r39);	throw $r60
;block_num 5