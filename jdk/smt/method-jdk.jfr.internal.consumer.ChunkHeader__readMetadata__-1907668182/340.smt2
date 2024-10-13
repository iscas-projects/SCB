(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3073 0)
(declare-sort var2345 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/1921414750 (var3073) var2345)
(declare-fun absoluteChunkStart/1921414750 (var3073) Int)
(declare-fun metadataPosition/1921414750 (var3073) Int)
(declare-fun position/-910273669 (var2345 Int) void)
(declare-fun readInt/1532414156 (var2345) Int)
(declare-fun readLong/-786079426 (var2345) Int)
(declare-fun var3337-init () var3337)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3337 String) void)
(declare-const null-var3073 var3073)
(declare-const var3536 var3073) ; Statement: r0 := @this: jdk.jfr.internal.consumer.ChunkHeader 
(assert (not (= var3536 null-var3073)))
(define-const var1828 var2345 (input/1921414750 var3536)) ; Statement: $r1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(define-const var3643 Int (absoluteChunkStart/1921414750 var3536)) ; Statement: $l1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long absoluteChunkStart> 
(define-const var2470 Int (metadataPosition/1921414750 var3536)) ; Statement: $l0 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long metadataPosition> 
(define-const var2077 Int (+ var3643 var2470)) ; Statement: $l2 = $l1 + $l0 
(assert true)
;(assert (position/-910273669 var1828 var2077)) ; Statement: virtualinvoke $r1.<jdk.jfr.internal.consumer.RecordingInput: void position(long)>($l2) 

(declare-const var1828!1 var2345)
(declare-const var2077!1 Int)
(define-const var394 var2345 (input/1921414750 var3536)) ; Statement: $r2 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert true)
;(assert (readInt/1532414156 var394)) ; Statement: virtualinvoke $r2.<jdk.jfr.internal.consumer.RecordingInput: int readInt()>() 

(declare-const var394!1 var2345)
(define-const var537 var2345 (input/1921414750 var3536)) ; Statement: $r3 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert true)
(define-const var2046 Int (readLong/-786079426 var537)) ; Statement: l3 = virtualinvoke $r3.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>() 
(define-const var104 Int (ite (> var2046 0) 1 (ite (< var2046 0) (- 1) 0))) ; Statement: $b4 = l3 cmp 0L 
 ; Statement: if $b4 == 0 goto $r4 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert (not (= var104 0))) ; Negate: Cond: $b4 == 0  
(define-const var3349 var3337 var3337-init) ; Statement: $r15 = new java.io.IOException 
(define-const var3627 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3627)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3627!1 String)
(assert (= var3627!1 ""))
(assert true)
(define-const var2439 String (append/672562846 var3627!1 "Expected metadata event. Type id=")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected metadata event. Type id=") 
(declare-const var3627!2 String)
(assert (= var3627!2 (str.++ var3627!1 "Expected metadata event. Type id=")))
(assert true)
(define-const var2520 String (append/-901862667 var2439 var2046)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l3) 
(declare-const var2439!1 String)
(assert (str.prefixof var2439 var2439!1))
(assert true)
(define-const var3828 String (append/672562846 var2520 ", should have been ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", should have been ") 
(declare-const var2520!1 String)
(assert (= var2520!1 (str.++ var2520 ", should have been ")))
(assert true)
(define-const var1233 String (append/-901862667 var3828 0)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(0L) 
(declare-const var3828!1 String)
(assert (str.prefixof var3828 var3828!1))
(assert true)
(define-const var2501 String (toString/-2075883882 var1233)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3349 var2501)) ; Statement: specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r21) 

(declare-const var3349!1 var3337)
(declare-const var2501!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {input/1921414750=([jdk.jfr.internal.consumer.ChunkHeader], jdk.jfr.internal.consumer.RecordingInput), absoluteChunkStart/1921414750=([jdk.jfr.internal.consumer.ChunkHeader], long), metadataPosition/1921414750=([jdk.jfr.internal.consumer.ChunkHeader], long), position/-910273669=([jdk.jfr.internal.consumer.RecordingInput, long], void), readInt/1532414156=([jdk.jfr.internal.consumer.RecordingInput], int), readLong/-786079426=([jdk.jfr.internal.consumer.RecordingInput], long), var3337-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3073=jdk.jfr.internal.consumer.ChunkHeader, var3536=r0, var2345=jdk.jfr.internal.consumer.RecordingInput, var1828=$r1, var3643=$l1, var2470=$l0, var2077=$l2, var394=$r2, var537=$r3, var2046=l3, var104=$b4, var3337=java.io.IOException, var3349=$r15, var3627=$r16, var2439=$r17, var2520=$r18, var3828=$r19, var1233=$r20, var2501=$r21}
; {jdk.jfr.internal.consumer.ChunkHeader=var3073, r0=var3536, jdk.jfr.internal.consumer.RecordingInput=var2345, $r1=var1828, $l1=var3643, $l0=var2470, $l2=var2077, $r2=var394, $r3=var537, l3=var2046, $b4=var104, java.io.IOException=var3337, $r15=var3349, $r16=var3627, $r17=var2439, $r18=var2520, $r19=var3828, $r20=var1233, $r21=var2501}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.consumer.ChunkHeader;	$r1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	$l1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long absoluteChunkStart>;	$l0 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long metadataPosition>;	$l2 = $l1 + $l0;	virtualinvoke $r1.<jdk.jfr.internal.consumer.RecordingInput: void position(long)>($l2);	$r2 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	virtualinvoke $r2.<jdk.jfr.internal.consumer.RecordingInput: int readInt()>();	$r3 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	l3 = virtualinvoke $r3.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>();	$b4 = l3 cmp 0L;	if $b4 == 0 goto $r4 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	$r15 = new java.io.IOException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected metadata event. Type id=");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", should have been ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(0L);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r21);	throw $r15
;block_num 2