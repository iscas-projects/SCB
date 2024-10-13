(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1381_getParityBit/1036742592 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const var1381-BASE_CODE_ARRAY (Array Int Int))
(define-const var3885 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3885 18)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(18) 

(declare-const var3885!1 String)
(declare-const var2243 Int)
(define-const var1134 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
 ; Statement: if i10 >= 2 goto i12 = 2 
(assert (>= var1134 2)) ; Cond: i10 >= 2 
(define-const var2620 Int 2) ; Statement: i12 = 2 
(assert true) ; Non Conditional
 ; Statement: if i12 >= 8 goto i14 = 8 
(assert (>= var2620 8)) ; Cond: i12 >= 8 
(define-const var1993 Int 8) ; Statement: i14 = 8 
(assert true) ; Non Conditional
 ; Statement: if i14 >= 17 goto r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1993 17)) ; Cond: i14 >= 17 
(assert true)
(define-const var2951 String (toString/-2075883882 var3885!1)) ; Statement: r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var721 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var721)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var721!1 String)
(assert (= var721!1 ""))
(assert true)
(define-const var1124 String (append/672562846 var721!1 var2951)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var721!2 String)
(assert (= var721!2 (str.++ var721!1 var2951)))
(define-const var370 (Array Int Int) var1381-BASE_CODE_ARRAY) ; Statement: $r2 = <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY> 
(define-const var2670 Int (var1381_getParityBit/1036742592 (cast-from-String-to-String var2951))) ; Statement: $i0 = staticinvoke <cn.hutool.core.util.CreditCodeUtil: int getParityBit(java.lang.CharSequence)>(r11) 
(define-const var1587 Int (select var370 var2670)) ; Statement: $c1 = $r2[$i0] 
(assert true)
(define-const var278 String (append/-1166366385 var1124 var1587)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1124!1 String)
(assert (str.prefixof var1124 var1124!1))
(assert true)
(define-const var2806 String (toString/-2075883882 var278)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1381_getParityBit/1036742592=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3885=$r0, var2243=18, var1134=i10, var2620=i12, var1993=i14, var2951=r11, var721=$r1, var1124=$r3, var1381=cn.hutool.core.util.CreditCodeUtil, var370=$r2, var2670=$i0, var1587=$c1, var278=$r4, var2806=$r5}
; {$r0=var3885, 18=var2243, i10=var1134, i12=var2620, i14=var1993, r11=var2951, $r1=var721, $r3=var1124, cn.hutool.core.util.CreditCodeUtil=var1381, $r2=var370, $i0=var2670, $c1=var1587, $r4=var278, $r5=var2806}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(18);	i10 = 0;	if i10 >= 2 goto i12 = 2;	i12 = 2;	if i12 >= 8 goto i14 = 8;	i14 = 8;	if i14 >= 17 goto r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r2 = <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY>;	$i0 = staticinvoke <cn.hutool.core.util.CreditCodeUtil: int getParityBit(java.lang.CharSequence)>(r11);	$c1 = $r2[$i0];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7