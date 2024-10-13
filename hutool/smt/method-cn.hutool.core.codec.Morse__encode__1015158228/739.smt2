(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1642 0)
(declare-sort var2050 0)
(declare-sort var1248 0)
(declare-sort var17 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1248-init () (Array Int var1248))
(declare-fun var17_notNull/515149844 (var1248 String (Array Int var1248)) var1248)
(declare-fun cast-from-String-to-var1248 (String) var1248)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun codePointCount/-741124477 (String Int Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1642 var1642)
(declare-const null-String String)
(declare-const var3761 var1642) ; Statement: r6 := @this: cn.hutool.core.codec.Morse 
(assert (not (= var3761 null-var1642)))
(declare-const var1555 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1555 null-String)))
(define-const var3088 (Array Int var1248) arr-var1248-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var17_notNull/515149844 (cast-from-String-to-var1248 var1555) "Text should not be null." var3088)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r10, "Text should not be null.", $r0) 

(declare-const var1555!1 String)
(declare-const var1174 String)
(declare-const var3088!1 (Array Int var1248))
(assert true)
(define-const var3713 String (toUpperCase/1156088314 var1555!1)) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String toUpperCase()>() 
(define-const var3585 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3585)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3585!1 String)
(assert (= var3585!1 ""))
(assert true)
(define-const var2139 Int (length/-134980193 var3713)) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int length()>() 
(assert true)
(define-const var3241 Int (codePointCount/-741124477 var3713 0 var2139)) ; Statement: i1 = virtualinvoke r11.<java.lang.String: int codePointCount(int,int)>(0, $i0) 
(define-const var2941 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i1 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2941 var3241)) ; Cond: i6 >= i1 
(assert true)
(define-const var152 String (toString/-2075883882 var3585!1)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1248-init=([], java.lang.Object[]), var17_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var1248=([java.lang.String], java.lang.Object), toUpperCase/1156088314=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), codePointCount/-741124477=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1642=cn.hutool.core.codec.Morse, var3761=r6, var1555=r10, var2050=null_type, var1248=java.lang.Object, var3088=$r0, var17=cn.hutool.core.lang.Assert, var1174="Text should not be null.", var3713=r11, var3585=$r1, var2139=$i0, var3241=i1, var2941=i6, var152=$r2}
; {cn.hutool.core.codec.Morse=var1642, r6=var3761, r10=var1555, null_type=var2050, java.lang.Object=var1248, $r0=var3088, cn.hutool.core.lang.Assert=var17, "Text should not be null."=var1174, r11=var3713, $r1=var3585, $i0=var2139, i1=var3241, i6=var2941, $r2=var152}
;seq <java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: int codePointCount(int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: int codePointCount(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: cn.hutool.core.codec.Morse;	r10 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r10, "Text should not be null.", $r0);	r11 = virtualinvoke r10.<java.lang.String: java.lang.String toUpperCase()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r11.<java.lang.String: int length()>();	i1 = virtualinvoke r11.<java.lang.String: int codePointCount(int,int)>(0, $i0);	i6 = 0;	if i6 >= i1 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3