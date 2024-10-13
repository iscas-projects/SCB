(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2313 0)
(declare-sort var3188 0)
(declare-sort var3255 0)
(declare-sort var2575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var3255 String) var2575)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var2575) Bool)
(declare-fun group/-653887691 (var2575 Int) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun allowed/-124884097 (var2313 String) Bool)
(declare-const null-var2313 var2313)
(declare-const null-String String)
(declare-const var2313-P_END_TAG var3255)
(declare-const var2313-P_START_TAG var3255)
(declare-const var3737 var2313) ; Statement: r3 := @this: cn.hutool.http.HTMLFilter 
(assert (not (= var3737 null-var2313)))
(declare-const var2913 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2913 null-String)))
(define-const var3415 var3255 var2313-P_END_TAG) ; Statement: $r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_END_TAG> 
(assert true)
(define-const var3592 var2575 (matcher/468719934 var3415 (cast-from-String-to-String var2913))) ; Statement: r55 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var192 Bool (find/1809080823 var3592)) ; Statement: $z0 = virtualinvoke r55.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG> 
(assert (= (ite var192 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2771 var3255 var2313-P_START_TAG) ; Statement: $r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG> 
(assert true)
(define-const var580 var2575 (matcher/468719934 var2771 (cast-from-String-to-String var2913))) ; Statement: $r58 = virtualinvoke $r57.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var677 Bool (find/1809080823 var580)) ; Statement: $z14 = virtualinvoke $r58.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z14 == 0 goto $r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENT> 
(assert (not (= (ite var677 1 0) 0))) ; Negate: Cond: $z14 == 0  
(assert true)
(define-const var1937 String (group/-653887691 var580 1)) ; Statement: $r10 = virtualinvoke $r58.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(assert true)
(define-const var3459 String (toLowerCase/415700667 var1937)) ; Statement: r59 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var230 String (group/-653887691 var580 2)) ; Statement: r11 = virtualinvoke $r58.<java.util.regex.Matcher: java.lang.String group(int)>(2) 
(assert true)
(define-const var3162 String (group/-653887691 var580 3)) ; Statement: r60 = virtualinvoke $r58.<java.util.regex.Matcher: java.lang.String group(int)>(3) 
(assert true)
(define-const var3336 Bool (allowed/-124884097 var3737 var3459)) ; Statement: $z3 = specialinvoke r3.<cn.hutool.http.HTMLFilter: boolean allowed(java.lang.String)>(r59) 
 ; Statement: if $z3 == 0 goto return "" 
(assert (= (ite var3336 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), allowed/-124884097=([cn.hutool.http.HTMLFilter, java.lang.String], boolean)}
; {var2313=cn.hutool.http.HTMLFilter, var3737=r3, var2913=r0, var3188=null_type, var3255=java.util.regex.Pattern, var3415=$r1, var2575=java.util.regex.Matcher, var3592=r55, var192=$z0, var2771=$r57, var580=$r58, var677=$z14, var1937=$r10, var3459=r59, var230=r11, var3162=r60, var3336=$z3}
; {cn.hutool.http.HTMLFilter=var2313, r3=var3737, r0=var2913, null_type=var3188, java.util.regex.Pattern=var3255, $r1=var3415, java.util.regex.Matcher=var2575, r55=var3592, $z0=var192, $r57=var2771, $r58=var580, $z14=var677, $r10=var1937, r59=var3459, r11=var230, r60=var3162, $z3=var3336}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r3 := @this: cn.hutool.http.HTMLFilter;	r0 := @parameter0: java.lang.String;	$r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_END_TAG>;	r55 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r55.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG>;	$r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG>;	$r58 = virtualinvoke $r57.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z14 = virtualinvoke $r58.<java.util.regex.Matcher: boolean find()>();	if $z14 == 0 goto $r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENT>;	$r10 = virtualinvoke $r58.<java.util.regex.Matcher: java.lang.String group(int)>(1);	r59 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase()>();	r11 = virtualinvoke $r58.<java.util.regex.Matcher: java.lang.String group(int)>(2);	r60 = virtualinvoke $r58.<java.util.regex.Matcher: java.lang.String group(int)>(3);	$z3 = specialinvoke r3.<cn.hutool.http.HTMLFilter: boolean allowed(java.lang.String)>(r59);	if $z3 == 0 goto return "";	return ""
;block_num 4