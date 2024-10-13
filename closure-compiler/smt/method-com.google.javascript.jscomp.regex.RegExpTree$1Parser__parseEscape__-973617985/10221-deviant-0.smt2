(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3212 0)
(declare-sort var245 0)
(declare-sort var3886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var3212) String)
(declare-fun pos/117970391 (var3212) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var245_checkState/1431124798 (Bool) void)
(declare-fun var3886-init () var3886)
(declare-fun <init>/-1904449276 (var3886 Int) void)
(declare-const null-var3212 var3212)
(declare-const var2860 var3212) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var2860 null-var3212)))
(define-const var2324 String (val$pattern/117970391 var2860)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var399 Int (pos/117970391 var2860)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (not (and true (and (> (str.len var2324) var399) (<= 0 var399)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var245_checkState/1431124798=([boolean], void), var3886-init=([], com.google.javascript.jscomp.regex.RegExpTree$WordBoundary), <init>/-1904449276=([com.google.javascript.jscomp.regex.RegExpTree$WordBoundary, char], void)}
; {var3212=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var2860=r0, var2324=$r1, var399=$i0, var925=$c1, var2327=$i65, var786=$z4, var245=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1239=$i54, var2067=$i2, var898=$i3, var2269=$r2, var3535=$i4, var1499=$c55, var1954=c56, var1631=$i66, var3842=$i5, var406=$i6, var3886=com.google.javascript.jscomp.regex.RegExpTree$WordBoundary, var414=$r49}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var3212, r0=var2860, $r1=var2324, $i0=var399, $c1=var925, $i65=var2327, $z4=var786, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var245, $i54=var1239, $i2=var2067, $i3=var898, $r2=var2269, $i4=var3535, $c55=var1499, c56=var1954, $i66=var1631, $i5=var3842, $i6=var406, com.google.javascript.jscomp.regex.RegExpTree$WordBoundary=var3886, $r49=var414}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i65 = (int) $c1;	if $i65 != 92 goto $z4 = 0;	$z4 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z4);	$i54 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c55 = virtualinvoke $r2.<java.lang.String: char charAt(int)>($i4);	c56 = $c55;	$i66 = (int) $c55;	if $i66 == 98 goto $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i6 = $i5 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i6;	$r49 = new com.google.javascript.jscomp.regex.RegExpTree$WordBoundary;	specialinvoke $r49.<com.google.javascript.jscomp.regex.RegExpTree$WordBoundary: void <init>(char)>($c55);	return $r49
;block_num 4