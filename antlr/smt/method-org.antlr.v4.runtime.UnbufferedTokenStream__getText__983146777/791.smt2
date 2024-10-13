(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var997 0)
(declare-sort var3521 0)
(declare-sort var677 0)
(declare-sort var1303 0)
(declare-sort var1692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBufferStartIndex/-1061114896 (var997) Int)
(declare-fun tokens/-1211218298 (var997) (Array Int var677))
(declare-fun getLength-Arr-var677-1 ((Array Int var677)) Int)
(declare-fun a/1351597580 (var3521) Int)
(declare-fun b/1351597580 (var3521) Int)
(declare-fun var1303-init () var1303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1692) String)
(declare-fun cast-from-var3521-to-var1692 (var3521) var1692)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1303 String) void)
(declare-const null-var997 var997)
(declare-const null-var3521 var3521)
(declare-const var2878 var997) ; Statement: r0 := @this: org.antlr.v4.runtime.UnbufferedTokenStream 
(assert (not (= var2878 null-var997)))
(declare-const var1061 var3521) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.misc.Interval 
(assert (not (= var1061 null-var3521)))
(assert true)
(define-const var503 Int (getBufferStartIndex/-1061114896 var2878)) ; Statement: i0 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>() 
(define-const var1738 (Array Int var677) (tokens/-1211218298 var2878)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: org.antlr.v4.runtime.Token[] tokens> 
(define-const var2406 Int (getLength-Arr-var677-1 var1738)) ; Statement: $i1 = lengthof $r1 
(define-const var1443 Int (+ var503 var2406)) ; Statement: $i2 = i0 + $i1 
(define-const var316 Int (- var1443 1)) ; Statement: i3 = $i2 - 1 
(define-const var2563 Int (a/1351597580 var1061)) ; Statement: i4 = r2.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var2788 Int (b/1351597580 var1061)) ; Statement: i5 = r2.<org.antlr.v4.runtime.misc.Interval: int b> 
 ; Statement: if i4 < i0 goto $r3 = new java.lang.UnsupportedOperationException 
(assert (< var2563 var503)) ; Cond: i4 < i0 
(define-const var1421 var1303 var1303-init) ; Statement: $r3 = new java.lang.UnsupportedOperationException 
(define-const var2515 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2515)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2515!1 String)
(assert (= var2515!1 ""))
(assert true)
(define-const var2416 String (append/672562846 var2515!1 "interval ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interval ") 
(declare-const var2515!2 String)
(assert (= var2515!2 (str.++ var2515!1 "interval ")))
(assert true)
(define-const var668 String (append/-1031950772 var2416 (cast-from-var3521-to-var1692 var1061))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2416!1 String)
(assert (str.prefixof var2416 var2416!1))
(assert true)
(define-const var3872 String (append/672562846 var668 " not in token buffer window: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in token buffer window: ") 
(declare-const var668!1 String)
(assert (= var668!1 (str.++ var668 " not in token buffer window: ")))
(assert true)
(define-const var2413 String (append/-1001720160 var3872 var503)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3872!1 String)
(assert (str.prefixof var3872 var3872!1))
(assert true)
(define-const var401 String (append/672562846 var2413 "..")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var2413!1 String)
(assert (= var2413!1 (str.++ var2413 "..")))
(assert true)
(define-const var1646 String (append/-1001720160 var401 var316)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var401!1 String)
(assert (str.prefixof var401 var401!1))
(assert true)
(define-const var117 String (toString/-2075883882 var1646)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1421 var117)) ; Statement: specialinvoke $r3.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r11) 

(declare-const var1421!1 var1303)
(declare-const var117!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getBufferStartIndex/-1061114896=([org.antlr.v4.runtime.UnbufferedTokenStream], int), tokens/-1211218298=([org.antlr.v4.runtime.UnbufferedTokenStream], org.antlr.v4.runtime.Token[]), getLength-Arr-var677-1=([org.antlr.v4.runtime.Token[]], int), a/1351597580=([org.antlr.v4.runtime.misc.Interval], int), b/1351597580=([org.antlr.v4.runtime.misc.Interval], int), var1303-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3521-to-var1692=([org.antlr.v4.runtime.misc.Interval], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var997=org.antlr.v4.runtime.UnbufferedTokenStream, var2878=r0, var3521=org.antlr.v4.runtime.misc.Interval, var1061=r2, var503=i0, var677=org.antlr.v4.runtime.Token, var1738=$r1, var2406=$i1, var1443=$i2, var316=i3, var2563=i4, var2788=i5, var1303=java.lang.UnsupportedOperationException, var1421=$r3, var2515=$r4, var2416=$r5, var1692=java.lang.Object, var668=$r6, var3872=$r7, var2413=$r8, var401=$r9, var1646=$r10, var117=$r11}
; {org.antlr.v4.runtime.UnbufferedTokenStream=var997, r0=var2878, org.antlr.v4.runtime.misc.Interval=var3521, r2=var1061, i0=var503, org.antlr.v4.runtime.Token=var677, $r1=var1738, $i1=var2406, $i2=var1443, i3=var316, i4=var2563, i5=var2788, java.lang.UnsupportedOperationException=var1303, $r3=var1421, $r4=var2515, $r5=var2416, java.lang.Object=var1692, $r6=var668, $r7=var3872, $r8=var2413, $r9=var401, $r10=var1646, $r11=var117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.UnbufferedTokenStream;	r2 := @parameter0: org.antlr.v4.runtime.misc.Interval;	i0 = virtualinvoke r0.<org.antlr.v4.runtime.UnbufferedTokenStream: int getBufferStartIndex()>();	$r1 = r0.<org.antlr.v4.runtime.UnbufferedTokenStream: org.antlr.v4.runtime.Token[] tokens>;	$i1 = lengthof $r1;	$i2 = i0 + $i1;	i3 = $i2 - 1;	i4 = r2.<org.antlr.v4.runtime.misc.Interval: int a>;	i5 = r2.<org.antlr.v4.runtime.misc.Interval: int b>;	if i4 < i0 goto $r3 = new java.lang.UnsupportedOperationException;	$r3 = new java.lang.UnsupportedOperationException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interval ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in token buffer window: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r11);	throw $r3
;block_num 2