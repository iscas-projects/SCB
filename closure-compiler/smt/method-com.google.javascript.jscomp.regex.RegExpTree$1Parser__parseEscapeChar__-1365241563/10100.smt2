(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var2413) String)
(declare-fun pos/117970391 (var2413) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2413 var2413)
(declare-const var1070 var2413) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var1070 null-var2413)))
(define-const var1020 String (val$pattern/117970391 var1070)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var196 Int (pos/117970391 var1070)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var885 Int (+ var196 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1070!1 var2413)
(assert (not (= var1070!1 null-var2413)))
(assert (= (pos/117970391 var1070!1) var885)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i1 
(assert (and true (and (> (str.len var1020) var196) (<= 0 var196))))
(define-const var3042 Int (charAt/698050440 var1020 var196)) ; Statement: c19 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var3720 Int (cast-from-Int-to-Int var3042)) ; Statement: $i25 = (int) c19 
 ; Statement: tableswitch($i25) {     case 98: goto return 8;     case 99: goto $i27 = (int) c19;     case 100: goto $i27 = (int) c19;     case 101: goto $i27 = (int) c19;     case 102: goto return 12;     case 103: goto $i27 = (int) c19;     case 104: goto $i27 = (int) c19;     case 105: goto $i27 = (int) c19;     case 106: goto $i27 = (int) c19;     case 107: goto $i27 = (int) c19;     case 108: goto $i27 = (int) c19;     case 109: goto $i27 = (int) c19;     case 110: goto return 10;     case 111: goto $i27 = (int) c19;     case 112: goto $i27 = (int) c19;     case 113: goto $i27 = (int) c19;     case 114: goto return 13;     case 115: goto $i27 = (int) c19;     case 116: goto return 9;     case 117: goto $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;     case 118: goto return 11;     case 119: goto $i27 = (int) c19;     case 120: goto $i2 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int parseHex(int)>(2);     default: goto $i27 = (int) c19; } 
(assert (and (= var3720 110) (and (not (= var3720 109)) (and (not (= var3720 108)) (and (not (= var3720 107)) (and (not (= var3720 106)) (and (not (= var3720 105)) (and (not (= var3720 104)) (and (not (= var3720 103)) (and (not (= var3720 102)) (and (not (= var3720 101)) (and (not (= var3720 100)) (and (not (= var3720 99)) (and (not (= var3720 98)) true)))))))))))))) ; Intersect: Cond: $i25 == 110  and Intersect: Negate: Cond: $i25 == 109   and Intersect: Negate: Cond: $i25 == 108   and Intersect: Negate: Cond: $i25 == 107   and Intersect: Negate: Cond: $i25 == 106   and Intersect: Negate: Cond: $i25 == 105   and Intersect: Negate: Cond: $i25 == 104   and Intersect: Negate: Cond: $i25 == 103   and Intersect: Negate: Cond: $i25 == 102   and Intersect: Negate: Cond: $i25 == 101   and Intersect: Negate: Cond: $i25 == 100   and Intersect: Negate: Cond: $i25 == 99   and Intersect: Negate: Cond: $i25 == 98   and Non Conditional             
 ; Statement: return 10 
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2413=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var1070=r0, var1020=$r1, var196=$i0, var885=$i1, var3042=c19, var3720=$i25}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var2413, r0=var1070, $r1=var1020, $i0=var196, $i1=var885, c19=var3042, $i25=var3720}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i1;	c19 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i25 = (int) c19;	tableswitch($i25) {     case 98: goto return 8;     case 99: goto $i27 = (int) c19;     case 100: goto $i27 = (int) c19;     case 101: goto $i27 = (int) c19;     case 102: goto return 12;     case 103: goto $i27 = (int) c19;     case 104: goto $i27 = (int) c19;     case 105: goto $i27 = (int) c19;     case 106: goto $i27 = (int) c19;     case 107: goto $i27 = (int) c19;     case 108: goto $i27 = (int) c19;     case 109: goto $i27 = (int) c19;     case 110: goto return 10;     case 111: goto $i27 = (int) c19;     case 112: goto $i27 = (int) c19;     case 113: goto $i27 = (int) c19;     case 114: goto return 13;     case 115: goto $i27 = (int) c19;     case 116: goto return 9;     case 117: goto $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;     case 118: goto return 11;     case 119: goto $i27 = (int) c19;     case 120: goto $i2 = virtualinvoke r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int parseHex(int)>(2);     default: goto $i27 = (int) c19; };	return 10
;block_num 2