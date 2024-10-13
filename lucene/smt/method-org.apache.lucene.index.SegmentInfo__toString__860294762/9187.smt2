(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1696 0)
(declare-sort var1408 0)
(declare-sort var780 0)
(declare-sort var299 0)
(declare-sort var1190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1990760591 (var1696) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun version/1990760591 (var1696) var1408)
(declare-fun cast-from-var1408-to-var780 (var1408) var780)
(declare-fun append/-1031950772 (String var780) String)
(declare-fun getUseCompoundFile/636738836 (var1696) Bool)
(declare-fun maxDoc/1990760591 (var1696) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun indexSort/1990760591 (var1696) var299)
(declare-fun diagnostics/1990760591 (var1696) var1190)
(declare-fun var1190_isEmpty/-1655013448 (var1190) Bool)
(declare-fun getAttributes/2044397165 (var1696) var1190)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1696 var1696)
(declare-const null-Int Int)
(declare-const null-var1408 var1408)
(declare-const null-var299 var299)
(declare-const var2858 var1696) ; Statement: r1 := @this: org.apache.lucene.index.SegmentInfo 
(assert (not (= var2858 null-var1696)))
(declare-const var310 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var310 null-Int)))
(define-const var2880 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2880)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2880!1 String)
(assert (= var2880!1 ""))
(define-const var3621 String (name/1990760591 var2858)) ; Statement: $r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name> 
(assert true)
(define-const var2798 String (append/672562846 var2880!1 var3621)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2880!2 String)
(assert (= var2880!2 (str.++ var2880!1 var3621)))
(assert true)
(define-const var1417 String (append/-1166366385 var2798 40)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2798!1 String)
(assert (str.prefixof var2798 var2798!1))
(define-const var581 var1408 (version/1990760591 var2858)) ; Statement: $r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
 ; Statement: if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
(assert (not (= var581 null-var1408))) ; Cond: $r4 != null 
(define-const var2966 var780 (cast-from-var1408-to-var780 (version/1990760591 var2858))) ; Statement: $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version> 
(assert true) ; Non Conditional
(assert true)
(define-const var2023 String (append/-1031950772 var1417 var2966)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var1417!1 String)
(assert (str.prefixof var1417 var1417!1))
(assert true)
(define-const var2691 String (append/-1166366385 var2023 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2023!1 String)
(assert (str.prefixof var2023 var2023!1))
(assert true)
;(assert (append/-1166366385 var2691 58)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2691!1 String)
(assert (str.prefixof var2691 var2691!1))
(assert true)
(define-const var989 Bool (getUseCompoundFile/636738836 var2858)) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>() 
 ; Statement: if $z0 == 0 goto $c2 = 67 
(assert (= (ite var989 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2199 Int 67) ; Statement: $c2 = 67 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2880!2 var2199)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var2880!3 String)
(assert (str.prefixof var2880!2 var2880!3))
(define-const var337 Int (maxDoc/1990760591 var2858)) ; Statement: $i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc> 
(assert true)
;(assert (append/-1001720160 var2880!3 var337)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2880!4 String)
(assert (str.prefixof var2880!3 var2880!4))
 ; Statement: if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
(assert (= var310 0)) ; Cond: i1 == 0 
(define-const var3566 var299 (indexSort/1990760591 var2858)) ; Statement: $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort> 
 ; Statement: if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(assert (= var3566 null-var299)) ; Cond: $r8 == null 
(define-const var3219 var1190 (diagnostics/1990760591 var2858)) ; Statement: $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics> 
(define-const var1727 Bool (var1190_isEmpty/-1655013448 var3219)) ; Statement: $z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(assert (not (= (ite var1727 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var3967 var1190 (getAttributes/2044397165 var2858)) ; Statement: $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>() 
(define-const var3701 Bool (var1190_isEmpty/-1655013448 var3967)) ; Statement: $z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var3701 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
(define-const var3822 String (toString/-2075883882 var2880!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1990760591=([org.apache.lucene.index.SegmentInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), version/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.util.Version), cast-from-var1408-to-var780=([org.apache.lucene.util.Version], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getUseCompoundFile/636738836=([org.apache.lucene.index.SegmentInfo], boolean), maxDoc/1990760591=([org.apache.lucene.index.SegmentInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), indexSort/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.search.Sort), diagnostics/1990760591=([org.apache.lucene.index.SegmentInfo], java.util.Map), var1190_isEmpty/-1655013448=([java.util.Map], boolean), getAttributes/2044397165=([org.apache.lucene.index.SegmentInfo], java.util.Map), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1696=org.apache.lucene.index.SegmentInfo, var2858=r1, var310=i1, var2880=$r0, var3621=$r2, var2798=$r3, var1417=$r5, var1408=org.apache.lucene.util.Version, var581=$r4, var780=java.lang.Object, var2966=$r17, var2023=$r6, var2691=$r7, var989=$z0, var2199=$c2, var337=$i0, var299=org.apache.lucene.search.Sort, var3566=$r8, var1190=java.util.Map, var3219=$r9, var1727=$z1, var3967=$r14, var3701=$z2, var3822=$r10}
; {org.apache.lucene.index.SegmentInfo=var1696, r1=var2858, i1=var310, $r0=var2880, $r2=var3621, $r3=var2798, $r5=var1417, org.apache.lucene.util.Version=var1408, $r4=var581, java.lang.Object=var780, $r17=var2966, $r6=var2023, $r7=var2691, $z0=var989, $c2=var2199, $i0=var337, org.apache.lucene.search.Sort=var299, $r8=var3566, java.util.Map=var1190, $r9=var3219, $z1=var1727, $r14=var3967, $z2=var3701, $r10=var3822}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.SegmentInfo;	i1 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.index.SegmentInfo: java.lang.String name>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r4 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	if $r4 != null goto $r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	$r17 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.util.Version version>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$z0 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: boolean getUseCompoundFile()>();	if $z0 == 0 goto $c2 = 67;	$c2 = 67;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$i0 = r1.<org.apache.lucene.index.SegmentInfo: int maxDoc>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	if i1 == 0 goto $r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	$r8 = r1.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.search.Sort indexSort>;	if $r8 == null goto $r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$r9 = r1.<org.apache.lucene.index.SegmentInfo: java.util.Map diagnostics>;	$z1 = interfaceinvoke $r9.<java.util.Map: boolean isEmpty()>();	if $z1 != 0 goto $r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$r14 = virtualinvoke r1.<org.apache.lucene.index.SegmentInfo: java.util.Map getAttributes()>();	$z2 = interfaceinvoke $r14.<java.util.Map: boolean isEmpty()>();	if $z2 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 9