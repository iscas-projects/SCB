(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3376 0)
(declare-sort var2284 0)
(declare-sort var2033 0)
(declare-sort var2641 0)
(declare-sort var937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1990760591 (var3376) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun version/1990760591 (var3376) var2284)
(declare-fun cast-from-var2284-to-var2033 (var2284) var2033)
(declare-fun append/-1031950772 (String var2033) String)
(declare-fun getUseCompoundFile/636738836 (var3376) Bool)
(declare-fun maxDoc/1990760591 (var3376) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun indexSort/1990760591 (var3376) var2641)
(declare-fun diagnostics/1990760591 (var3376) var937)
(declare-fun var937_isEmpty/-1655013448 (var937) Bool)
(declare-fun getAttributes/2044397165 (var3376) var937)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3376 var3376)
(declare-const null-Int Int)
(declare-const null-var2284 var2284)
(declare-const null-var2641 var2641)
(declare-const var3660 var3376) ; Statement: r1 := @this: org.apache.lucene.index.SegmentInfo 
(assert (not (= var3660 null-var3376)))
(declare-const var3993 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3993 null-Int)))
(define-const var3531 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3531)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3531!1 String)
(assert (= var3531!1 ""))
(define-const var717 String (name/1990760591 var3660)) ; Statement: $r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name> 
(assert true)
(define-const var3221 String (append/672562846 var3531!1 var717)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3531!2 String)
(assert (= var3531!2 (str.++ var3531!1 var717)))
(assert true)
(define-const var324 String (append/-1166366385 var3221 40)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3221!1 String)
(assert (str.prefixof var3221 var3221!1))
(define-const var2700 var2284 (version/1990760591 var3660)) ; Statement: $r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
 ; Statement: if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
(assert (not (= var2700 null-var2284))) ; Cond: $r4 != null 
(define-const var3626 var2033 (cast-from-var2284-to-var2033 (version/1990760591 var3660))) ; Statement: $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
(assert true) ; Non Conditional
(assert true)
(define-const var249 String (append/-1031950772 var324 var3626)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var324!1 String)
(assert (str.prefixof var324 var324!1))
(assert true)
(define-const var2646 String (append/-1166366385 var249 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var249!1 String)
(assert (str.prefixof var249 var249!1))
(assert true)
;(assert (append/-1166366385 var2646 58)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2646!1 String)
(assert (str.prefixof var2646 var2646!1))
(assert true)
(define-const var1790 Bool (getUseCompoundFile/636738836 var3660)) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>() 
 ; Statement: if $z0 == 0 goto $c2 = 67 
(assert (not (= (ite var1790 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var621 Int 99) ; Statement: $c2 = 99 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3531!2 var621)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3531!3 String)
(assert (str.prefixof var3531!2 var3531!3))
(define-const var1594 Int (maxDoc/1990760591 var3660)) ; Statement: $i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc> 
(assert true)
;(assert (append/-1001720160 var3531!3 var1594)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3531!4 String)
(assert (str.prefixof var3531!3 var3531!4))
 ; Statement: if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
(assert (= var3993 0)) ; Cond: i1 == 0 
(define-const var2506 var2641 (indexSort/1990760591 var3660)) ; Statement: $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
 ; Statement: if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(assert (= var2506 null-var2641)) ; Cond: $r8 == null 
(define-const var3358 var937 (diagnostics/1990760591 var3660)) ; Statement: $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(define-const var1145 Bool (var937_isEmpty/-1655013448 var3358)) ; Statement: $z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(assert (not (= (ite var1145 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var280 var937 (getAttributes/2044397165 var3660)) ; Statement: $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(define-const var1387 Bool (var937_isEmpty/-1655013448 var280)) ; Statement: $z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1387 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
(define-const var2600 String (toString/-2075883882 var3531!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1990760591=([org.apache.lucene.index.SegmentInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), version/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.util.Version), cast-from-var2284-to-var2033=([org.apache.lucene.util.Version], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getUseCompoundFile/636738836=([org.apache.lucene.index.SegmentInfo], boolean), maxDoc/1990760591=([org.apache.lucene.index.SegmentInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), indexSort/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.search.Sort), diagnostics/1990760591=([org.apache.lucene.index.SegmentInfo], java.util.Map), var937_isEmpty/-1655013448=([java.util.Map], boolean), getAttributes/2044397165=([org.apache.lucene.index.SegmentInfo], java.util.Map), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3376=org.apache.lucene.index.SegmentInfo, var3660=r1, var3993=i1, var3531=$r0, var717=$r2, var3221=$r3, var324=$r5, var2284=org.apache.lucene.util.Version, var2700=$r4, var2033=java.lang.Object, var3626=$r17, var249=$r6, var2646=$r7, var1790=$z0, var621=$c2, var1594=$i0, var2641=org.apache.lucene.search.Sort, var2506=$r8, var937=java.util.Map, var3358=$r9, var1145=$z1, var280=$r14, var1387=$z2, var2600=$r10}
; {org.apache.lucene.index.SegmentInfo=var3376, r1=var3660, i1=var3993, $r0=var3531, $r2=var717, $r3=var3221, $r5=var324, org.apache.lucene.util.Version=var2284, $r4=var2700, java.lang.Object=var2033, $r17=var3626, $r6=var249, $r7=var2646, $z0=var1790, $c2=var621, $i0=var1594, org.apache.lucene.search.Sort=var2641, $r8=var2506, java.util.Map=var937, $r9=var3358, $z1=var1145, $r14=var280, $z2=var1387, $r10=var2600}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.SegmentInfo;	i1 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	$r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>();	if $z0 == 0 goto $c2 = 67;	$c2 = 99;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	$r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>();	if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>();	if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 9