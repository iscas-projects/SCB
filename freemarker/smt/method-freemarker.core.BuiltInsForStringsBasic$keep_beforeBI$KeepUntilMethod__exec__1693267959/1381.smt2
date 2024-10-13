(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3346 0)
(declare-sort var1341 0)
(declare-sort var1116 0)
(declare-sort var2398 0)
(declare-sort var120 0)
(declare-sort var2533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1341_size/-959786421 (var1341) Int)
(declare-fun this$0/467378960 (var3346) var1116)
(declare-fun checkMethodArgCount/509013054 (var2398 Int Int Int) void)
(declare-fun cast-from-var1116-to-var2398 (var1116) var2398)
(declare-fun getStringMethodArg/-1432244773 (var2398 var1341 Int) String)
(declare-fun key/-489369572 (var2398) String)
(declare-fun var120_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var3346) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2533-init () var2533)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var2533 String) void)
(declare-const null-var3346 var3346)
(declare-const null-var1341 var1341)
(declare-const var120-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var3158 var3346) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var3158 null-var3346)))
(declare-const var2152 var1341) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2152 null-var1341)))
(define-const var1506 Int (var1341_size/-959786421 var2152)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2722 var1116 (this$0/467378960 var3158)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1116-to-var2398 var2722) var1506 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2722!1 var1116)
(declare-const var1506!1 Int)
(declare-const var1083 Int)
(declare-const var2113 Int)
(define-const var562 var1116 (this$0/467378960 var3158)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var741 String (getStringMethodArg/-1432244773 (cast-from-var1116-to-var2398 var562) var2152 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var1506!1 1)) ; Cond: i0 <= 1 
(define-const var34 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var1363 Int (bv2nat (bvand ((_ int2bv 64) var34) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var1433 Int (ite (> var1363 0) 1 (ite (< var1363 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var1433 0)))) ; Negate: Cond: $b2 != 0  
(define-const var3834 var1116 (this$0/467378960 var3158)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var640 String (key/-489369572 (cast-from-var1116-to-var2398 var3834))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var120_checkOnlyHasNonRegexpFlags/2137085743 var640 var34 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var640!1 String)
(declare-const var34!1 Int)
(declare-const var1083!1 Int)
(define-const var3180 Int var120-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var245 Int (bv2nat (bvand ((_ int2bv 64) var34!1) ((_ int2bv 64) var3180)))) ; Statement: $l5 = $l7 & $l4 
(define-const var3008 Int (ite (> var245 0) 1 (ite (< var245 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var3008 0))) ; Cond: $b6 != 0 
(define-const var2339 String (s/467378960 var3158)) ; Statement: $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var463 String (toLowerCase/415700667 var2339)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2684 String (toLowerCase/415700667 var741)) ; Statement: $r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3371 Int (indexOf/-1209756239 var463 var2684)) ; Statement: i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1072 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var3371 var1072))) ; Cond: i8 != $i12 
(define-const var75 var2533 var2533-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var2259 var2533 var75) ; Statement: $r19 = $r21 
(define-const var2461 String (s/467378960 var3158)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var2461) var3371) (>= var3371 0))))
(define-const var1040 String (substring/-1240304868 var2461 0 var3371)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var75 var1040)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var75!1 var2533)
(declare-const var1040!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1341_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1116-to-var2398=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var120_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2533-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3346=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var3158=r1, var1341=java.util.List, var2152=r0, var1506=i0, var1116=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var2722=$r2, var2398=freemarker.core.BuiltIn, var1083=1, var2113=2, var562=$r3, var741=r4, var34=$l7, var1363=$l1, var1433=$b2, var3834=$r11, var640=$r12, var120=freemarker.core.RegexpHelper, var3180=$l4, var245=$l5, var3008=$b6, var2339=$r13, var463=$r15, var2684=$r14, var3371=i8, var1072=$i12, var2533=freemarker.template.SimpleScalar, var75=$r21, var2259=$r19, var2461=$r8, var1040=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var3346, r1=var3158, java.util.List=var1341, r0=var2152, i0=var1506, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var1116, $r2=var2722, freemarker.core.BuiltIn=var2398, 1=var1083, 2=var2113, $r3=var562, r4=var741, $l7=var34, $l1=var1363, $b2=var1433, $r11=var3834, $r12=var640, freemarker.core.RegexpHelper=var120, $l4=var3180, $l5=var245, $b6=var3008, $r13=var2339, $r15=var463, $r14=var2684, i8=var3371, $i12=var1072, freemarker.template.SimpleScalar=var2533, $r21=var75, $r19=var2259, $r8=var2461, $r9=var1040}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>();	$r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8