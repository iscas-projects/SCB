(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1032 0)
(declare-sort var2498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-785660172 (var1032) String)
(declare-fun var1032_align/-1693382875 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun firstSlot/-785660172 (var1032) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun flags/-785660172 (var1032) Int)
(declare-fun isScope/-319537503 (var1032) Bool)
(declare-fun isInternal/-499829144 (var1032) Bool)
(declare-fun isThis/1430473447 (var1032) Bool)
(declare-fun isProgramLevel/-778280219 (var1032) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var2498 String) void)
(declare-const null-var1032 var1032)
(declare-const null-var2498 var2498)
(declare-const var431 var1032) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var431 null-var1032)))
(declare-const var2786 var2498) ; Statement: r11 := @parameter0: java.io.PrintWriter 
(assert (not (= var2786 null-var2498)))
(define-const var1556 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1556)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1556!1 String)
(assert (= var1556!1 ""))
(define-const var1324 String (name/-785660172 var431)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name> 
(define-const var2651 String (var1032_align/-1693382875 var1324 20)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r2, 20) 
(assert true)
(define-const var1567 String (append/672562846 var1556!1 var2651)) ; Statement: $r4 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1556!2 String)
(assert (= var1556!2 (str.++ var1556!1 var2651)))
(assert true)
(define-const var634 String (append/672562846 var1567 ": ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1567!1 String)
(assert (= var1567!1 (str.++ var1567 ": ")))
(assert true)
(define-const var3875 String (append/672562846 var634 ", ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var634!1 String)
(assert (= var634!1 (str.++ var634 ", ")))
(define-const var1115 Int (firstSlot/-785660172 var431)) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.Symbol: int firstSlot> 
(define-const var3326 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 != $i5 goto $r15 = new java.lang.StringBuilder 
(assert (not (not (= var1115 var3326)))) ; Negate: Cond: $i0 != $i5  
(define-const var286 String "none") ; Statement: $r13 = "none" 
 ; Statement: goto [?= $r9 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r13, 10)] 
(assert true) ; Non Conditional
(define-const var1462 String (var1032_align/-1693382875 var286 10)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r13, 10) 
(assert true)
;(assert (append/672562846 var3875 var1462)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3875!1 String)
(assert (= var3875!1 (str.++ var3875 var1462)))
(define-const var3484 Int (flags/-785660172 var431)) ; Statement: $i2 = r1.<jdk.nashorn.internal.ir.Symbol: int flags> 
(define-const var3230 Int (bv2nat (bvand ((_ int2bv 64) var3484) ((_ int2bv 64) 3)))) ; Statement: $i3 = $i2 & 3 
 ; Statement: tableswitch($i3) {     case 1: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" global");     case 2: goto $z3 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isConst()>();     case 3: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" param");     default: goto $z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>(); } 
(assert (and (not (= var3230 3)) (and (not (= var3230 2)) (and (not (= var3230 1)) true)))) ; Intersect: Negate: Cond: $i3 == 3   and Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Non Conditional   
(assert true)
(define-const var1122 Bool (isScope/-319537503 var431)) ; Statement: $z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>() 
 ; Statement: if $z5 == 0 goto $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>() 
(assert (= (ite var1122 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var1165 Bool (isInternal/-499829144 var431)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>() 
(assert (= (ite var1165 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1750 Bool (isThis/1430473447 var431)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>() 
(assert (= (ite var1750 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var612 Bool (isProgramLevel/-778280219 var431)) ; Statement: $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (= (ite var612 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/-1166366385 var1556!2 10)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1556!3 String)
(assert (str.prefixof var1556!2 var1556!3))
(assert true)
(define-const var1860 String (toString/-2075883882 var1556!3)) ; Statement: $r12 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var2786 var1860)) ; Statement: virtualinvoke r11.<java.io.PrintWriter: void print(java.lang.String)>($r12) 

(declare-const var2786!1 var2498)
(declare-const var1860!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-785660172=([jdk.nashorn.internal.ir.Symbol], java.lang.String), var1032_align/-1693382875=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), firstSlot/-785660172=([jdk.nashorn.internal.ir.Symbol], int), cast-from-Int-to-Int=([int], int), flags/-785660172=([jdk.nashorn.internal.ir.Symbol], int), isScope/-319537503=([jdk.nashorn.internal.ir.Symbol], boolean), isInternal/-499829144=([jdk.nashorn.internal.ir.Symbol], boolean), isThis/1430473447=([jdk.nashorn.internal.ir.Symbol], boolean), isProgramLevel/-778280219=([jdk.nashorn.internal.ir.Symbol], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void)}
; {var1032=jdk.nashorn.internal.ir.Symbol, var431=r1, var2498=java.io.PrintWriter, var2786=r11, var1556=$r14, var1324=$r2, var2651=$r3, var1567=$r4, var634=$r5, var3875=$r10, var1115=$i0, var3326=$i5, var286=$r13, var1462=$r9, var3484=$i2, var3230=$i3, var1122=$z5, var1165=$z0, var1750=$z1, var612=$z2, var1860=$r12}
; {jdk.nashorn.internal.ir.Symbol=var1032, r1=var431, java.io.PrintWriter=var2498, r11=var2786, $r14=var1556, $r2=var1324, $r3=var2651, $r4=var1567, $r5=var634, $r10=var3875, $i0=var1115, $i5=var3326, $r13=var286, $r9=var1462, $i2=var3484, $i3=var3230, $z5=var1122, $z0=var1165, $z1=var1750, $z2=var612, $r12=var1860}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Symbol;	r11 := @parameter0: java.io.PrintWriter;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name>;	$r3 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r2, 20);	$r4 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i0 = r1.<jdk.nashorn.internal.ir.Symbol: int firstSlot>;	$i5 = (int) -1;	if $i0 != $i5 goto $r15 = new java.lang.StringBuilder;	$r13 = "none";	goto [?= $r9 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r13, 10)];	$r9 = staticinvoke <jdk.nashorn.internal.ir.Symbol: java.lang.String align(java.lang.String,int)>($r13, 10);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$i2 = r1.<jdk.nashorn.internal.ir.Symbol: int flags>;	$i3 = $i2 & 3;	tableswitch($i3) {     case 1: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" global");     case 2: goto $z3 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isConst()>();     case 3: goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" param");     default: goto $z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>(); };	$z5 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isScope()>();	if $z5 == 0 goto $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>();	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isInternal()>();	if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>();	$z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isThis()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>();	$z2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: boolean isProgramLevel()>();	if $z2 == 0 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r12 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r11.<java.io.PrintWriter: void print(java.lang.String)>($r12);	return
;block_num 8