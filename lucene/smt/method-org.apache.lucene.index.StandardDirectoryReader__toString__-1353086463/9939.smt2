(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3326 0)
(declare-sort var1228 0)
(declare-sort var2670 0)
(declare-sort var743 0)
(declare-sort var3442 0)
(declare-sort var567 0)
(declare-sort var285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1228) ClassObject)
(declare-fun cast-from-var3326-to-var1228 (var3326) var1228)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun segmentInfos/-1074589151 (var3326) var2670)
(declare-fun getSegmentsFileName/62449429 (var2670) String)
(declare-fun writer/-1074589151 (var3326) var3442)
(declare-fun getSequentialSubReaders/1251479817 (var285) var567)
(declare-fun cast-from-var3326-to-var285 (var3326) var285)
(declare-fun var567_iterator/-912451715 (var567) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3326 var3326)
(declare-const null-String String)
(declare-const null-var3442 var3442)
(declare-const var3725 var3326) ; Statement: r1 := @this: org.apache.lucene.index.StandardDirectoryReader 
(assert (not (= var3725 null-var3326)))
(define-const var1975 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1975)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1975!1 String)
(assert (= var1975!1 ""))
(assert true)
(define-const var1214 ClassObject (getClass/1258963082 (cast-from-var3326-to-var1228 var3725))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2956 String (getSimpleName/-390194377 var1214)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var1975!1 var2956)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1975!2 String)
(assert (= var1975!2 (str.++ var1975!1 var2956)))
(assert true)
;(assert (append/-1166366385 var1975!2 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1975!3 String)
(assert (str.prefixof var1975!2 var1975!3))
(define-const var2958 var2670 (segmentInfos/-1074589151 var3725)) ; Statement: $r4 = r1.<org.apache.lucene.index.StandardDirectoryReader: org.apache.lucene.index.SegmentInfos segmentInfos> 
(assert true)
(define-const var2694 String (getSegmentsFileName/62449429 var2958)) ; Statement: r5 = virtualinvoke $r4.<org.apache.lucene.index.SegmentInfos: java.lang.String getSegmentsFileName()>() 
 ; Statement: if r5 == null goto $r6 = r1.<org.apache.lucene.index.StandardDirectoryReader: org.apache.lucene.index.IndexWriter writer> 
(assert (= var2694 null-String)) ; Cond: r5 == null 
(define-const var2769 var3442 (writer/-1074589151 var3725)) ; Statement: $r6 = r1.<org.apache.lucene.index.StandardDirectoryReader: org.apache.lucene.index.IndexWriter writer> 
 ; Statement: if $r6 == null goto $r7 = virtualinvoke r1.<org.apache.lucene.index.StandardDirectoryReader: java.util.List getSequentialSubReaders()>() 
(assert (= var2769 null-var3442)) ; Cond: $r6 == null 
(assert true)
(define-const var1963 var567 (getSequentialSubReaders/1251479817 (cast-from-var3326-to-var285 var3725))) ; Statement: $r7 = virtualinvoke r1.<org.apache.lucene.index.StandardDirectoryReader: java.util.List getSequentialSubReaders()>() 
(define-const var3003 Iterator (var567_iterator/-912451715 var1963)) ; Statement: $r11 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1693 Bool (Iterator_hasNext/-1669924200 var3003)) ; Statement: $z0 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var1693 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var1975!3 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1975!4 String)
(assert (str.prefixof var1975!3 var1975!4))
(assert true)
(define-const var2226 String (toString/-2075883882 var1975!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3326-to-var1228=([org.apache.lucene.index.StandardDirectoryReader], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), segmentInfos/-1074589151=([org.apache.lucene.index.StandardDirectoryReader], org.apache.lucene.index.SegmentInfos), getSegmentsFileName/62449429=([org.apache.lucene.index.SegmentInfos], java.lang.String), writer/-1074589151=([org.apache.lucene.index.StandardDirectoryReader], org.apache.lucene.index.IndexWriter), getSequentialSubReaders/1251479817=([org.apache.lucene.index.BaseCompositeReader], java.util.List), cast-from-var3326-to-var285=([org.apache.lucene.index.StandardDirectoryReader], org.apache.lucene.index.BaseCompositeReader), var567_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3326=org.apache.lucene.index.StandardDirectoryReader, var3725=r1, var1975=$r0, var1228=java.lang.Object, var1214=$r2, var2956=$r3, var2670=org.apache.lucene.index.SegmentInfos, var2958=$r4, var2694=r5, var743=null_type, var3442=org.apache.lucene.index.IndexWriter, var2769=$r6, var567=java.util.List, var285=org.apache.lucene.index.BaseCompositeReader, var1963=$r7, var3003=$r11, var1693=$z0, var2226=$r8}
; {org.apache.lucene.index.StandardDirectoryReader=var3326, r1=var3725, $r0=var1975, java.lang.Object=var1228, $r2=var1214, $r3=var2956, org.apache.lucene.index.SegmentInfos=var2670, $r4=var2958, r5=var2694, null_type=var743, org.apache.lucene.index.IndexWriter=var3442, $r6=var2769, java.util.List=var567, org.apache.lucene.index.BaseCompositeReader=var285, $r7=var1963, $r11=var3003, $z0=var1693, $r8=var2226}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.StandardDirectoryReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r4 = r1.<org.apache.lucene.index.StandardDirectoryReader: org.apache.lucene.index.SegmentInfos segmentInfos>;	r5 = virtualinvoke $r4.<org.apache.lucene.index.SegmentInfos: java.lang.String getSegmentsFileName()>();	if r5 == null goto $r6 = r1.<org.apache.lucene.index.StandardDirectoryReader: org.apache.lucene.index.IndexWriter writer>;	$r6 = r1.<org.apache.lucene.index.StandardDirectoryReader: org.apache.lucene.index.IndexWriter writer>;	if $r6 == null goto $r7 = virtualinvoke r1.<org.apache.lucene.index.StandardDirectoryReader: java.util.List getSequentialSubReaders()>();	$r7 = virtualinvoke r1.<org.apache.lucene.index.StandardDirectoryReader: java.util.List getSequentialSubReaders()>();	$r11 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5