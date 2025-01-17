(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var324 0)
(declare-sort var52 0)
(declare-sort var630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getClass/1258963082 (var52) ClassObject)
(declare-fun cast-from-var324-to-var52 (var324) var52)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun minMergeSize/-1773705000 (var324) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun mergeFactor/-1773705000 (var324) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun maxMergeSize/-1773705000 (var324) Int)
(declare-fun maxMergeSizeForForcedMerge/-1773705000 (var324) Int)
(declare-fun calibrateSizeByDeletes/-1773705000 (var324) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun maxMergeDocs/-1773705000 (var324) Int)
(declare-fun getMaxCFSSegmentSizeMB/1047642185 (var630) Float64)
(declare-fun cast-from-var324-to-var630 (var324) var630)
(declare-fun append/33611274 (String Float64) String)
(declare-fun noCFSRatio/-1248977512 (var630) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var324 var324)
(declare-const var3705 var324) ; Statement: r1 := @this: org.apache.lucene.index.LogMergePolicy 
(assert (not (= var3705 null-var324)))
(define-const var3335 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2616 ClassObject (getClass/1258963082 (cast-from-var324-to-var52 var3705))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var84 String (getSimpleName/-390194377 var2616)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(define-const var3847 String (str.++ "[\u0001: " var84)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("[\u0001: ") 
(assert true)
;(assert (<init>/-1061048412 var3335 var3847)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var3335!1 String)
(assert (= var3335!1 var3847))
(assert true)
(define-const var2643 String (append/672562846 var3335!1 "minMergeSize=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minMergeSize=") 
(declare-const var3335!2 String)
(assert (= var3335!2 (str.++ var3335!1 "minMergeSize=")))
(define-const var873 Int (minMergeSize/-1773705000 var3705)) ; Statement: $l0 = r1.<org.apache.lucene.index.LogMergePolicy: long minMergeSize> 
(assert true)
(define-const var1497 String (append/-901862667 var2643 var873)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2643!1 String)
(assert (str.prefixof var2643 var2643!1))
(assert true)
;(assert (append/672562846 var1497 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1497!1 String)
(assert (= var1497!1 (str.++ var1497 ", ")))
(assert true)
(define-const var2387 String (append/672562846 var3335!2 "mergeFactor=")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mergeFactor=") 
(declare-const var3335!3 String)
(assert (= var3335!3 (str.++ var3335!2 "mergeFactor=")))
(define-const var1292 Int (mergeFactor/-1773705000 var3705)) ; Statement: $i1 = r1.<org.apache.lucene.index.LogMergePolicy: int mergeFactor> 
(assert true)
(define-const var538 String (append/-1001720160 var2387 var1292)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2387!1 String)
(assert (str.prefixof var2387 var2387!1))
(assert true)
;(assert (append/672562846 var538 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var538!1 String)
(assert (= var538!1 (str.++ var538 ", ")))
(assert true)
(define-const var3086 String (append/672562846 var3335!3 "maxMergeSize=")) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMergeSize=") 
(declare-const var3335!4 String)
(assert (= var3335!4 (str.++ var3335!3 "maxMergeSize=")))
(define-const var87 Int (maxMergeSize/-1773705000 var3705)) ; Statement: $l2 = r1.<org.apache.lucene.index.LogMergePolicy: long maxMergeSize> 
(assert true)
(define-const var286 String (append/-901862667 var3086 var87)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var3086!1 String)
(assert (str.prefixof var3086 var3086!1))
(assert true)
;(assert (append/672562846 var286 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var286!1 String)
(assert (= var286!1 (str.++ var286 ", ")))
(assert true)
(define-const var605 String (append/672562846 var3335!4 "maxMergeSizeForForcedMerge=")) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMergeSizeForForcedMerge=") 
(declare-const var3335!5 String)
(assert (= var3335!5 (str.++ var3335!4 "maxMergeSizeForForcedMerge=")))
(define-const var77 Int (maxMergeSizeForForcedMerge/-1773705000 var3705)) ; Statement: $l3 = r1.<org.apache.lucene.index.LogMergePolicy: long maxMergeSizeForForcedMerge> 
(assert true)
(define-const var3283 String (append/-901862667 var605 var77)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var605!1 String)
(assert (str.prefixof var605 var605!1))
(assert true)
;(assert (append/672562846 var3283 ", ")) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3283!1 String)
(assert (= var3283!1 (str.++ var3283 ", ")))
(assert true)
(define-const var2344 String (append/672562846 var3335!5 "calibrateSizeByDeletes=")) ; Statement: $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("calibrateSizeByDeletes=") 
(declare-const var3335!6 String)
(assert (= var3335!6 (str.++ var3335!5 "calibrateSizeByDeletes=")))
(define-const var1959 Bool (calibrateSizeByDeletes/-1773705000 var3705)) ; Statement: $z0 = r1.<org.apache.lucene.index.LogMergePolicy: boolean calibrateSizeByDeletes> 
(assert true)
(define-const var2997 String (append/-388390247 var2344 var1959)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var2344!1 String)
(assert (str.prefixof var2344 var2344!1))
(assert true)
;(assert (append/672562846 var2997 ", ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2997!1 String)
(assert (= var2997!1 (str.++ var2997 ", ")))
(assert true)
(define-const var2402 String (append/672562846 var3335!6 "maxMergeDocs=")) ; Statement: $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMergeDocs=") 
(declare-const var3335!7 String)
(assert (= var3335!7 (str.++ var3335!6 "maxMergeDocs=")))
(define-const var3105 Int (maxMergeDocs/-1773705000 var3705)) ; Statement: $i4 = r1.<org.apache.lucene.index.LogMergePolicy: int maxMergeDocs> 
(assert true)
(define-const var2531 String (append/-1001720160 var2402 var3105)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2402!1 String)
(assert (str.prefixof var2402 var2402!1))
(assert true)
;(assert (append/672562846 var2531 ", ")) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2531!1 String)
(assert (= var2531!1 (str.++ var2531 ", ")))
(assert true)
(define-const var3786 String (append/672562846 var3335!7 "maxCFSSegmentSizeMB=")) ; Statement: $r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxCFSSegmentSizeMB=") 
(declare-const var3335!8 String)
(assert (= var3335!8 (str.++ var3335!7 "maxCFSSegmentSizeMB=")))
(assert true)
(define-const var2133 Float64 (getMaxCFSSegmentSizeMB/1047642185 (cast-from-var324-to-var630 var3705))) ; Statement: $d0 = virtualinvoke r1.<org.apache.lucene.index.LogMergePolicy: double getMaxCFSSegmentSizeMB()>() 
(assert true)
(define-const var2784 String (append/33611274 var3786 var2133)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var3786!1 String)
(assert (str.prefixof var3786 var3786!1))
(assert true)
;(assert (append/672562846 var2784 ", ")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2784!1 String)
(assert (= var2784!1 (str.++ var2784 ", ")))
(assert true)
(define-const var1179 String (append/672562846 var3335!8 "noCFSRatio=")) ; Statement: $r19 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("noCFSRatio=") 
(declare-const var3335!9 String)
(assert (= var3335!9 (str.++ var3335!8 "noCFSRatio=")))
(define-const var2218 Float64 (noCFSRatio/-1248977512 (cast-from-var324-to-var630 var3705))) ; Statement: $d1 = r1.<org.apache.lucene.index.LogMergePolicy: double noCFSRatio> 
(assert true)
;(assert (append/33611274 var1179 var2218)) ; Statement: virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var1179!1 String)
(assert (str.prefixof var1179 var1179!1))
(assert true)
;(assert (append/672562846 var3335!9 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3335!10 String)
(assert (= var3335!10 (str.++ var3335!9 "]")))
(assert true)
(define-const var2820 String (toString/-2075883882 var3335!10)) ; Statement: $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var324-to-var52=([org.apache.lucene.index.LogMergePolicy], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), minMergeSize/-1773705000=([org.apache.lucene.index.LogMergePolicy], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), mergeFactor/-1773705000=([org.apache.lucene.index.LogMergePolicy], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), maxMergeSize/-1773705000=([org.apache.lucene.index.LogMergePolicy], long), maxMergeSizeForForcedMerge/-1773705000=([org.apache.lucene.index.LogMergePolicy], long), calibrateSizeByDeletes/-1773705000=([org.apache.lucene.index.LogMergePolicy], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), maxMergeDocs/-1773705000=([org.apache.lucene.index.LogMergePolicy], int), getMaxCFSSegmentSizeMB/1047642185=([org.apache.lucene.index.MergePolicy], double), cast-from-var324-to-var630=([org.apache.lucene.index.LogMergePolicy], org.apache.lucene.index.MergePolicy), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), noCFSRatio/-1248977512=([org.apache.lucene.index.MergePolicy], double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var324=org.apache.lucene.index.LogMergePolicy, var3705=r1, var3335=$r0, var52=java.lang.Object, var2616=$r2, var84=$r3, var3847=$r4, var2643=$r5, var873=$l0, var1497=$r6, var2387=$r7, var1292=$i1, var538=$r8, var3086=$r9, var87=$l2, var286=$r10, var605=$r11, var77=$l3, var3283=$r12, var2344=$r13, var1959=$z0, var2997=$r14, var2402=$r15, var3105=$i4, var2531=$r16, var3786=$r17, var630=org.apache.lucene.index.MergePolicy, var2133=$d0, var2784=$r18, var1179=$r19, var2218=$d1, var2820=$r20}
; {org.apache.lucene.index.LogMergePolicy=var324, r1=var3705, $r0=var3335, java.lang.Object=var52, $r2=var2616, $r3=var84, $r4=var3847, $r5=var2643, $l0=var873, $r6=var1497, $r7=var2387, $i1=var1292, $r8=var538, $r9=var3086, $l2=var87, $r10=var286, $r11=var605, $l3=var77, $r12=var3283, $r13=var2344, $z0=var1959, $r14=var2997, $r15=var2402, $i4=var3105, $r16=var2531, $r17=var3786, org.apache.lucene.index.MergePolicy=var630, $d0=var2133, $r18=var2784, $r19=var1179, $d1=var2218, $r20=var2820}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 16,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.LogMergePolicy;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("[\u0001: ");	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minMergeSize=");	$l0 = r1.<org.apache.lucene.index.LogMergePolicy: long minMergeSize>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mergeFactor=");	$i1 = r1.<org.apache.lucene.index.LogMergePolicy: int mergeFactor>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMergeSize=");	$l2 = r1.<org.apache.lucene.index.LogMergePolicy: long maxMergeSize>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMergeSizeForForcedMerge=");	$l3 = r1.<org.apache.lucene.index.LogMergePolicy: long maxMergeSizeForForcedMerge>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("calibrateSizeByDeletes=");	$z0 = r1.<org.apache.lucene.index.LogMergePolicy: boolean calibrateSizeByDeletes>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMergeDocs=");	$i4 = r1.<org.apache.lucene.index.LogMergePolicy: int maxMergeDocs>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxCFSSegmentSizeMB=");	$d0 = virtualinvoke r1.<org.apache.lucene.index.LogMergePolicy: double getMaxCFSSegmentSizeMB()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r19 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("noCFSRatio=");	$d1 = r1.<org.apache.lucene.index.LogMergePolicy: double noCFSRatio>;	virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 1