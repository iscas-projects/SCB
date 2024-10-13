(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/1722079379 (var1957) String)
(declare-fun pos/1722079379 (var1957) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun readNumber/1976387137 (var1957 Int) Int)
(declare-fun skipDelimiter/666932120 (var1957 Int) Bool)
(declare-const null-var1957 var1957)
(declare-const var2512 var1957) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser 
(assert (not (= var2512 null-var1957)))
(define-const var1946 String (string/1722079379 var2512)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string> 
(define-const var1974 Int (pos/1722079379 var2512)) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var819 Int (- var1974 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var1946) var819) (<= 0 var819)))))
(check-sat)
(get-model)
(get-unsat-core)
; {string/1722079379=([jdk.nashorn.internal.parser.DateParser], java.lang.String), pos/1722079379=([jdk.nashorn.internal.parser.DateParser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), readNumber/1976387137=([jdk.nashorn.internal.parser.DateParser, int], int), skipDelimiter/666932120=([jdk.nashorn.internal.parser.DateParser, char], boolean)}
; {var1957=jdk.nashorn.internal.parser.DateParser, var2512=r0, var1946=$r1, var1974=$i0, var819=$i1, var142=$c2, var3548=$i9, var724=$b8, var1661=$i6, var1517=58, var1485=$i4, var2719=$i3, var2367=$i7, var3730=$i5}
; {jdk.nashorn.internal.parser.DateParser=var1957, r0=var2512, $r1=var1946, $i0=var1974, $i1=var819, $c2=var142, $i9=var3548, $b8=var724, $i6=var1661, 58=var1517, $i4=var1485, $i3=var2719, $i7=var2367, $i5=var3730}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser;	$r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string>;	$i0 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i1 = $i0 - 1;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i1);	$i9 = (int) $c2;	if $i9 != 43 goto $b8 = -1;	$b8 = 1;	goto [?= $i6 = specialinvoke r0.<jdk.nashorn.internal.parser.DateParser: int readNumber(int)>(2)];	$i6 = specialinvoke r0.<jdk.nashorn.internal.parser.DateParser: int readNumber(int)>(2);	specialinvoke r0.<jdk.nashorn.internal.parser.DateParser: boolean skipDelimiter(char)>(58);	$i4 = $i6 * 60;	$i3 = specialinvoke r0.<jdk.nashorn.internal.parser.DateParser: int readNumber(int)>(2);	$i7 = $i4 + $i3;	$i5 = $b8 * $i7;	return $i5
;block_num 3