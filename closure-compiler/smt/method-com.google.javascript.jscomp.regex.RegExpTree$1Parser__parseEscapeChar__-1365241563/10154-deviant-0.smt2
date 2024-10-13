(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var2206) String)
(declare-fun pos/117970391 (var2206) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parseHex/388631862 (var2206 Int) Int)
(declare-const null-var2206 var2206)
(declare-const var960 var2206) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var960 null-var2206)))
(define-const var450 String (val$pattern/117970391 var960)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var1282 Int (pos/117970391 var960)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1773 Int (+ var1282 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var960!1 var2206)
(assert (not (= var960!1 null-var2206)))
(assert (= (pos/117970391 var960!1) var1773)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i1 
(assert (not (and true (and (> (str.len var450) var1282) (<= 0 var1282)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), parseHex/388631862=([com.google.javascript.jscomp.regex.RegExpTree$1Parser, int], int)}
; {var2206=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var960=r0, var450=$r1, var1282=$i0, var1773=$i1, var3963=c19, var843=$i25, var3720=$i2}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var2206, r0=var960, $r1=var450, $i0=var1282, $i1=var1773, c19=var3963, $i25=var843, $i2=var3720}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i1;	c19 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i25 = (int) c19;	tableswitch($i25) {     case 98: goto return 8;     case 99: goto $i27 = (int) c19;     case 100: goto $i27 = (int) c19;     case 101: goto $i27 = (int) c19;     case 102: goto return 12;     case 103: goto $i27 = (int) c19;     case 104: goto $i27 = (int) c19;     case 105: goto $i27 = (int) c19;     case 106: goto $i27 = (int) c19;     case 107: goto $i27 = (int) c19;     case 108: goto $i27 = (int) c19;     case 109: goto $i27 = (int) c19;     case 110: goto return 10;     case 111: goto $i27 = (int) c19;     case 112: goto $i27 = (int) c19;     case 113: goto $i27 = (int) c19;     case 114: goto return 13;     case 115: goto $i27 = (int) c19;     case 116: goto return 9;     case 117: goto $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;     case 118: goto return 11;     case 119: goto $i27 = (int) c19;     case 120: goto $i2 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int parseHex(int)>(2);     default: goto $i27 = (int) c19; };	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int parseHex(int)>(2);	return $i2
;block_num 2