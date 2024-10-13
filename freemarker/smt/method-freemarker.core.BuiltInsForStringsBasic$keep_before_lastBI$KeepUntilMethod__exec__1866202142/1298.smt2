(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2710 0)
(declare-sort var3381 0)
(declare-sort var2603 0)
(declare-sort var1550 0)
(declare-sort var1742 0)
(declare-sort var3490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3381_size/-959786421 (var3381) Int)
(declare-fun this$0/-817137089 (var2710) var2603)
(declare-fun checkMethodArgCount/509013054 (var1550 Int Int Int) void)
(declare-fun cast-from-var2603-to-var1550 (var2603) var1550)
(declare-fun getStringMethodArg/-1432244773 (var1550 var3381 Int) String)
(declare-fun var1742_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var1550) String)
(declare-fun var1742_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var2710) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3490-init () var3490)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var3490 String) void)
(declare-const null-var2710 var2710)
(declare-const null-var3381 var3381)
(declare-const var1742-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var1636 var2710) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var1636 null-var2710)))
(declare-const var1692 var3381) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1692 null-var3381)))
(define-const var2573 Int (var3381_size/-959786421 var1692)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2419 var2603 (this$0/-817137089 var1636)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2603-to-var1550 var2419) var2573 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2419!1 var2603)
(declare-const var2573!1 Int)
(declare-const var2909 Int)
(declare-const var94 Int)
(define-const var932 var2603 (this$0/-817137089 var1636)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3985 String (getStringMethodArg/-1432244773 (cast-from-var2603-to-var1550 var932) var1692 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (not (<= var2573!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var667 var2603 (this$0/-817137089 var1636)) ; Statement: $r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3777 String (getStringMethodArg/-1432244773 (cast-from-var2603-to-var1550 var667) var1692 1)) ; Statement: $r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var1640 Int (var1742_parseFlagString/1923739702 var3777)) ; Statement: $l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19) 
 ; Statement: goto [?= $l1 = $l9 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var1348 Int (bv2nat (bvand ((_ int2bv 64) var1640) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var3621 Int (ite (> var1348 0) 1 (ite (< var1348 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var3621 0)))) ; Negate: Cond: $b2 != 0  
(define-const var1646 var2603 (this$0/-817137089 var1636)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var3015 String (key/-489369572 (cast-from-var2603-to-var1550 var1646))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var1742_checkOnlyHasNonRegexpFlags/2137085743 var3015 var1640 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var3015!1 String)
(declare-const var1640!1 Int)
(declare-const var2909!1 Int)
(define-const var3049 Int var1742-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var3999 Int (bv2nat (bvand ((_ int2bv 64) var1640!1) ((_ int2bv 64) var3049)))) ; Statement: $l7 = $l9 & $l6 
(define-const var28 Int (ite (> var3999 0) 1 (ite (< var3999 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var28 0))) ; Cond: $b8 != 0 
(define-const var3480 String (s/-817137089 var1636)) ; Statement: $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var338 String (toLowerCase/415700667 var3480)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1396 String (toLowerCase/415700667 var3985)) ; Statement: $r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3394 Int (lastIndexOf/-618837785 var338 var1396)) ; Statement: i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2617 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (= var3394 var2617))) ; Cond: i10 != $i14 
(define-const var2978 var3490 var3490-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(define-const var1890 var3490 var2978) ; Statement: $r20 = $r22 
(define-const var217 String (s/-817137089 var1636)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var217) var3394) (>= var3394 0))))
(define-const var3252 String (substring/-1240304868 var217 0 var3394)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10) 
(assert true)
;(assert (<init>/378607920 var2978 var3252)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var2978!1 var3490)
(declare-const var3252!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3381_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2603-to-var1550=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var1742_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var1742_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var3490-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2710=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var1636=r1, var3381=java.util.List, var1692=r0, var2573=i0, var2603=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var2419=$r2, var1550=freemarker.core.BuiltIn, var2909=1, var94=2, var932=$r3, var3985=r4, var667=$r18, var3777=$r19, var1742=freemarker.core.RegexpHelper, var1640=$l9, var1348=$l1, var3621=$b2, var1646=$r12, var3015=$r13, var3049=$l6, var3999=$l7, var28=$b8, var3480=$r14, var338=$r16, var1396=$r15, var3394=i10, var2617=$i14, var3490=freemarker.template.SimpleScalar, var2978=$r22, var1890=$r20, var217=$r8, var3252=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var2710, r1=var1636, java.util.List=var3381, r0=var1692, i0=var2573, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var2603, $r2=var2419, freemarker.core.BuiltIn=var1550, 1=var2909, 2=var94, $r3=var932, r4=var3985, $r18=var667, $r19=var3777, freemarker.core.RegexpHelper=var1742, $l9=var1640, $l1=var1348, $b2=var3621, $r12=var1646, $r13=var3015, $l6=var3049, $l7=var3999, $b8=var28, $r14=var3480, $r16=var338, $r15=var1396, i10=var3394, $i14=var2617, freemarker.template.SimpleScalar=var3490, $r22=var2978, $r20=var1890, $r8=var217, $r9=var3252}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19);	goto [?= $l1 = $l9 & 4294967296L];	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>();	$r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r20 = $r22;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10);	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r20
;block_num 8