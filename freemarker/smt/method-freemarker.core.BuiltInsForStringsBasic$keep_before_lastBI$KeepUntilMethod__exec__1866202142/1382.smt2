(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort var381 0)
(declare-sort var3168 0)
(declare-sort var2009 0)
(declare-sort var908 0)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var381_size/-959786421 (var381) Int)
(declare-fun this$0/-817137089 (var3239) var3168)
(declare-fun checkMethodArgCount/509013054 (var2009 Int Int Int) void)
(declare-fun cast-from-var3168-to-var2009 (var3168) var2009)
(declare-fun getStringMethodArg/-1432244773 (var2009 var381 Int) String)
(declare-fun key/-489369572 (var2009) String)
(declare-fun var908_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var3239) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3411-init () var3411)
(declare-fun <init>/378607920 (var3411 String) void)
(declare-const null-var3239 var3239)
(declare-const null-var381 var381)
(declare-const var908-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var638 var3239) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var638 null-var3239)))
(declare-const var3909 var381) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3909 null-var381)))
(define-const var1910 Int (var381_size/-959786421 var3909)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3013 var3168 (this$0/-817137089 var638)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3168-to-var2009 var3013) var1910 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3013!1 var3168)
(declare-const var1910!1 Int)
(declare-const var2292 Int)
(declare-const var536 Int)
(define-const var2376 var3168 (this$0/-817137089 var638)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3148 String (getStringMethodArg/-1432244773 (cast-from-var3168-to-var2009 var2376) var3909 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (<= var1910!1 1)) ; Cond: i0 <= 1 
(define-const var3507 Int 0) ; Statement: $l9 = 0L 
(assert true) ; Non Conditional
(define-const var3309 Int (bv2nat (bvand ((_ int2bv 64) var3507) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var34 Int (ite (> var3309 0) 1 (ite (< var3309 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var34 0)))) ; Negate: Cond: $b2 != 0  
(define-const var3616 var3168 (this$0/-817137089 var638)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var831 String (key/-489369572 (cast-from-var3168-to-var2009 var3616))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var908_checkOnlyHasNonRegexpFlags/2137085743 var831 var3507 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var831!1 String)
(declare-const var3507!1 Int)
(declare-const var2292!1 Int)
(define-const var3910 Int var908-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var3195 Int (bv2nat (bvand ((_ int2bv 64) var3507!1) ((_ int2bv 64) var3910)))) ; Statement: $l7 = $l9 & $l6 
(define-const var360 Int (ite (> var3195 0) 1 (ite (< var3195 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var360 0))) ; Cond: $b8 != 0 
(define-const var1858 String (s/-817137089 var638)) ; Statement: $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var3306 String (toLowerCase/415700667 var1858)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2144 String (toLowerCase/415700667 var3148)) ; Statement: $r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1311 Int (lastIndexOf/-618837785 var3306 var2144)) ; Statement: i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2803 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (not (= var1311 var2803)))) ; Negate: Cond: i10 != $i14  
(define-const var877 var3411 var3411-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var1945 var3411 var877) ; Statement: $r20 = $r21 
(define-const var1772 String (s/-817137089 var638)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var877 var1772)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var877!1 var3411)
(declare-const var1772!1 String)
 ; Statement: goto [?= return $r20] 
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var381_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3168-to-var2009=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var908_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var3411-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3239=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var638=r1, var381=java.util.List, var3909=r0, var1910=i0, var3168=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var3013=$r2, var2009=freemarker.core.BuiltIn, var2292=1, var536=2, var2376=$r3, var3148=r4, var3507=$l9, var3309=$l1, var34=$b2, var3616=$r12, var831=$r13, var908=freemarker.core.RegexpHelper, var3910=$l6, var3195=$l7, var360=$b8, var1858=$r14, var3306=$r16, var2144=$r15, var1311=i10, var2803=$i14, var3411=freemarker.template.SimpleScalar, var877=$r21, var1945=$r20, var1772=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var3239, r1=var638, java.util.List=var381, r0=var3909, i0=var1910, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var3168, $r2=var3013, freemarker.core.BuiltIn=var2009, 1=var2292, 2=var536, $r3=var2376, r4=var3148, $l9=var3507, $l1=var3309, $b2=var34, $r12=var3616, $r13=var831, freemarker.core.RegexpHelper=var908, $l6=var3910, $l7=var3195, $b8=var360, $r14=var1858, $r16=var3306, $r15=var2144, i10=var1311, $i14=var2803, freemarker.template.SimpleScalar=var3411, $r21=var877, $r20=var1945, $r10=var1772}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$l9 = 0L;	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>();	$r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r20 = $r21;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r20];	return $r20
;block_num 8