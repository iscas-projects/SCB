(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var1815) String)
(declare-fun pos/117970391 (var1815) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1815 var1815)
(declare-const var2836 var1815) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var2836 null-var1815)))
(define-const var2849 String (val$pattern/117970391 var2836)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var427 Int (pos/117970391 var2836)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var464 Int (+ var427 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2836!1 var1815)
(assert (not (= var2836!1 null-var1815)))
(assert (= (pos/117970391 var2836!1) var464)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i1 
(assert (not (and true (and (> (str.len var2849) var427) (<= 0 var427)))))
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1815=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var2836=r0, var2849=$r1, var427=$i0, var464=$i1, var3850=c19, var1374=$i25}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var1815, r0=var2836, $r1=var2849, $i0=var427, $i1=var464, c19=var3850, $i25=var1374}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i1;	c19 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i25 = (int) c19;	tableswitch($i25) {     case 98: goto return 8;     case 99: goto $i27 = (int) c19;     case 100: goto $i27 = (int) c19;     case 101: goto $i27 = (int) c19;     case 102: goto return 12;     case 103: goto $i27 = (int) c19;     case 104: goto $i27 = (int) c19;     case 105: goto $i27 = (int) c19;     case 106: goto $i27 = (int) c19;     case 107: goto $i27 = (int) c19;     case 108: goto $i27 = (int) c19;     case 109: goto $i27 = (int) c19;     case 110: goto return 10;     case 111: goto $i27 = (int) c19;     case 112: goto $i27 = (int) c19;     case 113: goto $i27 = (int) c19;     case 114: goto return 13;     case 115: goto $i27 = (int) c19;     case 116: goto return 9;     case 117: goto $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;     case 118: goto return 11;     case 119: goto $i27 = (int) c19;     case 120: goto $i2 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int parseHex(int)>(2);     default: goto $i27 = (int) c19; };	return 9
;block_num 2