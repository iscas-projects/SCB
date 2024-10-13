(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3842 0)
(declare-sort var1728 0)
(declare-sort var1530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var1728) Int)
(declare-fun cast-from-var3842-to-var1728 (var3842) var1728)
(declare-fun field/-574747122 (var3842) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun crossesDateline/-574747122 (var3842) Bool)
(declare-fun var1530_hashCode/-2068759393 (Bool) Int)
(declare-fun minLatitude/-574747122 (var3842) Int)
(declare-fun Int_hashCode/-1367395908 (Int) Int)
(declare-fun maxLatitude/-574747122 (var3842) Int)
(declare-fun minLongitude/-574747122 (var3842) Int)
(declare-fun maxLongitude/-574747122 (var3842) Int)
(declare-const null-var3842 var3842)
(declare-const var2180 var3842) ; Statement: r0 := @this: org.apache.lucene.document.LatLonDocValuesBoxQuery 
(assert (not (= var2180 null-var3842)))
(assert true)
(define-const var1953 Int (classHash/2131464770 (cast-from-var3842-to-var1728 var2180))) ; Statement: i16 = virtualinvoke r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int classHash()>() 
(define-const var1102 Int (* 31 var1953)) ; Statement: $i1 = 31 * i16 
(define-const var3597 String (field/-574747122 var2180)) ; Statement: $r1 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: java.lang.String field> 
(assert true)
(define-const var2216 Int (hashCode/-467973558 var3597)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1335 Int (+ var1102 var2216)) ; Statement: i17 = $i1 + $i0 
(define-const var3620 Int (* 31 var1335)) ; Statement: $i3 = 31 * i17 
(define-const var3832 Bool (crossesDateline/-574747122 var2180)) ; Statement: $z0 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: boolean crossesDateline> 
(define-const var2709 Int (var1530_hashCode/-2068759393 var3832)) ; Statement: $i2 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z0) 
(define-const var1550 Int (+ var3620 var2709)) ; Statement: i18 = $i3 + $i2 
(define-const var2066 Int (* 31 var1550)) ; Statement: $i6 = 31 * i18 
(define-const var2504 Int (minLatitude/-574747122 var2180)) ; Statement: $i4 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLatitude> 
(define-const var1360 Int (Int_hashCode/-1367395908 var2504)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int hashCode(int)>($i4) 
(define-const var3641 Int (+ var2066 var1360)) ; Statement: i19 = $i6 + $i5 
(define-const var214 Int (* 31 var3641)) ; Statement: $i9 = 31 * i19 
(define-const var2111 Int (maxLatitude/-574747122 var2180)) ; Statement: $i7 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLatitude> 
(define-const var1342 Int (Int_hashCode/-1367395908 var2111)) ; Statement: $i8 = staticinvoke <java.lang.Integer: int hashCode(int)>($i7) 
(define-const var3941 Int (+ var214 var1342)) ; Statement: i20 = $i9 + $i8 
(define-const var268 Int (* 31 var3941)) ; Statement: $i12 = 31 * i20 
(define-const var1731 Int (minLongitude/-574747122 var2180)) ; Statement: $i10 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLongitude> 
(define-const var1659 Int (Int_hashCode/-1367395908 var1731)) ; Statement: $i11 = staticinvoke <java.lang.Integer: int hashCode(int)>($i10) 
(define-const var569 Int (+ var268 var1659)) ; Statement: i21 = $i12 + $i11 
(define-const var1472 Int (* 31 var569)) ; Statement: $i15 = 31 * i21 
(define-const var462 Int (maxLongitude/-574747122 var2180)) ; Statement: $i13 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLongitude> 
(define-const var3536 Int (Int_hashCode/-1367395908 var462)) ; Statement: $i14 = staticinvoke <java.lang.Integer: int hashCode(int)>($i13) 
(define-const var3339 Int (+ var1472 var3536)) ; Statement: i22 = $i15 + $i14 
 ; Statement: return i22 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var3842-to-var1728=([org.apache.lucene.document.LatLonDocValuesBoxQuery], org.apache.lucene.search.Query), field/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), crossesDateline/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], boolean), var1530_hashCode/-2068759393=([boolean], int), minLatitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int), Int_hashCode/-1367395908=([int], int), maxLatitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int), minLongitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int), maxLongitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int)}
; {var3842=org.apache.lucene.document.LatLonDocValuesBoxQuery, var2180=r0, var1728=org.apache.lucene.search.Query, var1953=i16, var1102=$i1, var3597=$r1, var2216=$i0, var1335=i17, var3620=$i3, var3832=$z0, var1530=java.lang.Boolean, var2709=$i2, var1550=i18, var2066=$i6, var2504=$i4, var1360=$i5, var3641=i19, var214=$i9, var2111=$i7, var1342=$i8, var3941=i20, var268=$i12, var1731=$i10, var1659=$i11, var569=i21, var1472=$i15, var462=$i13, var3536=$i14, var3339=i22}
; {org.apache.lucene.document.LatLonDocValuesBoxQuery=var3842, r0=var2180, org.apache.lucene.search.Query=var1728, i16=var1953, $i1=var1102, $r1=var3597, $i0=var2216, i17=var1335, $i3=var3620, $z0=var3832, java.lang.Boolean=var1530, $i2=var2709, i18=var1550, $i6=var2066, $i4=var2504, $i5=var1360, i19=var3641, $i9=var214, $i7=var2111, $i8=var1342, i20=var3941, $i12=var268, $i10=var1731, $i11=var1659, i21=var569, $i15=var1472, $i13=var462, $i14=var3536, i22=var3339}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.LatLonDocValuesBoxQuery;	i16 = virtualinvoke r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int classHash()>();	$i1 = 31 * i16;	$r1 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i17 = $i1 + $i0;	$i3 = 31 * i17;	$z0 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: boolean crossesDateline>;	$i2 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z0);	i18 = $i3 + $i2;	$i6 = 31 * i18;	$i4 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLatitude>;	$i5 = staticinvoke <java.lang.Integer: int hashCode(int)>($i4);	i19 = $i6 + $i5;	$i9 = 31 * i19;	$i7 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLatitude>;	$i8 = staticinvoke <java.lang.Integer: int hashCode(int)>($i7);	i20 = $i9 + $i8;	$i12 = 31 * i20;	$i10 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLongitude>;	$i11 = staticinvoke <java.lang.Integer: int hashCode(int)>($i10);	i21 = $i12 + $i11;	$i15 = 31 * i21;	$i13 = r0.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLongitude>;	$i14 = staticinvoke <java.lang.Integer: int hashCode(int)>($i13);	i22 = $i15 + $i14;	return i22
;block_num 1