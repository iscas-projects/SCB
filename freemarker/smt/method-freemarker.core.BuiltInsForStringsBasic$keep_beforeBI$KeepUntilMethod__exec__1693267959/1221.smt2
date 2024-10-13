(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3539 0)
(declare-sort var938 0)
(declare-sort var3322 0)
(declare-sort var2715 0)
(declare-sort var2645 0)
(declare-sort var196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var938_size/-959786421 (var938) Int)
(declare-fun this$0/467378960 (var3539) var3322)
(declare-fun checkMethodArgCount/509013054 (var2715 Int Int Int) void)
(declare-fun cast-from-var3322-to-var2715 (var3322) var2715)
(declare-fun getStringMethodArg/-1432244773 (var2715 var938 Int) String)
(declare-fun var2645_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var2715) String)
(declare-fun var2645_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var3539) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var196-init () var196)
(declare-fun <init>/378607920 (var196 String) void)
(declare-const null-var3539 var3539)
(declare-const null-var938 var938)
(declare-const var2645-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var2426 var3539) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var2426 null-var3539)))
(declare-const var700 var938) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var700 null-var938)))
(define-const var1755 Int (var938_size/-959786421 var700)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1893 var3322 (this$0/467378960 var2426)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3322-to-var2715 var1893) var1755 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1893!1 var3322)
(declare-const var1755!1 Int)
(declare-const var3512 Int)
(declare-const var2516 Int)
(define-const var974 var3322 (this$0/467378960 var2426)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var2891 String (getStringMethodArg/-1432244773 (cast-from-var3322-to-var2715 var974) var700 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var1755!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var3845 var3322 (this$0/467378960 var2426)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var830 String (getStringMethodArg/-1432244773 (cast-from-var3322-to-var2715 var3845) var700 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var3001 Int (var2645_parseFlagString/1923739702 var830)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var2440 Int (bv2nat (bvand ((_ int2bv 64) var3001) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var1501 Int (ite (> var2440 0) 1 (ite (< var2440 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var1501 0)))) ; Negate: Cond: $b2 != 0  
(define-const var439 var3322 (this$0/467378960 var2426)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var3487 String (key/-489369572 (cast-from-var3322-to-var2715 var439))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var2645_checkOnlyHasNonRegexpFlags/2137085743 var3487 var3001 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var3487!1 String)
(declare-const var3001!1 Int)
(declare-const var3512!1 Int)
(define-const var1432 Int var2645-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var17 Int (bv2nat (bvand ((_ int2bv 64) var3001!1) ((_ int2bv 64) var1432)))) ; Statement: $l5 = $l7 & $l4 
(define-const var2078 Int (ite (> var17 0) 1 (ite (< var17 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var2078 0)))) ; Negate: Cond: $b6 != 0  
(define-const var1298 String (s/467378960 var2426)) ; Statement: $r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2889 Int (indexOf/-1209756239 var1298 var2891)) ; Statement: i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1943 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var2889 var1943)))) ; Negate: Cond: i8 != $i12  
(define-const var3760 var196 var196-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var741 var196 var3760) ; Statement: $r19 = $r20 
(define-const var3028 String (s/467378960 var2426)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var3760 var3028)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var3760!1 var196)
(declare-const var3028!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var938_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3322-to-var2715=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2645_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var2645_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var196-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3539=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var2426=r1, var938=java.util.List, var700=r0, var1755=i0, var3322=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var1893=$r2, var2715=freemarker.core.BuiltIn, var3512=1, var2516=2, var974=$r3, var2891=r4, var3845=$r17, var830=$r18, var2645=freemarker.core.RegexpHelper, var3001=$l7, var2440=$l1, var1501=$b2, var439=$r11, var3487=$r12, var1432=$l4, var17=$l5, var2078=$b6, var1298=$r16, var2889=i8, var1943=$i12, var196=freemarker.template.SimpleScalar, var3760=$r20, var741=$r19, var3028=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var3539, r1=var2426, java.util.List=var938, r0=var700, i0=var1755, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var3322, $r2=var1893, freemarker.core.BuiltIn=var2715, 1=var3512, 2=var2516, $r3=var974, r4=var2891, $r17=var3845, $r18=var830, freemarker.core.RegexpHelper=var2645, $l7=var3001, $l1=var2440, $b2=var1501, $r11=var439, $r12=var3487, $l4=var1432, $l5=var17, $b6=var2078, $r16=var1298, i8=var2889, $i12=var1943, freemarker.template.SimpleScalar=var196, $r20=var3760, $r19=var741, $r10=var3028}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8