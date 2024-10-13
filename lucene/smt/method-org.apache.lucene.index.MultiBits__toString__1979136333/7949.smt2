(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var2770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun subs/-1378728083 (var233) (Array Int var2770))
(declare-fun getLength-Arr-var2770-1 ((Array Int var2770)) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun starts/-1378728083 (var233) (Array Int Int))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var233 var233)
(declare-const var2293 var233) ; Statement: r1 := @this: org.apache.lucene.index.MultiBits 
(assert (not (= var2293 null-var233)))
(define-const var2590 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2590)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2590!1 String)
(assert (= var2590!1 ""))
(define-const var2145 (Array Int var2770) (subs/-1378728083 var2293)) ; Statement: $r2 = r1.<org.apache.lucene.index.MultiBits: org.apache.lucene.util.Bits[] subs> 
(define-const var2316 Int (getLength-Arr-var2770-1 var2145)) ; Statement: $i0 = lengthof $r2 
(assert true)
(define-const var1908 String (append/-1001720160 var2590!1 var2316)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2590!2 String)
(assert (str.prefixof var2590!1 var2590!2))
(assert true)
;(assert (append/672562846 var1908 " subs: ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" subs: ") 
(declare-const var1908!1 String)
(assert (= var1908!1 (str.++ var1908 " subs: ")))
(define-const var3001 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var376 (Array Int var2770) (subs/-1378728083 var2293)) ; Statement: $r4 = r1.<org.apache.lucene.index.MultiBits: org.apache.lucene.util.Bits[] subs> 
(define-const var1214 Int (getLength-Arr-var2770-1 var376)) ; Statement: $i1 = lengthof $r4 
 ; Statement: if i7 >= $i1 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end=") 
(assert (>= var3001 var1214)) ; Cond: i7 >= $i1 
(assert true)
(define-const var1959 String (append/672562846 var2590!2 " end=")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end=") 
(declare-const var2590!3 String)
(assert (= var2590!3 (str.++ var2590!2 " end=")))
(define-const var3768 (Array Int Int) (starts/-1378728083 var2293)) ; Statement: $r6 = r1.<org.apache.lucene.index.MultiBits: int[] starts> 
(define-const var604 (Array Int var2770) (subs/-1378728083 var2293)) ; Statement: $r5 = r1.<org.apache.lucene.index.MultiBits: org.apache.lucene.util.Bits[] subs> 
(define-const var465 Int (getLength-Arr-var2770-1 var604)) ; Statement: $i2 = lengthof $r5 
(define-const var437 Int (select var3768 var465)) ; Statement: $i3 = $r6[$i2] 
(assert true)
;(assert (append/-1001720160 var1959 var437)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1959!1 String)
(assert (str.prefixof var1959 var1959!1))
(assert true)
(define-const var250 String (toString/-2075883882 var2590!3)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), subs/-1378728083=([org.apache.lucene.index.MultiBits], org.apache.lucene.util.Bits[]), getLength-Arr-var2770-1=([org.apache.lucene.util.Bits[]], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), starts/-1378728083=([org.apache.lucene.index.MultiBits], int[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var233=org.apache.lucene.index.MultiBits, var2293=r1, var2590=$r0, var2770=org.apache.lucene.util.Bits, var2145=$r2, var2316=$i0, var1908=$r3, var3001=i7, var376=$r4, var1214=$i1, var1959=$r7, var3768=$r6, var604=$r5, var465=$i2, var437=$i3, var250=$r8}
; {org.apache.lucene.index.MultiBits=var233, r1=var2293, $r0=var2590, org.apache.lucene.util.Bits=var2770, $r2=var2145, $i0=var2316, $r3=var1908, i7=var3001, $r4=var376, $i1=var1214, $r7=var1959, $r6=var3768, $r5=var604, $i2=var465, $i3=var437, $r8=var250}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.MultiBits;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.index.MultiBits: org.apache.lucene.util.Bits[] subs>;	$i0 = lengthof $r2;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" subs: ");	i7 = 0;	$r4 = r1.<org.apache.lucene.index.MultiBits: org.apache.lucene.util.Bits[] subs>;	$i1 = lengthof $r4;	if i7 >= $i1 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end=");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end=");	$r6 = r1.<org.apache.lucene.index.MultiBits: int[] starts>;	$r5 = r1.<org.apache.lucene.index.MultiBits: org.apache.lucene.util.Bits[] subs>;	$i2 = lengthof $r5;	$i3 = $r6[$i2];	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3