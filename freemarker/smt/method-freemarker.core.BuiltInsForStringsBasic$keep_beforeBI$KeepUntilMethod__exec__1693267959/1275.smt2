(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1033 0)
(declare-sort var470 0)
(declare-sort var751 0)
(declare-sort var2645 0)
(declare-sort var3554 0)
(declare-sort var707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var470_size/-959786421 (var470) Int)
(declare-fun this$0/467378960 (var1033) var751)
(declare-fun checkMethodArgCount/509013054 (var2645 Int Int Int) void)
(declare-fun cast-from-var751-to-var2645 (var751) var2645)
(declare-fun getStringMethodArg/-1432244773 (var2645 var470 Int) String)
(declare-fun var3554_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var2645) String)
(declare-fun var3554_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var1033) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var707-init () var707)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var707 String) void)
(declare-const null-var1033 var1033)
(declare-const null-var470 var470)
(declare-const var3554-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var2754 var1033) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var2754 null-var1033)))
(declare-const var134 var470) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var134 null-var470)))
(define-const var2873 Int (var470_size/-959786421 var134)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2171 var751 (this$0/467378960 var2754)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var751-to-var2645 var2171) var2873 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2171!1 var751)
(declare-const var2873!1 Int)
(declare-const var973 Int)
(declare-const var3257 Int)
(define-const var2251 var751 (this$0/467378960 var2754)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var3719 String (getStringMethodArg/-1432244773 (cast-from-var751-to-var2645 var2251) var134 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var2873!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2934 var751 (this$0/467378960 var2754)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var2061 String (getStringMethodArg/-1432244773 (cast-from-var751-to-var2645 var2934) var134 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var2864 Int (var3554_parseFlagString/1923739702 var2061)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var1150 Int (bv2nat (bvand ((_ int2bv 64) var2864) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var3342 Int (ite (> var1150 0) 1 (ite (< var1150 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var3342 0)))) ; Negate: Cond: $b2 != 0  
(define-const var2955 var751 (this$0/467378960 var2754)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var563 String (key/-489369572 (cast-from-var751-to-var2645 var2955))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var3554_checkOnlyHasNonRegexpFlags/2137085743 var563 var2864 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var563!1 String)
(declare-const var2864!1 Int)
(declare-const var973!1 Int)
(define-const var2065 Int var3554-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var2730 Int (bv2nat (bvand ((_ int2bv 64) var2864!1) ((_ int2bv 64) var2065)))) ; Statement: $l5 = $l7 & $l4 
(define-const var3613 Int (ite (> var2730 0) 1 (ite (< var2730 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var3613 0))) ; Cond: $b6 != 0 
(define-const var3643 String (s/467378960 var2754)) ; Statement: $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2324 String (toLowerCase/415700667 var3643)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1749 String (toLowerCase/415700667 var3719)) ; Statement: $r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2544 Int (indexOf/-1209756239 var2324 var1749)) ; Statement: i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var427 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var2544 var427))) ; Cond: i8 != $i12 
(define-const var372 var707 var707-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var2608 var707 var372) ; Statement: $r19 = $r21 
(define-const var2710 String (s/467378960 var2754)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var2710) var2544) (>= var2544 0))))
(define-const var959 String (substring/-1240304868 var2710 0 var2544)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var372 var959)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var372!1 var707)
(declare-const var959!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var470_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var751-to-var2645=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3554_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var3554_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var707-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1033=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var2754=r1, var470=java.util.List, var134=r0, var2873=i0, var751=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var2171=$r2, var2645=freemarker.core.BuiltIn, var973=1, var3257=2, var2251=$r3, var3719=r4, var2934=$r17, var2061=$r18, var3554=freemarker.core.RegexpHelper, var2864=$l7, var1150=$l1, var3342=$b2, var2955=$r11, var563=$r12, var2065=$l4, var2730=$l5, var3613=$b6, var3643=$r13, var2324=$r15, var1749=$r14, var2544=i8, var427=$i12, var707=freemarker.template.SimpleScalar, var372=$r21, var2608=$r19, var2710=$r8, var959=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var1033, r1=var2754, java.util.List=var470, r0=var134, i0=var2873, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var751, $r2=var2171, freemarker.core.BuiltIn=var2645, 1=var973, 2=var3257, $r3=var2251, r4=var3719, $r17=var2934, $r18=var2061, freemarker.core.RegexpHelper=var3554, $l7=var2864, $l1=var1150, $b2=var3342, $r11=var2955, $r12=var563, $l4=var2065, $l5=var2730, $b6=var3613, $r13=var3643, $r15=var2324, $r14=var1749, i8=var2544, $i12=var427, freemarker.template.SimpleScalar=var707, $r21=var372, $r19=var2608, $r8=var2710, $r9=var959}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>();	$r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8