(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var1609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1211_getPopularChar/-688058496 (Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-var1609-init () (Array Int var1609))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1609 (Int) var1609)
(declare-fun String_format/1339386452 (String (Array Int var1609)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1609__ (Array Int var1609))
(declare-const var1269 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1269 null-Int)))
(define-const var1085 Int (cast-from-Int-to-Int var1269)) ; Statement: $i2 = (int) c0 
 ; Statement: if $i2 < 32 goto $c1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: char getPopularChar(char)>(c0) 
(assert (< var1085 32)) ; Cond: $i2 < 32 
(define-const var926 Int (var1211_getPopularChar/-688058496 var1269)) ; Statement: $c1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: char getPopularChar(char)>(c0) 
(define-const var1070 Int (cast-from-Int-to-Int var926)) ; Statement: $i5 = (int) $c1 
 ; Statement: if $i5 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (<= var1070 0)) ; Cond: $i5 <= 0 
(define-const var3803 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3803 6)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>(6) 

(declare-const var3803!1 String)
(declare-const var1064 Int)
(assert true)
;(assert (append/672562846 var3803!1 "\u005cu")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var3803!2 String)
(assert (= var3803!2 (str.++ var3803!1 "\u005cu")))
(define-const var1796 (Array Int var1609) arr-var1609-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var1434 Int (cast-from-Int-to-Int var1269)) ; Statement: $i6 = (int) c0 
(define-const var2428 Int (Int_valueOf/-1371140006 var1434)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6) 
(declare-const var1796!1 (Array Int var1609))
(assert (not (= var1796!1 null-__Array__Int__var1609__)))
(assert (= (select var1796!1 0) (cast-from-Int-to-var1609 var2428))) ; Statement: $r1[0] = $r2 
(define-const var3886 String (String_format/1339386452 "%04X" var1796!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04X", $r1) 
(assert true)
;(assert (append/672562846 var3803!2 var3886)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3803!3 String)
(assert (= var3803!3 (str.++ var3803!2 var3886)))
(assert true)
(define-const var2072 String (toString/-2075883882 var3803!3)) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var886 (Array Int Int) (toCharArray/415275702 var2072)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var1211_getPopularChar/-688058496=([char], char), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-var1609-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1609=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toCharArray/415275702=([java.lang.String], char[])}
; {var1269=c0, var1085=$i2, var1211=org.apache.tomcat.util.json.JSONFilter, var926=$c1, var1070=$i5, var3803=$r8, var1064=6, var1609=java.lang.Object, var1796=$r1, var1434=$i6, var2428=$r2, var3886=$r3, var2072=$r4, var886=$r5}
; {c0=var1269, $i2=var1085, org.apache.tomcat.util.json.JSONFilter=var1211, $c1=var926, $i5=var1070, $r8=var3803, 6=var1064, java.lang.Object=var1609, $r1=var1796, $i6=var1434, $r2=var2428, $r3=var3886, $r4=var2072, $r5=var886}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts c0 := @parameter0: char;	$i2 = (int) c0;	if $i2 < 32 goto $c1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: char getPopularChar(char)>(c0);	$c1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: char getPopularChar(char)>(c0);	$i5 = (int) $c1;	if $i5 <= 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>(6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	$r1 = newarray (java.lang.Object)[1];	$i6 = (int) c0;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04X", $r1);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	return $r5
;block_num 3