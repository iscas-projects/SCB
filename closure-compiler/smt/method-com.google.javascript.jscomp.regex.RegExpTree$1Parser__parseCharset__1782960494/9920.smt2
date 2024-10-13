(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3923 0)
(declare-sort var3065 0)
(declare-sort var3427 0)
(declare-sort var2028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var3923) String)
(declare-fun pos/117970391 (var3923) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3065_checkState/1431124798 (Bool) void)
(declare-fun val$flags/117970391 (var3923) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun limit/117970391 (var3923) Int)
(declare-fun var2028-init () var2028)
(declare-fun <init>/829135842 (var2028 var3427 var3427) void)
(declare-const null-var3923 var3923)
(declare-const var3427-EMPTY var3427)
(declare-const var2830 var3923) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var2830 null-var3923)))
(define-const var1168 String (val$pattern/117970391 var2830)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var2851 Int (pos/117970391 var2830)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var1168) var2851) (<= 0 var2851))))
(define-const var2128 Int (charAt/698050440 var1168 var2851)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var1845 Int (cast-from-Int-to-Int var2128)) ; Statement: $i45 = (int) $c1 
 ; Statement: if $i45 != 91 goto $z3 = 0 
(assert (not (not (= var1845 91)))) ; Negate: Cond: $i45 != 91  
(define-const var820 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var3065_checkState/1431124798 var820)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var820!1 Bool)
(define-const var782 Int (pos/117970391 var2830)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2211 Int (+ var782 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var2830!1 var3923)
(assert (not (= var2830!1 null-var3923)))
(assert (= (pos/117970391 var2830!1) var2211)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var2030 String (val$flags/117970391 var2830!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags> 
(assert true)
(define-const var217 Int (indexOf/-1037706067 var2030 105)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105) 
 ; Statement: if $i4 < 0 goto $z4 = 0 
(assert (not (< var217 0))) ; Negate: Cond: $i4 < 0  
(define-const var870 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z0 = $z4] 
(assert true) ; Non Conditional
(define-const var810 Bool var870) ; Statement: z0 = $z4 
(define-const var1100 Int (pos/117970391 var2830!1)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1920 Int (limit/117970391 var2830!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i6 >= $i5 goto $z8 = 0 
(assert (>= var1100 var1920)) ; Cond: $i6 >= $i5 
(define-const var2956 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(define-const var2493 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
(define-const var2669 Bool var2493) ; Statement: z1 = $z7 
 ; Statement: if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert (= (ite var2956 1 0) 0)) ; Cond: $z8 == 0 
(define-const var3977 var3427 var3427-EMPTY) ; Statement: r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(define-const var1589 var3427 var3427-EMPTY) ; Statement: r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert true) ; Non Conditional
(define-const var1444 Int (pos/117970391 var2830!1)) ; Statement: $i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1478 Int (limit/117970391 var2830!1)) ; Statement: $i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (>= var1444 var1478)) ; Cond: $i38 >= $i39 
(define-const var2298 Int (pos/117970391 var2830!1)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2542 Int (+ var2298 1)) ; Statement: $i8 = $i7 + 1 
(declare-const var2830!2 var3923)
(assert (not (= var2830!2 null-var3923)))
(assert (= (pos/117970391 var2830!2) var2542)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8 
 ; Statement: if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (= (ite var2669 1 0) 0)) ; Cond: z1 == 0 
(define-const var1805 var2028 var2028-init) ; Statement: $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert true)
;(assert (<init>/829135842 var1805 var3977 var1589)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19) 

(declare-const var1805!1 var2028)
(declare-const var3977!1 var3427)
(declare-const var1589!1 var3427)
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3065_checkState/1431124798=([boolean], void), val$flags/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var2028-init=([], com.google.javascript.jscomp.regex.RegExpTree$Charset), <init>/829135842=([com.google.javascript.jscomp.regex.RegExpTree$Charset, com.google.javascript.jscomp.regex.CharRanges, com.google.javascript.jscomp.regex.CharRanges], void)}
; {var3923=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var2830=r0, var1168=$r1, var2851=$i0, var2128=$c1, var1845=$i45, var820=$z3, var3065=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var782=$i2, var2211=$i3, var2030=$r2, var217=$i4, var870=$z4, var810=z0, var1100=$i6, var1920=$i5, var2956=$z8, var2493=$z7, var2669=z1, var3427=com.google.javascript.jscomp.regex.CharRanges, var3977=r18, var1589=r19, var1444=$i38, var1478=$i39, var2298=$i7, var2542=$i8, var2028=com.google.javascript.jscomp.regex.RegExpTree$Charset, var1805=$r24}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var3923, r0=var2830, $r1=var1168, $i0=var2851, $c1=var2128, $i45=var1845, $z3=var820, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3065, $i2=var782, $i3=var2211, $r2=var2030, $i4=var217, $z4=var870, z0=var810, $i6=var1100, $i5=var1920, $z8=var2956, $z7=var2493, z1=var2669, com.google.javascript.jscomp.regex.CharRanges=var3427, r18=var3977, r19=var1589, $i38=var1444, $i39=var1478, $i7=var2298, $i8=var2542, com.google.javascript.jscomp.regex.RegExpTree$Charset=var2028, $r24=var1805}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i45 = (int) $c1;	if $i45 != 91 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;	$i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105);	if $i4 < 0 goto $z4 = 0;	$z4 = 1;	goto [?= z0 = $z4];	z0 = $z4;	$i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i6 >= $i5 goto $z8 = 0;	$z8 = 0;	$z7 = 0;	z1 = $z7;	if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	$i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i8 = $i7 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8;	if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	$r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19);	return $r24
;block_num 11