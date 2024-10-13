(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2013 0)
(declare-sort var2212 0)
(declare-sort var2278 0)
(declare-sort var1698 0)
(declare-sort var1019 0)
(declare-sort var3931 0)
(declare-sort var1720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/1921414750 (var2013) var2212)
(declare-fun absoluteChunkStart/1921414750 (var2013) Int)
(declare-fun metadataPosition/1921414750 (var2013) Int)
(declare-fun position/-910273669 (var2212 Int) void)
(declare-fun readInt/1532414156 (var2212) Int)
(declare-fun readLong/-786079426 (var2212) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1019_log/979489950 (var2278 var1698 String) void)
(declare-fun var3931_read/-414679407 (var1720) var3931)
(declare-fun cast-from-var2212-to-var1720 (var2212) var1720)
(declare-const null-var2013 var2013)
(declare-const var2278-JFR_SYSTEM_PARSER var2278)
(declare-const var1698-TRACE var1698)
(declare-const var114 var2013) ; Statement: r0 := @this: jdk.jfr.internal.consumer.ChunkHeader 
(assert (not (= var114 null-var2013)))
(define-const var821 var2212 (input/1921414750 var114)) ; Statement: $r1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(define-const var2659 Int (absoluteChunkStart/1921414750 var114)) ; Statement: $l1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long absoluteChunkStart> 
(define-const var2232 Int (metadataPosition/1921414750 var114)) ; Statement: $l0 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long metadataPosition> 
(define-const var1471 Int (+ var2659 var2232)) ; Statement: $l2 = $l1 + $l0 
(assert true)
;(assert (position/-910273669 var821 var1471)) ; Statement: virtualinvoke $r1.<jdk.jfr.internal.consumer.RecordingInput: void position(long)>($l2) 

(declare-const var821!1 var2212)
(declare-const var1471!1 Int)
(define-const var1851 var2212 (input/1921414750 var114)) ; Statement: $r2 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert true)
;(assert (readInt/1532414156 var1851)) ; Statement: virtualinvoke $r2.<jdk.jfr.internal.consumer.RecordingInput: int readInt()>() 

(declare-const var1851!1 var2212)
(define-const var166 var2212 (input/1921414750 var114)) ; Statement: $r3 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert true)
(define-const var2760 Int (readLong/-786079426 var166)) ; Statement: l3 = virtualinvoke $r3.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>() 
(define-const var3687 Int (ite (> var2760 0) 1 (ite (< var2760 0) (- 1) 0))) ; Statement: $b4 = l3 cmp 0L 
 ; Statement: if $b4 == 0 goto $r4 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert (= var3687 0)) ; Cond: $b4 == 0 
(define-const var933 var2212 (input/1921414750 var114)) ; Statement: $r4 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert true)
;(assert (readLong/-786079426 var933)) ; Statement: virtualinvoke $r4.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>() 

(declare-const var933!1 var2212)
(define-const var2190 var2212 (input/1921414750 var114)) ; Statement: $r5 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert true)
;(assert (readLong/-786079426 var2190)) ; Statement: virtualinvoke $r5.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>() 

(declare-const var2190!1 var2212)
(define-const var442 var2212 (input/1921414750 var114)) ; Statement: $r6 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(assert true)
(define-const var3546 Int (readLong/-786079426 var442)) ; Statement: l5 = virtualinvoke $r6.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>() 
(define-const var3138 var2278 var2278-JFR_SYSTEM_PARSER) ; Statement: $r8 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_PARSER> 
(define-const var1673 var1698 var1698-TRACE) ; Statement: $r9 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel TRACE> 
(define-const var3033 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3033)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3033!1 String)
(assert (= var3033!1 ""))
(assert true)
(define-const var3999 String (append/672562846 var3033!1 "Metadata id=")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Metadata id=") 
(declare-const var3033!2 String)
(assert (= var3033!2 (str.++ var3033!1 "Metadata id=")))
(assert true)
(define-const var2904 String (append/-901862667 var3999 var3546)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l5) 
(declare-const var3999!1 String)
(assert (str.prefixof var3999 var3999!1))
(assert true)
(define-const var485 String (toString/-2075883882 var2904)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1019_log/979489950 var3138 var1673 var485)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r8, $r9, $r12) 

(declare-const var3138!1 var2278)
(declare-const var1673!1 var1698)
(declare-const var485!1 String)
(define-const var3293 var2212 (input/1921414750 var114)) ; Statement: $r13 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input> 
(define-const var2982 var3931 (var3931_read/-414679407 (cast-from-var2212-to-var1720 var3293))) ; Statement: $r14 = staticinvoke <jdk.jfr.internal.MetadataDescriptor: jdk.jfr.internal.MetadataDescriptor read(java.io.DataInput)>($r13) 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {input/1921414750=([jdk.jfr.internal.consumer.ChunkHeader], jdk.jfr.internal.consumer.RecordingInput), absoluteChunkStart/1921414750=([jdk.jfr.internal.consumer.ChunkHeader], long), metadataPosition/1921414750=([jdk.jfr.internal.consumer.ChunkHeader], long), position/-910273669=([jdk.jfr.internal.consumer.RecordingInput, long], void), readInt/1532414156=([jdk.jfr.internal.consumer.RecordingInput], int), readLong/-786079426=([jdk.jfr.internal.consumer.RecordingInput], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1019_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), var3931_read/-414679407=([java.io.DataInput], jdk.jfr.internal.MetadataDescriptor), cast-from-var2212-to-var1720=([jdk.jfr.internal.consumer.RecordingInput], java.io.DataInput)}
; {var2013=jdk.jfr.internal.consumer.ChunkHeader, var114=r0, var2212=jdk.jfr.internal.consumer.RecordingInput, var821=$r1, var2659=$l1, var2232=$l0, var1471=$l2, var1851=$r2, var166=$r3, var2760=l3, var3687=$b4, var933=$r4, var2190=$r5, var442=$r6, var3546=l5, var2278=jdk.jfr.internal.LogTag, var3138=$r8, var1698=jdk.jfr.internal.LogLevel, var1673=$r9, var3033=$r7, var3999=$r10, var2904=$r11, var485=$r12, var1019=jdk.jfr.internal.Logger, var3293=$r13, var3931=jdk.jfr.internal.MetadataDescriptor, var1720=java.io.DataInput, var2982=$r14}
; {jdk.jfr.internal.consumer.ChunkHeader=var2013, r0=var114, jdk.jfr.internal.consumer.RecordingInput=var2212, $r1=var821, $l1=var2659, $l0=var2232, $l2=var1471, $r2=var1851, $r3=var166, l3=var2760, $b4=var3687, $r4=var933, $r5=var2190, $r6=var442, l5=var3546, jdk.jfr.internal.LogTag=var2278, $r8=var3138, jdk.jfr.internal.LogLevel=var1698, $r9=var1673, $r7=var3033, $r10=var3999, $r11=var2904, $r12=var485, jdk.jfr.internal.Logger=var1019, $r13=var3293, jdk.jfr.internal.MetadataDescriptor=var3931, java.io.DataInput=var1720, $r14=var2982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.consumer.ChunkHeader;	$r1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	$l1 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long absoluteChunkStart>;	$l0 = r0.<jdk.jfr.internal.consumer.ChunkHeader: long metadataPosition>;	$l2 = $l1 + $l0;	virtualinvoke $r1.<jdk.jfr.internal.consumer.RecordingInput: void position(long)>($l2);	$r2 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	virtualinvoke $r2.<jdk.jfr.internal.consumer.RecordingInput: int readInt()>();	$r3 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	l3 = virtualinvoke $r3.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>();	$b4 = l3 cmp 0L;	if $b4 == 0 goto $r4 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	$r4 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	virtualinvoke $r4.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>();	$r5 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	virtualinvoke $r5.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>();	$r6 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	l5 = virtualinvoke $r6.<jdk.jfr.internal.consumer.RecordingInput: long readLong()>();	$r8 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_PARSER>;	$r9 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel TRACE>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Metadata id=");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l5);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r8, $r9, $r12);	$r13 = r0.<jdk.jfr.internal.consumer.ChunkHeader: jdk.jfr.internal.consumer.RecordingInput input>;	$r14 = staticinvoke <jdk.jfr.internal.MetadataDescriptor: jdk.jfr.internal.MetadataDescriptor read(java.io.DataInput)>($r13);	return $r14
;block_num 2