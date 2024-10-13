(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2161 0)
(declare-sort var2123 0)
(declare-sort var3733 0)
(declare-sort var3554 0)
(declare-sort var582 0)
(declare-sort var387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2123_size/-959786421 (var2123) Int)
(declare-fun this$0/-817137089 (var2161) var3733)
(declare-fun checkMethodArgCount/509013054 (var3554 Int Int Int) void)
(declare-fun cast-from-var3733-to-var3554 (var3733) var3554)
(declare-fun getStringMethodArg/-1432244773 (var3554 var2123 Int) String)
(declare-fun key/-489369572 (var3554) String)
(declare-fun var582_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var2161) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var387-init () var387)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var387 String) void)
(declare-const null-var2161 var2161)
(declare-const null-var2123 var2123)
(declare-const var582-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var3138 var2161) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var3138 null-var2161)))
(declare-const var488 var2123) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var488 null-var2123)))
(define-const var647 Int (var2123_size/-959786421 var488)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3672 var3733 (this$0/-817137089 var3138)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3733-to-var3554 var3672) var647 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3672!1 var3733)
(declare-const var647!1 Int)
(declare-const var18 Int)
(declare-const var2191 Int)
(define-const var3315 var3733 (this$0/-817137089 var3138)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var105 String (getStringMethodArg/-1432244773 (cast-from-var3733-to-var3554 var3315) var488 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (<= var647!1 1)) ; Cond: i0 <= 1 
(define-const var3018 Int 0) ; Statement: $l9 = 0L 
(assert true) ; Non Conditional
(define-const var2543 Int (bv2nat (bvand ((_ int2bv 64) var3018) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var1675 Int (ite (> var2543 0) 1 (ite (< var2543 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var1675 0)))) ; Negate: Cond: $b2 != 0  
(define-const var1652 var3733 (this$0/-817137089 var3138)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var313 String (key/-489369572 (cast-from-var3733-to-var3554 var1652))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var582_checkOnlyHasNonRegexpFlags/2137085743 var313 var3018 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var313!1 String)
(declare-const var3018!1 Int)
(declare-const var18!1 Int)
(define-const var3799 Int var582-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var531 Int (bv2nat (bvand ((_ int2bv 64) var3018!1) ((_ int2bv 64) var3799)))) ; Statement: $l7 = $l9 & $l6 
(define-const var2910 Int (ite (> var531 0) 1 (ite (< var531 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var2910 0))) ; Cond: $b8 != 0 
(define-const var188 String (s/-817137089 var3138)) ; Statement: $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var3246 String (toLowerCase/415700667 var188)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1269 String (toLowerCase/415700667 var105)) ; Statement: $r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2479 Int (lastIndexOf/-618837785 var3246 var1269)) ; Statement: i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3254 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (= var2479 var3254))) ; Cond: i10 != $i14 
(define-const var1624 var387 var387-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(define-const var3616 var387 var1624) ; Statement: $r20 = $r22 
(define-const var2183 String (s/-817137089 var3138)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var2183) var2479) (>= var2479 0))))
(define-const var946 String (substring/-1240304868 var2183 0 var2479)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10) 
(assert true)
;(assert (<init>/378607920 var1624 var946)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1624!1 var387)
(declare-const var946!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2123_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3733-to-var3554=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var582_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var387-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2161=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var3138=r1, var2123=java.util.List, var488=r0, var647=i0, var3733=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var3672=$r2, var3554=freemarker.core.BuiltIn, var18=1, var2191=2, var3315=$r3, var105=r4, var3018=$l9, var2543=$l1, var1675=$b2, var1652=$r12, var313=$r13, var582=freemarker.core.RegexpHelper, var3799=$l6, var531=$l7, var2910=$b8, var188=$r14, var3246=$r16, var1269=$r15, var2479=i10, var3254=$i14, var387=freemarker.template.SimpleScalar, var1624=$r22, var3616=$r20, var2183=$r8, var946=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var2161, r1=var3138, java.util.List=var2123, r0=var488, i0=var647, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var3733, $r2=var3672, freemarker.core.BuiltIn=var3554, 1=var18, 2=var2191, $r3=var3315, r4=var105, $l9=var3018, $l1=var2543, $b2=var1675, $r12=var1652, $r13=var313, freemarker.core.RegexpHelper=var582, $l6=var3799, $l7=var531, $b8=var2910, $r14=var188, $r16=var3246, $r15=var1269, i10=var2479, $i14=var3254, freemarker.template.SimpleScalar=var387, $r22=var1624, $r20=var3616, $r8=var2183, $r9=var946}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$l9 = 0L;	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>();	$r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r20 = $r22;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10);	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r20
;block_num 8