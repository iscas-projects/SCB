(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1669 0)
(declare-sort var2257 0)
(declare-sort var778 0)
(declare-sort var3022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var1669) String)
(declare-fun pos/117970391 (var1669) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2257_checkState/1431124798 (Bool) void)
(declare-fun val$flags/117970391 (var1669) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun limit/117970391 (var1669) Int)
(declare-fun var3022-init () var3022)
(declare-fun <init>/829135842 (var3022 var778 var778) void)
(declare-const null-var1669 var1669)
(declare-const var778-EMPTY var778)
(declare-const var2065 var1669) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var2065 null-var1669)))
(define-const var1633 String (val$pattern/117970391 var2065)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var3161 Int (pos/117970391 var2065)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var1633) var3161) (<= 0 var3161))))
(define-const var3097 Int (charAt/698050440 var1633 var3161)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var3308 Int (cast-from-Int-to-Int var3097)) ; Statement: $i45 = (int) $c1 
 ; Statement: if $i45 != 91 goto $z3 = 0 
(assert (not (= var3308 91))) ; Cond: $i45 != 91 
(define-const var319 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var2257_checkState/1431124798 var319)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var319!1 Bool)
(define-const var2936 Int (pos/117970391 var2065)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var3559 Int (+ var2936 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var2065!1 var1669)
(assert (not (= var2065!1 null-var1669)))
(assert (= (pos/117970391 var2065!1) var3559)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var2154 String (val$flags/117970391 var2065!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags> 
(assert true)
(define-const var1527 Int (indexOf/-1037706067 var2154 105)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105) 
 ; Statement: if $i4 < 0 goto $z4 = 0 
(assert (not (< var1527 0))) ; Negate: Cond: $i4 < 0  
(define-const var2158 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z0 = $z4] 
(assert true) ; Non Conditional
(define-const var2611 Bool var2158) ; Statement: z0 = $z4 
(define-const var2651 Int (pos/117970391 var2065!1)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1145 Int (limit/117970391 var2065!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i6 >= $i5 goto $z8 = 0 
(assert (>= var2651 var1145)) ; Cond: $i6 >= $i5 
(define-const var2096 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(define-const var1953 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
(define-const var3603 Bool var1953) ; Statement: z1 = $z7 
 ; Statement: if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert (= (ite var2096 1 0) 0)) ; Cond: $z8 == 0 
(define-const var262 var778 var778-EMPTY) ; Statement: r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(define-const var1963 var778 var778-EMPTY) ; Statement: r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert true) ; Non Conditional
(define-const var459 Int (pos/117970391 var2065!1)) ; Statement: $i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2211 Int (limit/117970391 var2065!1)) ; Statement: $i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (>= var459 var2211)) ; Cond: $i38 >= $i39 
(define-const var2392 Int (pos/117970391 var2065!1)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2873 Int (+ var2392 1)) ; Statement: $i8 = $i7 + 1 
(declare-const var2065!2 var1669)
(assert (not (= var2065!2 null-var1669)))
(assert (= (pos/117970391 var2065!2) var2873)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8 
 ; Statement: if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (= (ite var3603 1 0) 0)) ; Cond: z1 == 0 
(define-const var3103 var3022 var3022-init) ; Statement: $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert true)
;(assert (<init>/829135842 var3103 var262 var1963)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19) 

(declare-const var3103!1 var3022)
(declare-const var262!1 var778)
(declare-const var1963!1 var778)
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2257_checkState/1431124798=([boolean], void), val$flags/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var3022-init=([], com.google.javascript.jscomp.regex.RegExpTree$Charset), <init>/829135842=([com.google.javascript.jscomp.regex.RegExpTree$Charset, com.google.javascript.jscomp.regex.CharRanges, com.google.javascript.jscomp.regex.CharRanges], void)}
; {var1669=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var2065=r0, var1633=$r1, var3161=$i0, var3097=$c1, var3308=$i45, var319=$z3, var2257=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2936=$i2, var3559=$i3, var2154=$r2, var1527=$i4, var2158=$z4, var2611=z0, var2651=$i6, var1145=$i5, var2096=$z8, var1953=$z7, var3603=z1, var778=com.google.javascript.jscomp.regex.CharRanges, var262=r18, var1963=r19, var459=$i38, var2211=$i39, var2392=$i7, var2873=$i8, var3022=com.google.javascript.jscomp.regex.RegExpTree$Charset, var3103=$r24}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var1669, r0=var2065, $r1=var1633, $i0=var3161, $c1=var3097, $i45=var3308, $z3=var319, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2257, $i2=var2936, $i3=var3559, $r2=var2154, $i4=var1527, $z4=var2158, z0=var2611, $i6=var2651, $i5=var1145, $z8=var2096, $z7=var1953, z1=var3603, com.google.javascript.jscomp.regex.CharRanges=var778, r18=var262, r19=var1963, $i38=var459, $i39=var2211, $i7=var2392, $i8=var2873, com.google.javascript.jscomp.regex.RegExpTree$Charset=var3022, $r24=var3103}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i45 = (int) $c1;	if $i45 != 91 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;	$i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105);	if $i4 < 0 goto $z4 = 0;	$z4 = 1;	goto [?= z0 = $z4];	z0 = $z4;	$i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i6 >= $i5 goto $z8 = 0;	$z8 = 0;	$z7 = 0;	z1 = $z7;	if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	$i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i8 = $i7 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8;	if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	$r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19);	return $r24
;block_num 11