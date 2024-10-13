(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort var604 0)
(declare-sort var2361 0)
(declare-sort var1928 0)
(declare-sort var1697 0)
(declare-sort var1418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1722079379 (var3792) Int)
(declare-fun length/1722079379 (var3792) Int)
(declare-fun var604_min/-1112089438 (Int Int) Int)
(declare-fun string/1722079379 (var3792) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toLowerCase/1946809429 (String var2361) String)
(declare-fun get/499451311 (var1928 var1697) var1697)
(declare-fun cast-from-String-to-var1697 (String) var1697)
(declare-fun cast-from-var1697-to-var1418 (var1697) var1418)
(declare-fun tokenLength/1722079379 (var3792) Int)
(declare-const null-var3792 var3792)
(declare-const var2361-ENGLISH var2361)
(declare-const var3792-names var1928)
(declare-const null-var1418 var1418)
(declare-const var705 var3792) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser 
(assert (not (= var705 null-var3792)))
(define-const var3395 Int (pos/1722079379 var705)) ; Statement: i0 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var1999 Int (pos/1722079379 var705)) ; Statement: $i1 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var938 Int (+ var1999 3)) ; Statement: $i3 = $i1 + 3 
(define-const var3269 Int (length/1722079379 var705)) ; Statement: $i2 = r0.<jdk.nashorn.internal.parser.DateParser: int length> 
(define-const var3575 Int (var604_min/-1112089438 var938 var3269)) ; Statement: i4 = staticinvoke <java.lang.Math: int min(int,int)>($i3, $i2) 
(assert true) ; Non Conditional
(define-const var1611 Int (pos/1722079379 var705)) ; Statement: $i5 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
 ; Statement: if $i5 >= i4 goto $r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string> 
(assert (>= var1611 var3575)) ; Cond: $i5 >= i4 
(define-const var1408 String (string/1722079379 var705)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string> 
(define-const var3402 Int (pos/1722079379 var705)) ; Statement: $i6 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(assert (and true (and (>= var3395 0) (>= (str.len var1408) var3402) (>= var3402 var3395))))
(define-const var978 String (substring/-1240304868 var1408 var3395 var3402)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i6) 
(define-const var3239 var2361 var2361-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3143 String (toLowerCase/1946809429 var978 var3239)) ; Statement: $r9 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var1255 var1928 var3792-names) ; Statement: $r4 = <jdk.nashorn.internal.parser.DateParser: java.util.HashMap names> 
(assert true)
(define-const var3654 var1697 (get/499451311 var1255 (cast-from-String-to-var1697 var3143))) ; Statement: $r5 = virtualinvoke $r4.<java.util.HashMap: java.lang.Object get(java.lang.Object)>($r9) 
(define-const var3333 var1418 (cast-from-var1697-to-var1418 var3654)) ; Statement: $r10 = (jdk.nashorn.internal.parser.DateParser$Name) $r5 
(assert true) ; Non Conditional
(define-const var1455 Int (pos/1722079379 var705)) ; Statement: $i18 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var3019 Int (length/1722079379 var705)) ; Statement: $i19 = r0.<jdk.nashorn.internal.parser.DateParser: int length> 
 ; Statement: if $i18 >= $i19 goto $i7 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(assert (>= var1455 var3019)) ; Cond: $i18 >= $i19 
(define-const var2735 Int (pos/1722079379 var705)) ; Statement: $i7 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var629 Int (- var2735 var3395)) ; Statement: $i8 = $i7 - i0 
(declare-const var705!1 var3792)
(assert (not (= var705!1 null-var3792)))
(assert (= (tokenLength/1722079379 var705!1) var629)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: int tokenLength> = $i8 
 ; Statement: if $r10 == null goto return null 
(assert (= var3333 null-var1418)) ; Cond: $r10 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1722079379=([jdk.nashorn.internal.parser.DateParser], int), length/1722079379=([jdk.nashorn.internal.parser.DateParser], int), var604_min/-1112089438=([int, int], int), string/1722079379=([jdk.nashorn.internal.parser.DateParser], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-String-to-var1697=([java.lang.String], java.lang.Object), cast-from-var1697-to-var1418=([java.lang.Object], jdk.nashorn.internal.parser.DateParser$Name), tokenLength/1722079379=([jdk.nashorn.internal.parser.DateParser], int)}
; {var3792=jdk.nashorn.internal.parser.DateParser, var705=r0, var3395=i0, var1999=$i1, var938=$i3, var3269=$i2, var604=java.lang.Math, var3575=i4, var1611=$i5, var1408=$r1, var3402=$i6, var978=$r3, var2361=java.util.Locale, var3239=$r2, var3143=$r9, var1928=java.util.HashMap, var1255=$r4, var1697=java.lang.Object, var3654=$r5, var1418=jdk.nashorn.internal.parser.DateParser$Name, var3333=$r10, var1455=$i18, var3019=$i19, var2735=$i7, var629=$i8}
; {jdk.nashorn.internal.parser.DateParser=var3792, r0=var705, i0=var3395, $i1=var1999, $i3=var938, $i2=var3269, java.lang.Math=var604, i4=var3575, $i5=var1611, $r1=var1408, $i6=var3402, $r3=var978, java.util.Locale=var2361, $r2=var3239, $r9=var3143, java.util.HashMap=var1928, $r4=var1255, java.lang.Object=var1697, $r5=var3654, jdk.nashorn.internal.parser.DateParser$Name=var1418, $r10=var3333, $i18=var1455, $i19=var3019, $i7=var2735, $i8=var629}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser;	i0 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i1 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i3 = $i1 + 3;	$i2 = r0.<jdk.nashorn.internal.parser.DateParser: int length>;	i4 = staticinvoke <java.lang.Math: int min(int,int)>($i3, $i2);	$i5 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	if $i5 >= i4 goto $r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string>;	$r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string>;	$i6 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$r3 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i6);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r9 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r4 = <jdk.nashorn.internal.parser.DateParser: java.util.HashMap names>;	$r5 = virtualinvoke $r4.<java.util.HashMap: java.lang.Object get(java.lang.Object)>($r9);	$r10 = (jdk.nashorn.internal.parser.DateParser$Name) $r5;	$i18 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i19 = r0.<jdk.nashorn.internal.parser.DateParser: int length>;	if $i18 >= $i19 goto $i7 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i7 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i8 = $i7 - i0;	r0.<jdk.nashorn.internal.parser.DateParser: int tokenLength> = $i8;	if $r10 == null goto return null;	return null
;block_num 6