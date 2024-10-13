(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1301 0)
(declare-sort var2802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2802-init () var2802)
(declare-fun <init>/-1517764957 (var2802 String String Bool) void)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun hasMoreTokens/711654492 (var2802) Bool)
(declare-fun nextToken/-418815358 (var2802) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var74 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var74 null-String)))
(define-const var2909 var2802 var2802-init) ; Statement: $r0 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var2909 var74 " \t\r\n" (ite (= 1 1) true false))) ; Statement: specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r1, " \t\r\n", 1) 

(declare-const var2909!1 var2802)
(declare-const var74!1 String)
(declare-const var2826 String)
(declare-const var3306 Int)
(define-const var2538 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var333 Int (length/-134980193 var74!1)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var2538 var333)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var2538!1 String)
(declare-const var333!1 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var2259 Bool (hasMoreTokens/711654492 var2909!1)) ; Statement: $z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2259 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var81 String (nextToken/-418815358 var2909!1)) ; Statement: r4 = virtualinvoke $r0.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert (and true (and (>= 0 0) (>= (str.len var81) 1) (>= 1 0))))
(define-const var2309 String (substring/-1240304868 var81 0 1)) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int,int)>(0, 1) 
(assert true)
(define-const var3108 String (toUpperCase/1156088314 var2309)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
;(assert (append/672562846 var2538!1 var3108)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2538!2 String)
(assert (= var2538!2 (str.++ var2538!1 var3108)))
(assert (not (and true (and (>= 1 0) (>= (str.len var81) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2802-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var74=r1, var1301=null_type, var2802=java.util.StringTokenizer, var2909=$r0, var2826=" \t\r\n", var3306=1, var2538=$r2, var333=$i0, var2259=$z0, var81=r4, var2309=$r5, var3108=$r6, var41=$r7, var629=$r8, var3055=$r3}
; {r1=var74, null_type=var1301, java.util.StringTokenizer=var2802, $r0=var2909, " \t\r\n"=var2826, 1=var3306, $r2=var2538, $i0=var333, $z0=var2259, r4=var81, $r5=var2309, $r6=var3108, $r7=var41, $r8=var629, $r3=var3055}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.util.StringTokenizer;	specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r1, " \t\r\n", 1);	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	$z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	r4 = virtualinvoke $r0.<java.util.StringTokenizer: java.lang.String nextToken()>();	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int,int)>(0, 1);	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toUpperCase()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int)>(1);	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	goto [?= $z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>()];	$z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5