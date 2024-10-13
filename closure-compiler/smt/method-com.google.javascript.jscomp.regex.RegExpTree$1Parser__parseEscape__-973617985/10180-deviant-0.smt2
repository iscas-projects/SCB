(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var202 0)
(declare-sort var3096 0)
(declare-sort var1279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var202) String)
(declare-fun pos/117970391 (var202) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3096_checkState/1431124798 (Bool) void)
(declare-fun var1279-init () var1279)
(declare-fun <init>/-1904449276 (var1279 Int) void)
(declare-const null-var202 var202)
(declare-const var3888 var202) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var3888 null-var202)))
(define-const var3784 String (val$pattern/117970391 var3888)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var342 Int (pos/117970391 var3888)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (not (and true (and (> (str.len var3784) var342) (<= 0 var342)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3096_checkState/1431124798=([boolean], void), var1279-init=([], com.google.javascript.jscomp.regex.RegExpTree$WordBoundary), <init>/-1904449276=([com.google.javascript.jscomp.regex.RegExpTree$WordBoundary, char], void)}
; {var202=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var3888=r0, var3784=$r1, var342=$i0, var2619=$c1, var3465=$i65, var3166=$z4, var3096=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2484=$i54, var3764=$i2, var2667=$i3, var3632=$r2, var3087=$i4, var2349=$c55, var3574=c56, var3789=$i66, var1380=$i5, var3708=$i6, var1279=com.google.javascript.jscomp.regex.RegExpTree$WordBoundary, var1000=$r49}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var202, r0=var3888, $r1=var3784, $i0=var342, $c1=var2619, $i65=var3465, $z4=var3166, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3096, $i54=var2484, $i2=var3764, $i3=var2667, $r2=var3632, $i4=var3087, $c55=var2349, c56=var3574, $i66=var3789, $i5=var1380, $i6=var3708, com.google.javascript.jscomp.regex.RegExpTree$WordBoundary=var1279, $r49=var1000}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i65 = (int) $c1;	if $i65 != 92 goto $z4 = 0;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z4)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z4);	$i54 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c55 = virtualinvoke $r2.<java.lang.String: char charAt(int)>($i4);	c56 = $c55;	$i66 = (int) $c55;	if $i66 == 98 goto $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i6 = $i5 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i6;	$r49 = new com.google.javascript.jscomp.regex.RegExpTree$WordBoundary;	specialinvoke $r49.<com.google.javascript.jscomp.regex.RegExpTree$WordBoundary: void <init>(char)>($c55);	return $r49
;block_num 4