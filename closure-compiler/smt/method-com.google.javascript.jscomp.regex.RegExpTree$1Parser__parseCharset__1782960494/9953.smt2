(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1868 0)
(declare-sort var1563 0)
(declare-sort var543 0)
(declare-sort var3251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var1868) String)
(declare-fun pos/117970391 (var1868) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1563_checkState/1431124798 (Bool) void)
(declare-fun val$flags/117970391 (var1868) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun limit/117970391 (var1868) Int)
(declare-fun var3251-init () var3251)
(declare-fun <init>/829135842 (var3251 var543 var543) void)
(declare-const null-var1868 var1868)
(declare-const var543-EMPTY var543)
(declare-const var1674 var1868) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var1674 null-var1868)))
(define-const var2099 String (val$pattern/117970391 var1674)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var826 Int (pos/117970391 var1674)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var2099) var826) (<= 0 var826))))
(define-const var3592 Int (charAt/698050440 var2099 var826)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var733 Int (cast-from-Int-to-Int var3592)) ; Statement: $i45 = (int) $c1 
 ; Statement: if $i45 != 91 goto $z3 = 0 
(assert (not (not (= var733 91)))) ; Negate: Cond: $i45 != 91  
(define-const var1833 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var1563_checkState/1431124798 var1833)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var1833!1 Bool)
(define-const var2792 Int (pos/117970391 var1674)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var330 Int (+ var2792 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var1674!1 var1868)
(assert (not (= var1674!1 null-var1868)))
(assert (= (pos/117970391 var1674!1) var330)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var3195 String (val$flags/117970391 var1674!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags> 
(assert true)
(define-const var1618 Int (indexOf/-1037706067 var3195 105)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105) 
 ; Statement: if $i4 < 0 goto $z4 = 0 
(assert (< var1618 0)) ; Cond: $i4 < 0 
(define-const var1972 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var3610 Bool var1972) ; Statement: z0 = $z4 
(define-const var317 Int (pos/117970391 var1674!1)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var68 Int (limit/117970391 var1674!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i6 >= $i5 goto $z8 = 0 
(assert (>= var317 var68)) ; Cond: $i6 >= $i5 
(define-const var352 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(define-const var1604 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
(define-const var1913 Bool var1604) ; Statement: z1 = $z7 
 ; Statement: if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert (= (ite var352 1 0) 0)) ; Cond: $z8 == 0 
(define-const var2637 var543 var543-EMPTY) ; Statement: r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(define-const var3166 var543 var543-EMPTY) ; Statement: r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert true) ; Non Conditional
(define-const var3794 Int (pos/117970391 var1674!1)) ; Statement: $i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3186 Int (limit/117970391 var1674!1)) ; Statement: $i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (>= var3794 var3186)) ; Cond: $i38 >= $i39 
(define-const var2795 Int (pos/117970391 var1674!1)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2306 Int (+ var2795 1)) ; Statement: $i8 = $i7 + 1 
(declare-const var1674!2 var1868)
(assert (not (= var1674!2 null-var1868)))
(assert (= (pos/117970391 var1674!2) var2306)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8 
 ; Statement: if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (= (ite var1913 1 0) 0)) ; Cond: z1 == 0 
(define-const var1428 var3251 var3251-init) ; Statement: $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert true)
;(assert (<init>/829135842 var1428 var2637 var3166)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19) 

(declare-const var1428!1 var3251)
(declare-const var2637!1 var543)
(declare-const var3166!1 var543)
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1563_checkState/1431124798=([boolean], void), val$flags/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var3251-init=([], com.google.javascript.jscomp.regex.RegExpTree$Charset), <init>/829135842=([com.google.javascript.jscomp.regex.RegExpTree$Charset, com.google.javascript.jscomp.regex.CharRanges, com.google.javascript.jscomp.regex.CharRanges], void)}
; {var1868=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var1674=r0, var2099=$r1, var826=$i0, var3592=$c1, var733=$i45, var1833=$z3, var1563=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2792=$i2, var330=$i3, var3195=$r2, var1618=$i4, var1972=$z4, var3610=z0, var317=$i6, var68=$i5, var352=$z8, var1604=$z7, var1913=z1, var543=com.google.javascript.jscomp.regex.CharRanges, var2637=r18, var3166=r19, var3794=$i38, var3186=$i39, var2795=$i7, var2306=$i8, var3251=com.google.javascript.jscomp.regex.RegExpTree$Charset, var1428=$r24}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var1868, r0=var1674, $r1=var2099, $i0=var826, $c1=var3592, $i45=var733, $z3=var1833, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1563, $i2=var2792, $i3=var330, $r2=var3195, $i4=var1618, $z4=var1972, z0=var3610, $i6=var317, $i5=var68, $z8=var352, $z7=var1604, z1=var1913, com.google.javascript.jscomp.regex.CharRanges=var543, r18=var2637, r19=var3166, $i38=var3794, $i39=var3186, $i7=var2795, $i8=var2306, com.google.javascript.jscomp.regex.RegExpTree$Charset=var3251, $r24=var1428}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i45 = (int) $c1;	if $i45 != 91 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;	$i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105);	if $i4 < 0 goto $z4 = 0;	$z4 = 0;	z0 = $z4;	$i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i6 >= $i5 goto $z8 = 0;	$z8 = 0;	$z7 = 0;	z1 = $z7;	if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	$i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i8 = $i7 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8;	if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	$r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19);	return $r24
;block_num 11