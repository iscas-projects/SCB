(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var796 0)
(declare-sort var567 0)
(declare-sort var1838 0)
(declare-sort var3876 0)
(declare-sort var3669 0)
(declare-sort var3200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3876-init () (Array Int var3876))
(declare-fun getClass/1258963082 (var3876) ClassObject)
(declare-fun cast-from-var796-to-var3876 (var796) var3876)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var3876 (String) var3876)
(declare-fun target/-756313014 (var796) (Array Int Int))
(declare-fun Int_valueOf/-1256543613 (Int) Int)
(declare-fun cast-from-Int-to-var3876 (Int) var3876)
(declare-fun traversalSimilarity/2088866160 (var3669) Float32)
(declare-fun cast-from-var796-to-var3669 (var796) var3669)
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun cast-from-Float32-to-var3876 (Float32) var3876)
(declare-fun resultSimilarity/2088866160 (var3669) Float32)
(declare-fun filter/2088866160 (var3669) var3200)
(declare-fun cast-from-var3200-to-var3876 (var3200) var3876)
(declare-fun String_format/-647569892 (var1838 String (Array Int var3876)) String)
(declare-const null-var796 var796)
(declare-const null-String String)
(declare-const var1838-ROOT var1838)
(declare-const null-__Array__Int__var3876__ (Array Int var3876))
(declare-const var390 var796) ; Statement: r1 := @this: org.apache.lucene.search.ByteVectorSimilarityQuery 
(assert (not (= var390 null-var796)))
(declare-const var488 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var488 null-String)))
(define-const var259 var1838 var1838-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var362 (Array Int var3876) arr-var3876-init) ; Statement: $r0 = newarray (java.lang.Object)[6] 
(assert true)
(define-const var307 ClassObject (getClass/1258963082 (cast-from-var796-to-var3876 var390))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2321 String (getSimpleName/-390194377 var307)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var362!1 (Array Int var3876))
(assert (not (= var362!1 null-__Array__Int__var3876__)))
(assert (= (select var362!1 0) (cast-from-String-to-var3876 var2321))) ; Statement: $r0[0] = $r4 
(declare-const var362!2 (Array Int var3876))
(assert (not (= var362!2 null-__Array__Int__var3876__)))
(assert (= (select var362!2 1) (cast-from-String-to-var3876 var488))) ; Statement: $r0[1] = r5 
(define-const var1489 (Array Int Int) (target/-756313014 var390)) ; Statement: $r6 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: byte[] target> 
(define-const var255 Int (select var1489 0)) ; Statement: $b0 = $r6[0] 
(define-const var151 Int (Int_valueOf/-1256543613 var255)) ; Statement: $r7 = staticinvoke <java.lang.Byte: java.lang.Byte valueOf(byte)>($b0) 
(declare-const var362!3 (Array Int var3876))
(assert (not (= var362!3 null-__Array__Int__var3876__)))
(assert (= (select var362!3 2) (cast-from-Int-to-var3876 var151))) ; Statement: $r0[2] = $r7 
(define-const var686 Float32 (traversalSimilarity/2088866160 (cast-from-var796-to-var3669 var390))) ; Statement: $f0 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: float traversalSimilarity> 
(define-const var3380 Float32 (Float32_valueOf/-1292433465 var686)) ; Statement: $r8 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0) 
(declare-const var362!4 (Array Int var3876))
(assert (not (= var362!4 null-__Array__Int__var3876__)))
(assert (= (select var362!4 3) (cast-from-Float32-to-var3876 var3380))) ; Statement: $r0[3] = $r8 
(define-const var3362 Float32 (resultSimilarity/2088866160 (cast-from-var796-to-var3669 var390))) ; Statement: $f1 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: float resultSimilarity> 
(define-const var3094 Float32 (Float32_valueOf/-1292433465 var3362)) ; Statement: $r9 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f1) 
(declare-const var362!5 (Array Int var3876))
(assert (not (= var362!5 null-__Array__Int__var3876__)))
(assert (= (select var362!5 4) (cast-from-Float32-to-var3876 var3094))) ; Statement: $r0[4] = $r9 
(define-const var3992 var3200 (filter/2088866160 (cast-from-var796-to-var3669 var390))) ; Statement: $r10 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: org.apache.lucene.search.Query filter> 
(declare-const var362!6 (Array Int var3876))
(assert (not (= var362!6 null-__Array__Int__var3876__)))
(assert (= (select var362!6 5) (cast-from-var3200-to-var3876 var3992))) ; Statement: $r0[5] = $r10 
(define-const var242 String (String_format/-647569892 var259 "%s[field=%s target=[%d...] traversalSimilarity=%f resultSimilarity=%f filter=%s]" var362!6)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%s[field=%s target=[%d...] traversalSimilarity=%f resultSimilarity=%f filter=%s]", $r0) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3876-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var796-to-var3876=([org.apache.lucene.search.ByteVectorSimilarityQuery], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var3876=([java.lang.String], java.lang.Object), target/-756313014=([org.apache.lucene.search.ByteVectorSimilarityQuery], byte[]), Int_valueOf/-1256543613=([byte], java.lang.Byte), cast-from-Int-to-var3876=([java.lang.Byte], java.lang.Object), traversalSimilarity/2088866160=([org.apache.lucene.search.AbstractVectorSimilarityQuery], float), cast-from-var796-to-var3669=([org.apache.lucene.search.ByteVectorSimilarityQuery], org.apache.lucene.search.AbstractVectorSimilarityQuery), Float32_valueOf/-1292433465=([float], java.lang.Float), cast-from-Float32-to-var3876=([java.lang.Float], java.lang.Object), resultSimilarity/2088866160=([org.apache.lucene.search.AbstractVectorSimilarityQuery], float), filter/2088866160=([org.apache.lucene.search.AbstractVectorSimilarityQuery], org.apache.lucene.search.Query), cast-from-var3200-to-var3876=([org.apache.lucene.search.Query], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var796=org.apache.lucene.search.ByteVectorSimilarityQuery, var390=r1, var488=r5, var567=null_type, var1838=java.util.Locale, var259=$r2, var3876=java.lang.Object, var362=$r0, var307=$r3, var2321=$r4, var1489=$r6, var255=$b0, var151=$r7, var3669=org.apache.lucene.search.AbstractVectorSimilarityQuery, var686=$f0, var3380=$r8, var3362=$f1, var3094=$r9, var3200=org.apache.lucene.search.Query, var3992=$r10, var242=$r11}
; {org.apache.lucene.search.ByteVectorSimilarityQuery=var796, r1=var390, r5=var488, null_type=var567, java.util.Locale=var1838, $r2=var259, java.lang.Object=var3876, $r0=var362, $r3=var307, $r4=var2321, $r6=var1489, $b0=var255, $r7=var151, org.apache.lucene.search.AbstractVectorSimilarityQuery=var3669, $f0=var686, $r8=var3380, $f1=var3362, $r9=var3094, org.apache.lucene.search.Query=var3200, $r10=var3992, $r11=var242}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.search.ByteVectorSimilarityQuery;	r5 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[6];	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r4;	$r0[1] = r5;	$r6 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: byte[] target>;	$b0 = $r6[0];	$r7 = staticinvoke <java.lang.Byte: java.lang.Byte valueOf(byte)>($b0);	$r0[2] = $r7;	$f0 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: float traversalSimilarity>;	$r8 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0);	$r0[3] = $r8;	$f1 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: float resultSimilarity>;	$r9 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f1);	$r0[4] = $r9;	$r10 = r1.<org.apache.lucene.search.ByteVectorSimilarityQuery: org.apache.lucene.search.Query filter>;	$r0[5] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%s[field=%s target=[%d...] traversalSimilarity=%f resultSimilarity=%f filter=%s]", $r0);	return $r11
;block_num 1