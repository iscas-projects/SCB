(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3418 0)
(declare-sort var915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-785660172 (var3418) String)
(declare-fun var3418_align/-1693382875 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun firstSlot/-785660172 (var3418) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun flags/-785660172 (var3418) Int)
(declare-fun isScope/-319537503 (var3418) Bool)
(declare-fun isInternal/-499829144 (var3418) Bool)
(declare-fun isThis/1430473447 (var3418) Bool)
(declare-fun isProgramLevel/-778280219 (var3418) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun print/-2007916749 (var915 String) void)
(declare-const null-var3418 var3418)
(declare-const null-var915 var915)
(declare-const var472 var3418) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var472 null-var3418)))
(declare-const var1148 var915) ; Statement: r11 := @parameter0: java.io.PrintWriter 
(assert (not (= var1148 null-var915)))
(define-const var2143 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2143)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2143!1 String)
(assert (= var2143!1 ""))
(define-const var1533 String (name/-785660172 var472)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name> 
(define-const var1462 String (var3418_align/-1693382875 var1533 20)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r2, 20) 
(assert true)
(define-const var2497 String (append/672562846 var2143!1 var1462)) ; Statement: $r4 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2143!2 String)
(assert (= var2143!2 (str.++ var2143!1 var1462)))
(assert true)
(define-const var975 String (append/672562846 var2497 ": ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2497!1 String)
(assert (= var2497!1 (str.++ var2497 ": ")))
(assert true)
(define-const var1913 String (append/672562846 var975 ", ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var975!1 String)
(assert (= var975!1 (str.++ var975 ", ")))
(define-const var2262 Int (firstSlot/-785660172 var472)) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.Symbol: int firstSlot> 
(define-const var452 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 != $i5 goto $r15 = new java.lang.StringBuilder 
(assert (not (= var2262 var452))) ; Cond: $i0 != $i5 
(define-const var639 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var639)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var639!1 String)
(assert (= var639!1 ""))
(assert true)
(define-const var229 String (append/672562846 var639!1 "")) ; Statement: $r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var639!2 String)
(assert (= var639!2 (str.++ var639!1 "")))
(define-const var3732 Int (firstSlot/-785660172 var472)) ; Statement: $i1 = r1.<jdk.nashorn.internal.ir.Symbol: int firstSlot> 
(assert true)
(define-const var1116 String (append/-1001720160 var229 var3732)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var229!1 String)
(assert (str.prefixof var229 var229!1))
(assert true)
(define-const var1849 String (toString/-2075883882 var1116)) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1584 String (var3418_align/-1693382875 var1849 10)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r13, 10) 
(assert true)
;(assert (append/672562846 var1913 var1584)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1913!1 String)
(assert (= var1913!1 (str.++ var1913 var1584)))
(define-const var1921 Int (flags/-785660172 var472)) ; Statement: $i2 = r1.<jdk.nashorn.internal.ir.Symbol: int flags> 
(define-const var2637 Int (bv2nat (bvand ((_ int2bv 64) var1921) ((_ int2bv 64) 3)))) ; Statement: $i3 = $i2 & 3 
 ; Statement: tableswitch($i3) {     case 1: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" global");     case 2: goto $z3 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isConst()>();     case 3: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" param");     default: goto $z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>(); } 
(assert (and (not (= var2637 3)) (and (not (= var2637 2)) (and (not (= var2637 1)) true)))) ; Intersect: Negate: Cond: $i3 == 3   and Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Non Conditional   
(assert true)
(define-const var981 Bool (isScope/-319537503 var472)) ; Statement: $z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>() 
 ; Statement: if $z5 == 0 goto $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>() 
(assert (= (ite var981 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var994 Bool (isInternal/-499829144 var472)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>() 
(assert (= (ite var994 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var138 Bool (isThis/1430473447 var472)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>() 
(assert (= (ite var138 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var754 Bool (isProgramLevel/-778280219 var472)) ; Statement: $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (= (ite var754 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/-1166366385 var2143!2 10)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2143!3 String)
(assert (str.prefixof var2143!2 var2143!3))
(assert true)
(define-const var1095 String (toString/-2075883882 var2143!3)) ; Statement: $r12 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var1148 var1095)) ; Statement: virtualinvoke r11.<java.io.PrintWriter: void print(java.lang.String)>($r12) 

(declare-const var1148!1 var915)
(declare-const var1095!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-785660172=([jdk.nashorn.internal.ir.Symbol], java.lang.String), var3418_align/-1693382875=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), firstSlot/-785660172=([jdk.nashorn.internal.ir.Symbol], int), cast-from-Int-to-Int=([int], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), flags/-785660172=([jdk.nashorn.internal.ir.Symbol], int), isScope/-319537503=([jdk.nashorn.internal.ir.Symbol], boolean), isInternal/-499829144=([jdk.nashorn.internal.ir.Symbol], boolean), isThis/1430473447=([jdk.nashorn.internal.ir.Symbol], boolean), isProgramLevel/-778280219=([jdk.nashorn.internal.ir.Symbol], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), print/-2007916749=([java.io.PrintWriter, java.lang.String], void)}
; {var3418=jdk.nashorn.internal.ir.Symbol, var472=r1, var915=java.io.PrintWriter, var1148=r11, var2143=$r14, var1533=$r2, var1462=$r3, var2497=$r4, var975=$r5, var1913=$r10, var2262=$i0, var452=$i5, var639=$r15, var229=$r7, var3732=$i1, var1116=$r8, var1849=$r13, var1584=$r9, var1921=$i2, var2637=$i3, var981=$z5, var994=$z0, var138=$z1, var754=$z2, var1095=$r12}
; {jdk.nashorn.internal.ir.Symbol=var3418, r1=var472, java.io.PrintWriter=var915, r11=var1148, $r14=var2143, $r2=var1533, $r3=var1462, $r4=var2497, $r5=var975, $r10=var1913, $i0=var2262, $i5=var452, $r15=var639, $r7=var229, $i1=var3732, $r8=var1116, $r13=var1849, $r9=var1584, $i2=var1921, $i3=var2637, $z5=var981, $z0=var994, $z1=var138, $z2=var754, $r12=var1095}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Symbol;	r11 := @parameter0: java.io.PrintWriter;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name>;	$r3 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r2, 20);	$r4 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i0 = r1.<jdk.nashorn.internal.ir.Symbol: int firstSlot>;	$i5 = (int) -1;	if $i0 != $i5 goto $r15 = new java.lang.StringBuilder;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$i1 = r1.<jdk.nashorn.internal.ir.Symbol: int firstSlot>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r13, 10);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$i2 = r1.<jdk.nashorn.internal.ir.Symbol: int flags>;	$i3 = $i2 & 3;	tableswitch($i3) {     case 1: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" global");     case 2: goto $z3 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isConst()>();     case 3: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" param");     default: goto $z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>(); };	$z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>();	if $z5 == 0 goto $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>();	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>();	if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>();	$z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>();	$z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>();	if $z2 == 0 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r12 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r11.<java.io.PrintWriter: void print(java.lang.String)>($r12);	return
;block_num 8