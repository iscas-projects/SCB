(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var515 0)
(declare-sort var1641 0)
(declare-sort var99 0)
(declare-sort var391 0)
(declare-sort var3303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1990760591 (var515) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun version/1990760591 (var515) var1641)
(declare-fun cast-from-String-to-var99 (String) var99)
(declare-fun append/-1031950772 (String var99) String)
(declare-fun getUseCompoundFile/636738836 (var515) Bool)
(declare-fun maxDoc/1990760591 (var515) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun indexSort/1990760591 (var515) var391)
(declare-fun diagnostics/1990760591 (var515) var3303)
(declare-fun var3303_isEmpty/-1655013448 (var3303) Bool)
(declare-fun getAttributes/2044397165 (var515) var3303)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var515 var515)
(declare-const null-Int Int)
(declare-const null-var1641 var1641)
(declare-const null-var391 var391)
(declare-const var2208 var515) ; Statement: r1 := @this: org.apache.lucene.index.SegmentInfo 
(assert (not (= var2208 null-var515)))
(declare-const var3195 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3195 null-Int)))
(define-const var2464 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2464)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2464!1 String)
(assert (= var2464!1 ""))
(define-const var3530 String (name/1990760591 var2208)) ; Statement: $r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name> 
(assert true)
(define-const var0 String (append/672562846 var2464!1 var3530)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2464!2 String)
(assert (= var2464!2 (str.++ var2464!1 var3530)))
(assert true)
(define-const var941 String (append/-1166366385 var0 40)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var0!1 String)
(assert (str.prefixof var0 var0!1))
(define-const var1047 var1641 (version/1990760591 var2208)) ; Statement: $r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
 ; Statement: if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
(assert (not (not (= var1047 null-var1641)))) ; Negate: Cond: $r4 != null  
(define-const var692 var99 (cast-from-String-to-var99 "?")) ; Statement: $r17 = "?" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1952 String (append/-1031950772 var941 var692)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var941!1 String)
(assert (str.prefixof var941 var941!1))
(assert true)
(define-const var32 String (append/-1166366385 var1952 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1952!1 String)
(assert (str.prefixof var1952 var1952!1))
(assert true)
;(assert (append/-1166366385 var32 58)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var32!1 String)
(assert (str.prefixof var32 var32!1))
(assert true)
(define-const var717 Bool (getUseCompoundFile/636738836 var2208)) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>() 
 ; Statement: if $z0 == 0 goto $c2 = 67 
(assert (= (ite var717 1 0) 0)) ; Cond: $z0 == 0 
(define-const var445 Int 67) ; Statement: $c2 = 67 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2464!2 var445)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var2464!3 String)
(assert (str.prefixof var2464!2 var2464!3))
(define-const var1046 Int (maxDoc/1990760591 var2208)) ; Statement: $i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc> 
(assert true)
;(assert (append/-1001720160 var2464!3 var1046)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2464!4 String)
(assert (str.prefixof var2464!3 var2464!4))
 ; Statement: if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
(assert (= var3195 0)) ; Cond: i1 == 0 
(define-const var2751 var391 (indexSort/1990760591 var2208)) ; Statement: $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
 ; Statement: if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(assert (= var2751 null-var391)) ; Cond: $r8 == null 
(define-const var3808 var3303 (diagnostics/1990760591 var2208)) ; Statement: $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(define-const var1060 Bool (var3303_isEmpty/-1655013448 var3808)) ; Statement: $z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(assert (not (= (ite var1060 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var2463 var3303 (getAttributes/2044397165 var2208)) ; Statement: $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(define-const var2550 Bool (var3303_isEmpty/-1655013448 var2463)) ; Statement: $z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2550 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
(define-const var1500 String (toString/-2075883882 var2464!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1990760591=([org.apache.lucene.index.SegmentInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), version/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.util.Version), cast-from-String-to-var99=([java.lang.String], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getUseCompoundFile/636738836=([org.apache.lucene.index.SegmentInfo], boolean), maxDoc/1990760591=([org.apache.lucene.index.SegmentInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), indexSort/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.search.Sort), diagnostics/1990760591=([org.apache.lucene.index.SegmentInfo], java.util.Map), var3303_isEmpty/-1655013448=([java.util.Map], boolean), getAttributes/2044397165=([org.apache.lucene.index.SegmentInfo], java.util.Map), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var515=org.apache.lucene.index.SegmentInfo, var2208=r1, var3195=i1, var2464=$r0, var3530=$r2, var0=$r3, var941=$r5, var1641=org.apache.lucene.util.Version, var1047=$r4, var99=java.lang.Object, var692=$r17, var1952=$r6, var32=$r7, var717=$z0, var445=$c2, var1046=$i0, var391=org.apache.lucene.search.Sort, var2751=$r8, var3303=java.util.Map, var3808=$r9, var1060=$z1, var2463=$r14, var2550=$z2, var1500=$r10}
; {org.apache.lucene.index.SegmentInfo=var515, r1=var2208, i1=var3195, $r0=var2464, $r2=var3530, $r3=var0, $r5=var941, org.apache.lucene.util.Version=var1641, $r4=var1047, java.lang.Object=var99, $r17=var692, $r6=var1952, $r7=var32, $z0=var717, $c2=var445, $i0=var1046, org.apache.lucene.search.Sort=var391, $r8=var2751, java.util.Map=var3303, $r9=var3808, $z1=var1060, $r14=var2463, $z2=var2550, $r10=var1500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.SegmentInfo;	i1 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	$r17 = "?";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>();	if $z0 == 0 goto $c2 = 67;	$c2 = 67;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	$r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>();	if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>();	if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 9