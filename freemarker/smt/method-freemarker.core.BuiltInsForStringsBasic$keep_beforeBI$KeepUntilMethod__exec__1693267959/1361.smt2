(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2150 0)
(declare-sort var2555 0)
(declare-sort var3515 0)
(declare-sort var131 0)
(declare-sort var2322 0)
(declare-sort var2503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2555_size/-959786421 (var2555) Int)
(declare-fun this$0/467378960 (var2150) var3515)
(declare-fun checkMethodArgCount/509013054 (var131 Int Int Int) void)
(declare-fun cast-from-var3515-to-var131 (var3515) var131)
(declare-fun getStringMethodArg/-1432244773 (var131 var2555 Int) String)
(declare-fun key/-489369572 (var131) String)
(declare-fun var2322_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var2150) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2503-init () var2503)
(declare-fun <init>/378607920 (var2503 String) void)
(declare-const null-var2150 var2150)
(declare-const null-var2555 var2555)
(declare-const var2322-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var181 var2150) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var181 null-var2150)))
(declare-const var1608 var2555) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1608 null-var2555)))
(define-const var2041 Int (var2555_size/-959786421 var1608)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3710 var3515 (this$0/467378960 var181)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3515-to-var131 var3710) var2041 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3710!1 var3515)
(declare-const var2041!1 Int)
(declare-const var2399 Int)
(declare-const var414 Int)
(define-const var989 var3515 (this$0/467378960 var181)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var3044 String (getStringMethodArg/-1432244773 (cast-from-var3515-to-var131 var989) var1608 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var2041!1 1)) ; Cond: i0 <= 1 
(define-const var2794 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var3188 Int (bv2nat (bvand ((_ int2bv 64) var2794) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var33 Int (ite (> var3188 0) 1 (ite (< var3188 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var33 0)))) ; Negate: Cond: $b2 != 0  
(define-const var1753 var3515 (this$0/467378960 var181)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var3146 String (key/-489369572 (cast-from-var3515-to-var131 var1753))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var2322_checkOnlyHasNonRegexpFlags/2137085743 var3146 var2794 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var3146!1 String)
(declare-const var2794!1 Int)
(declare-const var2399!1 Int)
(define-const var457 Int var2322-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var3787 Int (bv2nat (bvand ((_ int2bv 64) var2794!1) ((_ int2bv 64) var457)))) ; Statement: $l5 = $l7 & $l4 
(define-const var3189 Int (ite (> var3787 0) 1 (ite (< var3787 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var3189 0))) ; Cond: $b6 != 0 
(define-const var2592 String (s/467378960 var181)) ; Statement: $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var1508 String (toLowerCase/415700667 var2592)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3642 String (toLowerCase/415700667 var3044)) ; Statement: $r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var127 Int (indexOf/-1209756239 var1508 var3642)) ; Statement: i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1583 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var127 var1583)))) ; Negate: Cond: i8 != $i12  
(define-const var1628 var2503 var2503-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var592 var2503 var1628) ; Statement: $r19 = $r20 
(define-const var1537 String (s/467378960 var181)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var1628 var1537)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var1628!1 var2503)
(declare-const var1537!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var2555_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3515-to-var131=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var2322_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2503-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2150=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var181=r1, var2555=java.util.List, var1608=r0, var2041=i0, var3515=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var3710=$r2, var131=freemarker.core.BuiltIn, var2399=1, var414=2, var989=$r3, var3044=r4, var2794=$l7, var3188=$l1, var33=$b2, var1753=$r11, var3146=$r12, var2322=freemarker.core.RegexpHelper, var457=$l4, var3787=$l5, var3189=$b6, var2592=$r13, var1508=$r15, var3642=$r14, var127=i8, var1583=$i12, var2503=freemarker.template.SimpleScalar, var1628=$r20, var592=$r19, var1537=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var2150, r1=var181, java.util.List=var2555, r0=var1608, i0=var2041, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var3515, $r2=var3710, freemarker.core.BuiltIn=var131, 1=var2399, 2=var414, $r3=var989, r4=var3044, $l7=var2794, $l1=var3188, $b2=var33, $r11=var1753, $r12=var3146, freemarker.core.RegexpHelper=var2322, $l4=var457, $l5=var3787, $b6=var3189, $r13=var2592, $r15=var1508, $r14=var3642, i8=var127, $i12=var1583, freemarker.template.SimpleScalar=var2503, $r20=var1628, $r19=var592, $r10=var1537}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase()>();	$r14 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i8 = virtualinvoke $r15.<java.lang.String: int indexOf(java.lang.String)>($r14);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8