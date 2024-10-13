(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3337 0)
(declare-sort var598 0)
(declare-sort var1017 0)
(declare-sort var773 0)
(declare-sort var2198 0)
(declare-sort var2919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var598_size/-959786421 (var598) Int)
(declare-fun this$0/-817137089 (var3337) var1017)
(declare-fun checkMethodArgCount/509013054 (var773 Int Int Int) void)
(declare-fun cast-from-var1017-to-var773 (var1017) var773)
(declare-fun getStringMethodArg/-1432244773 (var773 var598 Int) String)
(declare-fun var2198_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var773) String)
(declare-fun var2198_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var3337) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2919-init () var2919)
(declare-fun <init>/378607920 (var2919 String) void)
(declare-const null-var3337 var3337)
(declare-const null-var598 var598)
(declare-const var2198-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var3866 var3337) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var3866 null-var3337)))
(declare-const var1000 var598) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1000 null-var598)))
(define-const var2131 Int (var598_size/-959786421 var1000)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1219 var1017 (this$0/-817137089 var3866)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1017-to-var773 var1219) var2131 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1219!1 var1017)
(declare-const var2131!1 Int)
(declare-const var715 Int)
(declare-const var1726 Int)
(define-const var3806 var1017 (this$0/-817137089 var3866)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3770 String (getStringMethodArg/-1432244773 (cast-from-var1017-to-var773 var3806) var1000 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (not (<= var2131!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2483 var1017 (this$0/-817137089 var3866)) ; Statement: $r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var2607 String (getStringMethodArg/-1432244773 (cast-from-var1017-to-var773 var2483) var1000 1)) ; Statement: $r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var3591 Int (var2198_parseFlagString/1923739702 var2607)) ; Statement: $l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19) 
 ; Statement: goto [?= $l1 = $l9 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var77 Int (bv2nat (bvand ((_ int2bv 64) var3591) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var3886 Int (ite (> var77 0) 1 (ite (< var77 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var3886 0)))) ; Negate: Cond: $b2 != 0  
(define-const var1252 var1017 (this$0/-817137089 var3866)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var3393 String (key/-489369572 (cast-from-var1017-to-var773 var1252))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var2198_checkOnlyHasNonRegexpFlags/2137085743 var3393 var3591 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var3393!1 String)
(declare-const var3591!1 Int)
(declare-const var715!1 Int)
(define-const var2925 Int var2198-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var3460 Int (bv2nat (bvand ((_ int2bv 64) var3591!1) ((_ int2bv 64) var2925)))) ; Statement: $l7 = $l9 & $l6 
(define-const var2181 Int (ite (> var3460 0) 1 (ite (< var3460 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (= var2181 0))) ; Cond: $b8 != 0 
(define-const var3728 String (s/-817137089 var3866)) ; Statement: $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var1214 String (toLowerCase/415700667 var3728)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1079 String (toLowerCase/415700667 var3770)) ; Statement: $r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3161 Int (lastIndexOf/-618837785 var1214 var1079)) ; Statement: i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1671 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (not (= var3161 var1671)))) ; Negate: Cond: i10 != $i14  
(define-const var2847 var2919 var2919-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var2468 var2919 var2847) ; Statement: $r20 = $r21 
(define-const var3634 String (s/-817137089 var3866)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var2847 var3634)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var2847!1 var2919)
(declare-const var3634!1 String)
 ; Statement: goto [?= return $r20] 
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var598_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1017-to-var773=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2198_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var2198_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2919-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3337=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var3866=r1, var598=java.util.List, var1000=r0, var2131=i0, var1017=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var1219=$r2, var773=freemarker.core.BuiltIn, var715=1, var1726=2, var3806=$r3, var3770=r4, var2483=$r18, var2607=$r19, var2198=freemarker.core.RegexpHelper, var3591=$l9, var77=$l1, var3886=$b2, var1252=$r12, var3393=$r13, var2925=$l6, var3460=$l7, var2181=$b8, var3728=$r14, var1214=$r16, var1079=$r15, var3161=i10, var1671=$i14, var2919=freemarker.template.SimpleScalar, var2847=$r21, var2468=$r20, var3634=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var3337, r1=var3866, java.util.List=var598, r0=var1000, i0=var2131, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var1017, $r2=var1219, freemarker.core.BuiltIn=var773, 1=var715, 2=var1726, $r3=var3806, r4=var3770, $r18=var2483, $r19=var2607, freemarker.core.RegexpHelper=var2198, $l9=var3591, $l1=var77, $b2=var3886, $r12=var1252, $r13=var3393, $l6=var2925, $l7=var3460, $b8=var2181, $r14=var3728, $r16=var1214, $r15=var1079, i10=var3161, $i14=var1671, freemarker.template.SimpleScalar=var2919, $r21=var2847, $r20=var2468, $r10=var3634}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19);	goto [?= $l1 = $l9 & 4294967296L];	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r16 = virtualinvoke $r14.<java.lang.String: java.lang.String toLowerCase()>();	$r15 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase()>();	i10 = virtualinvoke $r16.<java.lang.String: int lastIndexOf(java.lang.String)>($r15);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r20 = $r21;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r20];	return $r20
;block_num 8