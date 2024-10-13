(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var334 0)
(declare-sort var559 0)
(declare-sort var1760 0)
(declare-sort var1606 0)
(declare-sort var149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1990760591 (var334) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun version/1990760591 (var334) var559)
(declare-fun cast-from-String-to-var1760 (String) var1760)
(declare-fun append/-1031950772 (String var1760) String)
(declare-fun getUseCompoundFile/636738836 (var334) Bool)
(declare-fun maxDoc/1990760591 (var334) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun indexSort/1990760591 (var334) var1606)
(declare-fun diagnostics/1990760591 (var334) var149)
(declare-fun var149_isEmpty/-1655013448 (var149) Bool)
(declare-fun getAttributes/2044397165 (var334) var149)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var334 var334)
(declare-const null-Int Int)
(declare-const null-var559 var559)
(declare-const null-var1606 var1606)
(declare-const var257 var334) ; Statement: r1 := @this: org.apache.lucene.index.SegmentInfo 
(assert (not (= var257 null-var334)))
(declare-const var881 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var881 null-Int)))
(define-const var1480 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1480)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1480!1 String)
(assert (= var1480!1 ""))
(define-const var1695 String (name/1990760591 var257)) ; Statement: $r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name> 
(assert true)
(define-const var2352 String (append/672562846 var1480!1 var1695)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1480!2 String)
(assert (= var1480!2 (str.++ var1480!1 var1695)))
(assert true)
(define-const var3113 String (append/-1166366385 var2352 40)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2352!1 String)
(assert (str.prefixof var2352 var2352!1))
(define-const var70 var559 (version/1990760591 var257)) ; Statement: $r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
 ; Statement: if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
(assert (not (not (= var70 null-var559)))) ; Negate: Cond: $r4 != null  
(define-const var397 var1760 (cast-from-String-to-var1760 "?")) ; Statement: $r17 = "?" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2553 String (append/-1031950772 var3113 var397)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var3113!1 String)
(assert (str.prefixof var3113 var3113!1))
(assert true)
(define-const var1708 String (append/-1166366385 var2553 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2553!1 String)
(assert (str.prefixof var2553 var2553!1))
(assert true)
;(assert (append/-1166366385 var1708 58)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1708!1 String)
(assert (str.prefixof var1708 var1708!1))
(assert true)
(define-const var2478 Bool (getUseCompoundFile/636738836 var257)) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>() 
 ; Statement: if $z0 == 0 goto $c2 = 67 
(assert (not (= (ite var2478 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3914 Int 99) ; Statement: $c2 = 99 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1480!2 var3914)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var1480!3 String)
(assert (str.prefixof var1480!2 var1480!3))
(define-const var160 Int (maxDoc/1990760591 var257)) ; Statement: $i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc> 
(assert true)
;(assert (append/-1001720160 var1480!3 var160)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1480!4 String)
(assert (str.prefixof var1480!3 var1480!4))
 ; Statement: if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
(assert (= var881 0)) ; Cond: i1 == 0 
(define-const var2086 var1606 (indexSort/1990760591 var257)) ; Statement: $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
 ; Statement: if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(assert (= var2086 null-var1606)) ; Cond: $r8 == null 
(define-const var3939 var149 (diagnostics/1990760591 var257)) ; Statement: $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(define-const var1539 Bool (var149_isEmpty/-1655013448 var3939)) ; Statement: $z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(assert (not (= (ite var1539 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var3764 var149 (getAttributes/2044397165 var257)) ; Statement: $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(define-const var806 Bool (var149_isEmpty/-1655013448 var3764)) ; Statement: $z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var806 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
(define-const var1562 String (toString/-2075883882 var1480!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1990760591=([org.apache.lucene.index.SegmentInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), version/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.util.Version), cast-from-String-to-var1760=([java.lang.String], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getUseCompoundFile/636738836=([org.apache.lucene.index.SegmentInfo], boolean), maxDoc/1990760591=([org.apache.lucene.index.SegmentInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), indexSort/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.search.Sort), diagnostics/1990760591=([org.apache.lucene.index.SegmentInfo], java.util.Map), var149_isEmpty/-1655013448=([java.util.Map], boolean), getAttributes/2044397165=([org.apache.lucene.index.SegmentInfo], java.util.Map), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var334=org.apache.lucene.index.SegmentInfo, var257=r1, var881=i1, var1480=$r0, var1695=$r2, var2352=$r3, var3113=$r5, var559=org.apache.lucene.util.Version, var70=$r4, var1760=java.lang.Object, var397=$r17, var2553=$r6, var1708=$r7, var2478=$z0, var3914=$c2, var160=$i0, var1606=org.apache.lucene.search.Sort, var2086=$r8, var149=java.util.Map, var3939=$r9, var1539=$z1, var3764=$r14, var806=$z2, var1562=$r10}
; {org.apache.lucene.index.SegmentInfo=var334, r1=var257, i1=var881, $r0=var1480, $r2=var1695, $r3=var2352, $r5=var3113, org.apache.lucene.util.Version=var559, $r4=var70, java.lang.Object=var1760, $r17=var397, $r6=var2553, $r7=var1708, $z0=var2478, $c2=var3914, $i0=var160, org.apache.lucene.search.Sort=var1606, $r8=var2086, java.util.Map=var149, $r9=var3939, $z1=var1539, $r14=var3764, $z2=var806, $r10=var1562}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.SegmentInfo;	i1 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	$r17 = "?";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>();	if $z0 == 0 goto $c2 = 67;	$c2 = 99;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	$r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>();	if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>();	if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 9