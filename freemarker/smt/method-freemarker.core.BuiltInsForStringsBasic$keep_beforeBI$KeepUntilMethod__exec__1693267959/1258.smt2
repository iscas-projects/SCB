(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3353 0)
(declare-sort var1660 0)
(declare-sort var1024 0)
(declare-sort var3717 0)
(declare-sort var3955 0)
(declare-sort var1002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1660_size/-959786421 (var1660) Int)
(declare-fun this$0/467378960 (var3353) var1024)
(declare-fun checkMethodArgCount/509013054 (var3717 Int Int Int) void)
(declare-fun cast-from-var1024-to-var3717 (var1024) var3717)
(declare-fun getStringMethodArg/-1432244773 (var3717 var1660 Int) String)
(declare-fun var3955_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var3717) String)
(declare-fun var3955_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var3353) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1002-init () var1002)
(declare-fun <init>/378607920 (var1002 String) void)
(declare-const null-var3353 var3353)
(declare-const null-var1660 var1660)
(declare-const var3955-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var1489 var3353) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var1489 null-var3353)))
(declare-const var1812 var1660) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1812 null-var1660)))
(define-const var1082 Int (var1660_size/-959786421 var1812)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3437 var1024 (this$0/467378960 var1489)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1024-to-var3717 var3437) var1082 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3437!1 var1024)
(declare-const var1082!1 Int)
(declare-const var3006 Int)
(declare-const var496 Int)
(define-const var1389 var1024 (this$0/467378960 var1489)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var2522 String (getStringMethodArg/-1432244773 (cast-from-var1024-to-var3717 var1389) var1812 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var1082!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var3713 var1024 (this$0/467378960 var1489)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var3795 String (getStringMethodArg/-1432244773 (cast-from-var1024-to-var3717 var3713) var1812 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var2155 Int (var3955_parseFlagString/1923739702 var3795)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var739 Int (bv2nat (bvand ((_ int2bv 64) var2155) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var1042 Int (ite (> var739 0) 1 (ite (< var739 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var1042 0)))) ; Negate: Cond: $b2 != 0  
(define-const var622 var1024 (this$0/467378960 var1489)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var3899 String (key/-489369572 (cast-from-var1024-to-var3717 var622))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var3955_checkOnlyHasNonRegexpFlags/2137085743 var3899 var2155 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var3899!1 String)
(declare-const var2155!1 Int)
(declare-const var3006!1 Int)
(define-const var627 Int var3955-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var3585 Int (bv2nat (bvand ((_ int2bv 64) var2155!1) ((_ int2bv 64) var627)))) ; Statement: $l5 = $l7 & $l4 
(define-const var3681 Int (ite (> var3585 0) 1 (ite (< var3585 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var3681 0))) ; Cond: $b6 != 0 
(define-const var419 String (s/467378960 var1489)) ; Statement: $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var3921 String (toLowerCase/415700667 var419)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3258 String (toLowerCase/415700667 var2522)) ; Statement: $r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2410 Int (indexOf/-1209756239 var3921 var3258)) ; Statement: i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var540 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var2410 var540)))) ; Negate: Cond: i8 != $i12  
(define-const var2755 var1002 var1002-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var430 var1002 var2755) ; Statement: $r19 = $r20 
(define-const var1453 String (s/467378960 var1489)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var2755 var1453)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var2755!1 var1002)
(declare-const var1453!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1660_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1024-to-var3717=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3955_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var3955_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var1002-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3353=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var1489=r1, var1660=java.util.List, var1812=r0, var1082=i0, var1024=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var3437=$r2, var3717=freemarker.core.BuiltIn, var3006=1, var496=2, var1389=$r3, var2522=r4, var3713=$r17, var3795=$r18, var3955=freemarker.core.RegexpHelper, var2155=$l7, var739=$l1, var1042=$b2, var622=$r11, var3899=$r12, var627=$l4, var3585=$l5, var3681=$b6, var419=$r13, var3921=$r15, var3258=$r14, var2410=i8, var540=$i12, var1002=freemarker.template.SimpleScalar, var2755=$r20, var430=$r19, var1453=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var3353, r1=var1489, java.util.List=var1660, r0=var1812, i0=var1082, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var1024, $r2=var3437, freemarker.core.BuiltIn=var3717, 1=var3006, 2=var496, $r3=var1389, r4=var2522, $r17=var3713, $r18=var3795, freemarker.core.RegexpHelper=var3955, $l7=var2155, $l1=var739, $b2=var1042, $r11=var622, $r12=var3899, $l4=var627, $l5=var3585, $b6=var3681, $r13=var419, $r15=var3921, $r14=var3258, i8=var2410, $i12=var540, freemarker.template.SimpleScalar=var1002, $r20=var2755, $r19=var430, $r10=var1453}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>();	$r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8