(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3854 0)
(declare-sort var1694 0)
(declare-sort var616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var616) void)
(declare-fun cast-from-var3854-to-var616 (var3854) var616)
(declare-fun pos/1722079379 (var3854) Int)
(declare-fun currentField/1722079379 (var3854) Int)
(declare-fun yearSign/1722079379 (var3854) Int)
(declare-fun namedMonth/1722079379 (var3854) Bool)
(declare-fun string/1722079379 (var3854) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/1722079379 (var3854) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun fields/1722079379 (var3854) (Array Int Int))
(declare-const null-var3854 var3854)
(declare-const null-String String)
(declare-const var2422 var3854) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser 
(assert (not (= var2422 null-var3854)))
(declare-const var3756 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3756 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3854-to-var616 var2422))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2422!1 var3854)
(declare-const var2422!2 var3854)
(assert (not (= var2422!2 null-var3854)))
(assert (= (pos/1722079379 var2422!2) 0)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: int pos> = 0 
(declare-const var2422!3 var3854)
(assert (not (= var2422!3 null-var3854)))
(assert (= (currentField/1722079379 var2422!3) 0)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: int currentField> = 0 
(declare-const var2422!4 var3854)
(assert (not (= var2422!4 null-var3854)))
(assert (= (yearSign/1722079379 var2422!4) 0)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: int yearSign> = 0 
(declare-const var2422!5 var3854)
(assert (not (= var2422!5 null-var3854)))
(assert (= (namedMonth/1722079379 var2422!5) (ite (= 1 0) true false))) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: boolean namedMonth> = 0 
(declare-const var2422!6 var3854)
(assert (not (= var2422!6 null-var3854)))
(assert (= (string/1722079379 var2422!6) var3756)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string> = r1 
(assert true)
(define-const var1831 Int (length/-134980193 var3756)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var2422!7 var3854)
(assert (not (= var2422!7 null-var3854)))
(assert (= (length/1722079379 var2422!7) var1831)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: int length> = $i0 
(define-const var955 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (java.lang.Integer)[8] 
(declare-const var2422!8 var3854)
(assert (not (= var2422!8 null-var3854)))
(assert (= (fields/1722079379 var2422!8) var955)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser: java.lang.Integer[] fields> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3854-to-var616=([jdk.nashorn.internal.parser.DateParser], java.lang.Object), pos/1722079379=([jdk.nashorn.internal.parser.DateParser], int), currentField/1722079379=([jdk.nashorn.internal.parser.DateParser], int), yearSign/1722079379=([jdk.nashorn.internal.parser.DateParser], int), namedMonth/1722079379=([jdk.nashorn.internal.parser.DateParser], boolean), string/1722079379=([jdk.nashorn.internal.parser.DateParser], java.lang.String), length/-134980193=([java.lang.String], int), length/1722079379=([jdk.nashorn.internal.parser.DateParser], int), arr-Int-init=([], java.lang.Integer[]), fields/1722079379=([jdk.nashorn.internal.parser.DateParser], java.lang.Integer[])}
; {var3854=jdk.nashorn.internal.parser.DateParser, var2422=r0, var3756=r1, var1694=null_type, var616=java.lang.Object, var1831=$i0, var955=$r2}
; {jdk.nashorn.internal.parser.DateParser=var3854, r0=var2422, r1=var3756, null_type=var1694, java.lang.Object=var616, $i0=var1831, $r2=var955}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.nashorn.internal.parser.DateParser: int pos> = 0;	r0.<jdk.nashorn.internal.parser.DateParser: int currentField> = 0;	r0.<jdk.nashorn.internal.parser.DateParser: int yearSign> = 0;	r0.<jdk.nashorn.internal.parser.DateParser: boolean namedMonth> = 0;	r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<jdk.nashorn.internal.parser.DateParser: int length> = $i0;	$r2 = newarray (java.lang.Integer)[8];	r0.<jdk.nashorn.internal.parser.DateParser: java.lang.Integer[] fields> = $r2;	return
;block_num 1