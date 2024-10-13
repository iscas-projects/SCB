(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var164 0)
(declare-sort var1511 0)
(declare-sort var3900 0)
(declare-sort var2 0)
(declare-sort var624 0)
(declare-sort var1812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun var1511_containsKey/1715618542 (var1511 var2) Bool)
(declare-fun cast-from-String-to-var2 (String) var2)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var624 String) void)
(declare-const null-String String)
(declare-const var3900-optionValues var1511)
(declare-const var1812-out var624)
(declare-const var2435 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2435 null-String)))
(assert (and true (and (> (str.len var2435) 0) (<= 0 0))))
(define-const var2263 Int (charAt/698050440 var2435 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var462 Int (cast-from-Int-to-Int var2263)) ; Statement: $i22 = (int) $c0 
 ; Statement: if $i22 != 45 goto r38 = r0 
(assert (not (= var462 45))) ; Cond: $i22 != 45 
(define-const var1133 String var2435) ; Statement: r38 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var3233 Int (indexOf/-1037706067 var1133 61)) ; Statement: $i7 = virtualinvoke r38.<java.lang.String: int indexOf(int)>(61) 
(assert true)
(define-const var1539 Int (indexOf/-1037706067 var1133 58)) ; Statement: $i8 = virtualinvoke r38.<java.lang.String: int indexOf(int)>(58) 
 ; Statement: if $i7 >= 0 goto (branch) 
(assert (not (>= var3233 0))) ; Negate: Cond: $i7 >= 0  
(define-const var1822 Int var1539) ; Statement: i20 = $i8 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i20 >= 0 goto $r1 = virtualinvoke r38.<java.lang.String: java.lang.String substring(int,int)>(0, i20) 
(assert (not (>= var1822 0))) ; Negate: Cond: i20 >= 0  
(assert true)
(define-const var181 String (toUpperCase/1156088314 var1133)) ; Statement: r39 = virtualinvoke r38.<java.lang.String: java.lang.String toUpperCase()>() 
(define-const var1687 var1511 var3900-optionValues) ; Statement: $r36 = <org.javacc.parser.Options: java.util.Map optionValues> 
(define-const var919 Bool (var1511_containsKey/1715618542 var1687 (cast-from-String-to-var2 var181))) ; Statement: $z4 = interfaceinvoke $r36.<java.util.Map: boolean containsKey(java.lang.Object)>(r39) 
 ; Statement: if $z4 == 0 goto $i4 = virtualinvoke r39.<java.lang.String: int length()>() 
(assert (= (ite var919 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var3916 Int (length/-134980193 var181)) ; Statement: $i4 = virtualinvoke r39.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= 2 goto $r41 = <java.lang.System: java.io.PrintStream out> 
(assert (<= var3916 2)) ; Cond: $i4 <= 2 
(define-const var3584 var624 var1812-out) ; Statement: $r41 = <java.lang.System: java.io.PrintStream out> 
(define-const var31 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var31)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var31!1 String)
(assert (= var31!1 ""))
(assert true)
(define-const var3011 String (append/672562846 var31!1 "Warning: Bad option \u0022")) ; Statement: $r43 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Warning: Bad option \"") 
(declare-const var31!2 String)
(assert (= var31!2 (str.++ var31!1 "Warning: Bad option \u0022")))
(assert true)
(define-const var1903 String (append/672562846 var3011 var2435)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3011!1 String)
(assert (= var3011!1 (str.++ var3011 var2435)))
(assert true)
(define-const var3460 String (append/672562846 var1903 "\u0022 will be ignored.")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" will be ignored.") 
(declare-const var1903!1 String)
(assert (= var1903!1 (str.++ var1903 "\u0022 will be ignored.")))
(assert true)
(define-const var3559 String (toString/-2075883882 var3460)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3584 var3559)) ; Statement: virtualinvoke $r41.<java.io.PrintStream: void println(java.lang.String)>($r46) 

(declare-const var3584!1 var624)
(declare-const var3559!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), toUpperCase/1156088314=([java.lang.String], java.lang.String), var1511_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2435=r0, var164=null_type, var2263=$c0, var462=$i22, var1133=r38, var3233=$i7, var1539=$i8, var1822=i20, var181=r39, var1511=java.util.Map, var3900=org.javacc.parser.Options, var1687=$r36, var2=java.lang.Object, var919=$z4, var3916=$i4, var624=java.io.PrintStream, var1812=java.lang.System, var3584=$r41, var31=$r50, var3011=$r43, var1903=$r44, var3460=$r45, var3559=$r46}
; {r0=var2435, null_type=var164, $c0=var2263, $i22=var462, r38=var1133, $i7=var3233, $i8=var1539, i20=var1822, r39=var181, java.util.Map=var1511, org.javacc.parser.Options=var3900, $r36=var1687, java.lang.Object=var2, $z4=var919, $i4=var3916, java.io.PrintStream=var624, java.lang.System=var1812, $r41=var3584, $r50=var31, $r43=var3011, $r44=var1903, $r45=var3460, $r46=var3559}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i22 = (int) $c0;	if $i22 != 45 goto r38 = r0;	r38 = r0;	$i7 = virtualinvoke r38.<java.lang.String: int indexOf(int)>(61);	$i8 = virtualinvoke r38.<java.lang.String: int indexOf(int)>(58);	if $i7 >= 0 goto (branch);	i20 = $i8;	goto [?= (branch)];	if i20 >= 0 goto $r1 = virtualinvoke r38.<java.lang.String: java.lang.String substring(int,int)>(0, i20);	r39 = virtualinvoke r38.<java.lang.String: java.lang.String toUpperCase()>();	$r36 = <org.javacc.parser.Options: java.util.Map optionValues>;	$z4 = interfaceinvoke $r36.<java.util.Map: boolean containsKey(java.lang.Object)>(r39);	if $z4 == 0 goto $i4 = virtualinvoke r39.<java.lang.String: int length()>();	$i4 = virtualinvoke r39.<java.lang.String: int length()>();	if $i4 <= 2 goto $r41 = <java.lang.System: java.io.PrintStream out>;	$r41 = <java.lang.System: java.io.PrintStream out>;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r43 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Warning: Bad option \"");	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" will be ignored.");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r41.<java.io.PrintStream: void println(java.lang.String)>($r46);	return
;block_num 8