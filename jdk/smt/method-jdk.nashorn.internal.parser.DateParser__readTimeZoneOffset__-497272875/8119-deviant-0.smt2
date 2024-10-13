(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/1722079379 (var1506) String)
(declare-fun pos/1722079379 (var1506) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun readNumber/1976387137 (var1506 Int) Int)
(declare-fun skipDelimiter/666932120 (var1506 Int) Bool)
(declare-const null-var1506 var1506)
(declare-const var673 var1506) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser 
(assert (not (= var673 null-var1506)))
(define-const var52 String (string/1722079379 var673)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string> 
(define-const var1322 Int (pos/1722079379 var673)) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var2503 Int (- var1322 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var52) var2503) (<= 0 var2503)))))
(check-sat)
(get-model)
(get-unsat-core)
; {string/1722079379=([jdk.nashorn.internal.parser.DateParser], java.lang.String), pos/1722079379=([jdk.nashorn.internal.parser.DateParser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), readNumber/1976387137=([jdk.nashorn.internal.parser.DateParser, int], int), skipDelimiter/666932120=([jdk.nashorn.internal.parser.DateParser, char], boolean)}
; {var1506=jdk.nashorn.internal.parser.DateParser, var673=r0, var52=$r1, var1322=$i0, var2503=$i1, var3681=$c2, var742=$i9, var1050=$b8, var2944=$i6, var844=58, var2921=$i4, var576=$i3, var2096=$i7, var3666=$i5}
; {jdk.nashorn.internal.parser.DateParser=var1506, r0=var673, $r1=var52, $i0=var1322, $i1=var2503, $c2=var3681, $i9=var742, $b8=var1050, $i6=var2944, 58=var844, $i4=var2921, $i3=var576, $i7=var2096, $i5=var3666}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser;	$r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string>;	$i0 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i1 = $i0 - 1;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i1);	$i9 = (int) $c2;	if $i9 != 43 goto $b8 = -1;	$b8 = -1;	$i6 = specialinvoke r0.<jdk.nashorn.internal.parser.DateParser: int readNumber(int)>(2);	specialinvoke r0.<jdk.nashorn.internal.parser.DateParser: boolean skipDelimiter(char)>(58);	$i4 = $i6 * 60;	$i3 = specialinvoke r0.<jdk.nashorn.internal.parser.DateParser: int readNumber(int)>(2);	$i7 = $i4 + $i3;	$i5 = $b8 * $i7;	return $i5
;block_num 3