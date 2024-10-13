(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1828 0)
(declare-sort var1669 0)
(declare-sort var347 0)
(declare-sort var1195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var347-init () (Array Int var347))
(declare-fun totalTimeMS/1407278392 (var1828) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var347 (Float64) var347)
(declare-fun readTimeMS/1407278392 (var1828) Int)
(declare-fun sortTimeMS/1407278392 (var1828) var1195)
(declare-fun get/1173337206 (var1195) Int)
(declare-fun mergeTimeMS/1407278392 (var1828) var1195)
(declare-fun lineCount/1407278392 (var1828) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var347 (Int) var347)
(declare-fun tempMergeFiles/1407278392 (var1828) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun mergeRounds/1407278392 (var1828) Int)
(declare-fun bufferSize/1407278392 (var1828) Int)
(declare-fun String_format/-647569892 (var1669 String (Array Int var347)) String)
(declare-const null-var1828 var1828)
(declare-const var1669-ROOT var1669)
(declare-const null-__Array__Int__var347__ (Array Int var347))
(declare-const var3119 var1828) ; Statement: r1 := @this: org.apache.lucene.util.OfflineSorter$SortInfo 
(assert (not (= var3119 null-var1828)))
(define-const var2044 var1669 var1669-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3768 (Array Int var347) arr-var347-init) ; Statement: $r0 = newarray (java.lang.Object)[8] 
(define-const var1711 Int (totalTimeMS/1407278392 var3119)) ; Statement: $l0 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long totalTimeMS> 
(define-const var2097 Float64 (cast-from-Int-to-Float64 var1711)) ; Statement: $d0 = (double) $l0 
(define-const var951 Float64 (fp.div roundNearestTiesToEven var2097 ((_ to_fp 11 53) #x408f400000000000))) ; Statement: $d1 = $d0 / 1000.0 
(define-const var593 Float64 (Float64_valueOf/679560954 var951)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1) 
(declare-const var3768!1 (Array Int var347))
(assert (not (= var3768!1 null-__Array__Int__var347__)))
(assert (= (select var3768!1 0) (cast-from-Float64-to-var347 var593))) ; Statement: $r0[0] = $r3 
(define-const var213 Int (readTimeMS/1407278392 var3119)) ; Statement: $l1 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long readTimeMS> 
(define-const var484 Float64 (cast-from-Int-to-Float64 var213)) ; Statement: $d2 = (double) $l1 
(define-const var3559 Float64 (fp.div roundNearestTiesToEven var484 ((_ to_fp 11 53) #x408f400000000000))) ; Statement: $d3 = $d2 / 1000.0 
(define-const var2678 Float64 (Float64_valueOf/679560954 var3559)) ; Statement: $r4 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d3) 
(declare-const var3768!2 (Array Int var347))
(assert (not (= var3768!2 null-__Array__Int__var347__)))
(assert (= (select var3768!2 1) (cast-from-Float64-to-var347 var2678))) ; Statement: $r0[1] = $r4 
(define-const var2755 var1195 (sortTimeMS/1407278392 var3119)) ; Statement: $r5 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: java.util.concurrent.atomic.AtomicLong sortTimeMS> 
(assert true)
(define-const var2487 Int (get/1173337206 var2755)) ; Statement: $l2 = virtualinvoke $r5.<java.util.concurrent.atomic.AtomicLong: long get()>() 
(define-const var3491 Float64 (cast-from-Int-to-Float64 var2487)) ; Statement: $d4 = (double) $l2 
(define-const var1322 Float64 (fp.div roundNearestTiesToEven var3491 ((_ to_fp 11 53) #x408f400000000000))) ; Statement: $d5 = $d4 / 1000.0 
(define-const var1058 Float64 (Float64_valueOf/679560954 var1322)) ; Statement: $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d5) 
(declare-const var3768!3 (Array Int var347))
(assert (not (= var3768!3 null-__Array__Int__var347__)))
(assert (= (select var3768!3 2) (cast-from-Float64-to-var347 var1058))) ; Statement: $r0[2] = $r6 
(define-const var987 var1195 (mergeTimeMS/1407278392 var3119)) ; Statement: $r7 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: java.util.concurrent.atomic.AtomicLong mergeTimeMS> 
(assert true)
(define-const var2820 Int (get/1173337206 var987)) ; Statement: $l3 = virtualinvoke $r7.<java.util.concurrent.atomic.AtomicLong: long get()>() 
(define-const var2409 Float64 (cast-from-Int-to-Float64 var2820)) ; Statement: $d6 = (double) $l3 
(define-const var1302 Float64 (fp.div roundNearestTiesToEven var2409 ((_ to_fp 11 53) #x408f400000000000))) ; Statement: $d7 = $d6 / 1000.0 
(define-const var3742 Float64 (Float64_valueOf/679560954 var1302)) ; Statement: $r8 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d7) 
(declare-const var3768!4 (Array Int var347))
(assert (not (= var3768!4 null-__Array__Int__var347__)))
(assert (= (select var3768!4 3) (cast-from-Float64-to-var347 var3742))) ; Statement: $r0[3] = $r8 
(define-const var2902 Int (lineCount/1407278392 var3119)) ; Statement: $l4 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long lineCount> 
(define-const var3421 Int (Int_valueOf/-1102777585 var2902)) ; Statement: $r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l4) 
(declare-const var3768!5 (Array Int var347))
(assert (not (= var3768!5 null-__Array__Int__var347__)))
(assert (= (select var3768!5 4) (cast-from-Int-to-var347 var3421))) ; Statement: $r0[4] = $r9 
(define-const var2033 Int (tempMergeFiles/1407278392 var3119)) ; Statement: $i5 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: int tempMergeFiles> 
(define-const var2451 Int (Int_valueOf/-1371140006 var2033)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5) 
(declare-const var3768!6 (Array Int var347))
(assert (not (= var3768!6 null-__Array__Int__var347__)))
(assert (= (select var3768!6 5) (cast-from-Int-to-var347 var2451))) ; Statement: $r0[5] = $r10 
(define-const var2238 Int (mergeRounds/1407278392 var3119)) ; Statement: $i6 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: int mergeRounds> 
(define-const var532 Int (Int_valueOf/-1371140006 var2238)) ; Statement: $r11 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6) 
(declare-const var3768!7 (Array Int var347))
(assert (not (= var3768!7 null-__Array__Int__var347__)))
(assert (= (select var3768!7 6) (cast-from-Int-to-var347 var532))) ; Statement: $r0[6] = $r11 
(define-const var2299 Int (bufferSize/1407278392 var3119)) ; Statement: $l7 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long bufferSize> 
(define-const var3347 Float64 (cast-from-Int-to-Float64 var2299)) ; Statement: $d8 = (double) $l7 
(define-const var2183 Float64 (fp.div roundNearestTiesToEven var3347 ((_ to_fp 11 53) #x4130000000000000))) ; Statement: $d9 = $d8 / 1048576.0 
(define-const var3615 Float64 (Float64_valueOf/679560954 var2183)) ; Statement: $r12 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d9) 
(declare-const var3768!8 (Array Int var347))
(assert (not (= var3768!8 null-__Array__Int__var347__)))
(assert (= (select var3768!8 7) (cast-from-Float64-to-var347 var3615))) ; Statement: $r0[7] = $r12 
(define-const var3945 String (String_format/-647569892 var2044 "time=%.2f sec. total (%.2f reading, %.2f sorting, %.2f merging), lines=%d, temp files=%d, merges=%d, soft ram limit=%.2f MB" var3768!8)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "time=%.2f sec. total (%.2f reading, %.2f sorting, %.2f merging), lines=%d, temp files=%d, merges=%d, soft ram limit=%.2f MB", $r0) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var347-init=([], java.lang.Object[]), totalTimeMS/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], long), cast-from-Int-to-Float64=([long], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var347=([java.lang.Double], java.lang.Object), readTimeMS/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], long), sortTimeMS/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], java.util.concurrent.atomic.AtomicLong), get/1173337206=([java.util.concurrent.atomic.AtomicLong], long), mergeTimeMS/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], java.util.concurrent.atomic.AtomicLong), lineCount/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var347=([java.lang.Long], java.lang.Object), tempMergeFiles/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], int), Int_valueOf/-1371140006=([int], java.lang.Integer), mergeRounds/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], int), bufferSize/1407278392=([org.apache.lucene.util.OfflineSorter$SortInfo], long), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1828=org.apache.lucene.util.OfflineSorter$SortInfo, var3119=r1, var1669=java.util.Locale, var2044=$r2, var347=java.lang.Object, var3768=$r0, var1711=$l0, var2097=$d0, var951=$d1, var593=$r3, var213=$l1, var484=$d2, var3559=$d3, var2678=$r4, var1195=java.util.concurrent.atomic.AtomicLong, var2755=$r5, var2487=$l2, var3491=$d4, var1322=$d5, var1058=$r6, var987=$r7, var2820=$l3, var2409=$d6, var1302=$d7, var3742=$r8, var2902=$l4, var3421=$r9, var2033=$i5, var2451=$r10, var2238=$i6, var532=$r11, var2299=$l7, var3347=$d8, var2183=$d9, var3615=$r12, var3945=$r13}
; {org.apache.lucene.util.OfflineSorter$SortInfo=var1828, r1=var3119, java.util.Locale=var1669, $r2=var2044, java.lang.Object=var347, $r0=var3768, $l0=var1711, $d0=var2097, $d1=var951, $r3=var593, $l1=var213, $d2=var484, $d3=var3559, $r4=var2678, java.util.concurrent.atomic.AtomicLong=var1195, $r5=var2755, $l2=var2487, $d4=var3491, $d5=var1322, $r6=var1058, $r7=var987, $l3=var2820, $d6=var2409, $d7=var1302, $r8=var3742, $l4=var2902, $r9=var3421, $i5=var2033, $r10=var2451, $i6=var2238, $r11=var532, $l7=var2299, $d8=var3347, $d9=var2183, $r12=var3615, $r13=var3945}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.util.OfflineSorter$SortInfo;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[8];	$l0 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long totalTimeMS>;	$d0 = (double) $l0;	$d1 = $d0 / 1000.0;	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1);	$r0[0] = $r3;	$l1 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long readTimeMS>;	$d2 = (double) $l1;	$d3 = $d2 / 1000.0;	$r4 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d3);	$r0[1] = $r4;	$r5 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: java.util.concurrent.atomic.AtomicLong sortTimeMS>;	$l2 = virtualinvoke $r5.<java.util.concurrent.atomic.AtomicLong: long get()>();	$d4 = (double) $l2;	$d5 = $d4 / 1000.0;	$r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d5);	$r0[2] = $r6;	$r7 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: java.util.concurrent.atomic.AtomicLong mergeTimeMS>;	$l3 = virtualinvoke $r7.<java.util.concurrent.atomic.AtomicLong: long get()>();	$d6 = (double) $l3;	$d7 = $d6 / 1000.0;	$r8 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d7);	$r0[3] = $r8;	$l4 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long lineCount>;	$r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l4);	$r0[4] = $r9;	$i5 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: int tempMergeFiles>;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5);	$r0[5] = $r10;	$i6 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: int mergeRounds>;	$r11 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6);	$r0[6] = $r11;	$l7 = r1.<org.apache.lucene.util.OfflineSorter$SortInfo: long bufferSize>;	$d8 = (double) $l7;	$d9 = $d8 / 1048576.0;	$r12 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d9);	$r0[7] = $r12;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "time=%.2f sec. total (%.2f reading, %.2f sorting, %.2f merging), lines=%d, temp files=%d, merges=%d, soft ram limit=%.2f MB", $r0);	return $r13
;block_num 1