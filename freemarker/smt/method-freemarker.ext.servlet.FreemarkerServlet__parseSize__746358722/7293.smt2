(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3470 0)
(declare-sort var3729 0)
(declare-sort var687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var687-init () var687)
(declare-fun <init>/875830710 (var687 String) void)
(declare-const null-var3470 var3470)
(declare-const null-String String)
(declare-const var1497 var3470) ; Statement: r13 := @this: freemarker.ext.servlet.FreemarkerServlet 
(assert (not (= var1497 null-var3470)))
(declare-const var49 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var49 null-String)))
(assert true)
(define-const var1619 Int (length/-134980193 var49)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3527 Int (- var1619 1)) ; Statement: i8 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i8 < 0 goto $i1 = i8 + 1 
(assert (< var3527 0)) ; Cond: i8 < 0 
(define-const var1489 Int (+ var3527 1)) ; Statement: $i1 = i8 + 1 
(assert (and true (and (>= 0 0) (>= (str.len var49) var1489) (>= var1489 0))))
(define-const var96 String (substring/-1240304868 var49 0 var1489)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(assert true)
(define-const var641 String (trim/-847153721 var96)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var1868 Int (Int_parseInt/1370970945 var641)) ; Statement: $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2) 
(define-const var930 Int (+ var3527 1)) ; Statement: $i2 = i8 + 1 
(assert (and true (and (>= var930 0) (>= (str.len var49) var930))))
(define-const var2807 String (substring/850833817 var49 var930)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2) 
(assert true)
(define-const var259 String (trim/-847153721 var2807)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1438 String (toUpperCase/1156088314 var259)) ; Statement: $r12 = virtualinvoke $r4.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var2344 Int (length/-134980193 var1438)) ; Statement: $i3 = virtualinvoke $r12.<java.lang.String: int length()>() 
 ; Statement: if $i3 == 0 goto i10 = 1 
(assert (= var2344 0)) ; Cond: $i3 == 0 
(define-const var441 Int 1) ; Statement: i10 = 1 
 ; Statement: goto [?= $l11 = (long) $i7] 
(assert true) ; Non Conditional
(define-const var3548 Int (cast-from-Int-to-Int var1868)) ; Statement: $l11 = (long) $i7 
(define-const var2247 Int (cast-from-Int-to-Int var441)) ; Statement: $l12 = (long) i10 
(define-const var1310 Int (* var3548 var2247)) ; Statement: $l13 = $l11 * $l12 
(define-const var3562 Int (ite (> var1310 0) 1 (ite (< var1310 0) (- 1) 0))) ; Statement: $b14 = $l13 cmp 0L 
(define-const var2121 Int (cast-from-Int-to-Int var3562)) ; Statement: $i19 = (int) $b14 
 ; Statement: if $i19 >= 0 goto $b4 = $l13 cmp 2147483647L 
(assert (not (>= var2121 0))) ; Negate: Cond: $i19 >= 0  
(define-const var2122 var687 var687-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2122 "Buffer size can\u0027t be negative")) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Buffer size can\'t be negative") 

(declare-const var2122!1 var687)
(declare-const var1175 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], long), var687-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3470=freemarker.ext.servlet.FreemarkerServlet, var1497=r13, var49=r0, var3729=null_type, var1619=$i0, var3527=i8, var1489=$i1, var96=$r1, var641=$r2, var1868=$i7, var930=$i2, var2807=$r3, var259=$r4, var1438=$r12, var2344=$i3, var441=i10, var3548=$l11, var2247=$l12, var1310=$l13, var3562=$b14, var2121=$i19, var687=java.lang.IllegalArgumentException, var2122=$r16, var1175="Buffer size can\'t be negative"}
; {freemarker.ext.servlet.FreemarkerServlet=var3470, r13=var1497, r0=var49, null_type=var3729, $i0=var1619, i8=var3527, $i1=var1489, $r1=var96, $r2=var641, $i7=var1868, $i2=var930, $r3=var2807, $r4=var259, $r12=var1438, $i3=var2344, i10=var441, $l11=var3548, $l12=var2247, $l13=var1310, $b14=var3562, $i19=var2121, java.lang.IllegalArgumentException=var687, $r16=var2122, "Buffer size can\'t be negative"=var1175}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r13 := @this: freemarker.ext.servlet.FreemarkerServlet;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i8 = $i0 - 1;	if i8 < 0 goto $i1 = i8 + 1;	$i1 = i8 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	$i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	$i2 = i8 + 1;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2);	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	$r12 = virtualinvoke $r4.<java.lang.String: java.lang.String toUpperCase()>();	$i3 = virtualinvoke $r12.<java.lang.String: int length()>();	if $i3 == 0 goto i10 = 1;	i10 = 1;	goto [?= $l11 = (long) $i7];	$l11 = (long) $i7;	$l12 = (long) i10;	$l13 = $l11 * $l12;	$b14 = $l13 cmp 0L;	$i19 = (int) $b14;	if $i19 >= 0 goto $b4 = $l13 cmp 2147483647L;	$r16 = new java.lang.IllegalArgumentException;	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Buffer size can\'t be negative");	throw $r16
;block_num 6