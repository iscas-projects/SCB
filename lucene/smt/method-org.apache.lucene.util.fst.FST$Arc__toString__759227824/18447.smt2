(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/-1244626302 (var2926) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun label/1207931508 (var2926) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun flag/-1153025638 (var2926 Int) Bool)
(declare-fun bytesPerArc/-862561944 (var2926) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2926 var2926)
(declare-const var3341 var2926) ; Statement: r1 := @this: org.apache.lucene.util.fst.FST$Arc 
(assert (not (= var3341 null-var2926)))
(define-const var2851 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2851)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2851!1 String)
(assert (= var2851!1 ""))
(assert true)
(define-const var3414 String (append/672562846 var2851!1 " target=")) ; Statement: $r2 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" target=") 
(declare-const var2851!2 String)
(assert (= var2851!2 (str.++ var2851!1 " target=")))
(assert true)
(define-const var738 Int (target/-1244626302 var3341)) ; Statement: $l0 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: long target()>() 
(assert true)
;(assert (append/-901862667 var3414 var738)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3414!1 String)
(assert (str.prefixof var3414 var3414!1))
(assert true)
(define-const var2495 String (append/672562846 var2851!2 " label=0x")) ; Statement: $r4 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" label=0x") 
(declare-const var2851!3 String)
(assert (= var2851!3 (str.++ var2851!2 " label=0x")))
(assert true)
(define-const var216 Int (label/1207931508 var3341)) ; Statement: $i1 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: int label()>() 
(define-const var3924 String (Int_toHexString/1865784998 var216)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1) 
(assert true)
;(assert (append/672562846 var2495 var3924)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2495!1 String)
(assert (= var2495!1 (str.++ var2495 var3924)))
(assert true)
(define-const var286 Bool (flag/-1153025638 var3341 1)) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(2) 
(assert (= (ite var286 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2240 Bool (flag/-1153025638 var3341 2)) ; Statement: $z1 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(2) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(4) 
(assert (= (ite var2240 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1961 Bool (flag/-1153025638 var3341 4)) ; Statement: $z2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(4) 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(8) 
(assert (= (ite var1961 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2443 Bool (flag/-1153025638 var3341 8)) ; Statement: $z3 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(8) 
 ; Statement: if $z3 == 0 goto $z4 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(16) 
(assert (= (ite var2443 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var2834 Bool (flag/-1153025638 var3341 16)) ; Statement: $z4 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(16) 
 ; Statement: if $z4 == 0 goto $z5 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(32) 
(assert (= (ite var2834 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var644 Bool (flag/-1153025638 var3341 32)) ; Statement: $z5 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(32) 
 ; Statement: if $z5 == 0 goto $i2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: int bytesPerArc()>() 
(assert (= (ite var644 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var2153 Int (bytesPerArc/-862561944 var3341)) ; Statement: $i2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: int bytesPerArc()>() 
 ; Statement: if $i2 == 0 goto $r17 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2153 0)) ; Cond: $i2 == 0 
(assert true)
(define-const var2385 String (toString/-2075883882 var2851!3)) ; Statement: $r17 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/-1244626302=([org.apache.lucene.util.fst.FST$Arc], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), label/1207931508=([org.apache.lucene.util.fst.FST$Arc], int), Int_toHexString/1865784998=([int], java.lang.String), flag/-1153025638=([org.apache.lucene.util.fst.FST$Arc, int], boolean), bytesPerArc/-862561944=([org.apache.lucene.util.fst.FST$Arc], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2926=org.apache.lucene.util.fst.FST$Arc, var3341=r1, var2851=$r18, var3414=$r2, var738=$l0, var2495=$r4, var216=$i1, var3924=$r3, var286=$z0, var2240=$z1, var1961=$z2, var2443=$z3, var2834=$z4, var644=$z5, var2153=$i2, var2385=$r17}
; {org.apache.lucene.util.fst.FST$Arc=var2926, r1=var3341, $r18=var2851, $r2=var3414, $l0=var738, $r4=var2495, $i1=var216, $r3=var3924, $z0=var286, $z1=var2240, $z2=var1961, $z3=var2443, $z4=var2834, $z5=var644, $i2=var2153, $r17=var2385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.fst.FST$Arc;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" target=");	$l0 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: long target()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" label=0x");	$i1 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: int label()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(1);	if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(2);	$z1 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(2);	if $z1 == 0 goto $z2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(4);	$z2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(4);	if $z2 == 0 goto $z3 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(8);	$z3 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(8);	if $z3 == 0 goto $z4 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(16);	$z4 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(16);	if $z4 == 0 goto $z5 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(32);	$z5 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: boolean flag(int)>(32);	if $z5 == 0 goto $i2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: int bytesPerArc()>();	$i2 = virtualinvoke r1.<org.apache.lucene.util.fst.FST$Arc: int bytesPerArc()>();	if $i2 == 0 goto $r17 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 8