(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2174 0)
(declare-sort var575 0)
(declare-sort var2681 0)
(declare-sort var102 0)
(declare-sort var2913 0)
(declare-sort var2446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var575_size/-959786421 (var575) Int)
(declare-fun this$0/467378960 (var2174) var2681)
(declare-fun checkMethodArgCount/509013054 (var102 Int Int Int) void)
(declare-fun cast-from-var2681-to-var102 (var2681) var102)
(declare-fun getStringMethodArg/-1432244773 (var102 var575 Int) String)
(declare-fun var2913_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var102) String)
(declare-fun var2913_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var2174) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2446-init () var2446)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var2446 String) void)
(declare-const null-var2174 var2174)
(declare-const null-var575 var575)
(declare-const var2913-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var3971 var2174) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var3971 null-var2174)))
(declare-const var495 var575) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var495 null-var575)))
(define-const var269 Int (var575_size/-959786421 var495)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var923 var2681 (this$0/467378960 var3971)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2681-to-var102 var923) var269 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var923!1 var2681)
(declare-const var269!1 Int)
(declare-const var2419 Int)
(declare-const var3125 Int)
(define-const var3821 var2681 (this$0/467378960 var3971)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var579 String (getStringMethodArg/-1432244773 (cast-from-var2681-to-var102 var3821) var495 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var269!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var1677 var2681 (this$0/467378960 var3971)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var678 String (getStringMethodArg/-1432244773 (cast-from-var2681-to-var102 var1677) var495 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var1603 Int (var2913_parseFlagString/1923739702 var678)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var469 Int (bv2nat (bvand ((_ int2bv 64) var1603) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var267 Int (ite (> var469 0) 1 (ite (< var469 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var267 0)))) ; Negate: Cond: $b2 != 0  
(define-const var1830 var2681 (this$0/467378960 var3971)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var887 String (key/-489369572 (cast-from-var2681-to-var102 var1830))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var2913_checkOnlyHasNonRegexpFlags/2137085743 var887 var1603 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var887!1 String)
(declare-const var1603!1 Int)
(declare-const var2419!1 Int)
(define-const var496 Int var2913-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var2680 Int (bv2nat (bvand ((_ int2bv 64) var1603!1) ((_ int2bv 64) var496)))) ; Statement: $l5 = $l7 & $l4 
(define-const var2246 Int (ite (> var2680 0) 1 (ite (< var2680 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var2246 0)))) ; Negate: Cond: $b6 != 0  
(define-const var3807 String (s/467378960 var3971)) ; Statement: $r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var3208 Int (indexOf/-1209756239 var3807 var579)) ; Statement: i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var218 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var3208 var218))) ; Cond: i8 != $i12 
(define-const var2078 var2446 var2446-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var2667 var2446 var2078) ; Statement: $r19 = $r21 
(define-const var2584 String (s/467378960 var3971)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var2584) var3208) (>= var3208 0))))
(define-const var3915 String (substring/-1240304868 var2584 0 var3208)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var2078 var3915)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var2078!1 var2446)
(declare-const var3915!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var575_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2681-to-var102=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2913_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var2913_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2446-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2174=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var3971=r1, var575=java.util.List, var495=r0, var269=i0, var2681=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var923=$r2, var102=freemarker.core.BuiltIn, var2419=1, var3125=2, var3821=$r3, var579=r4, var1677=$r17, var678=$r18, var2913=freemarker.core.RegexpHelper, var1603=$l7, var469=$l1, var267=$b2, var1830=$r11, var887=$r12, var496=$l4, var2680=$l5, var2246=$b6, var3807=$r16, var3208=i8, var218=$i12, var2446=freemarker.template.SimpleScalar, var2078=$r21, var2667=$r19, var2584=$r8, var3915=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var2174, r1=var3971, java.util.List=var575, r0=var495, i0=var269, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var2681, $r2=var923, freemarker.core.BuiltIn=var102, 1=var2419, 2=var3125, $r3=var3821, r4=var579, $r17=var1677, $r18=var678, freemarker.core.RegexpHelper=var2913, $l7=var1603, $l1=var469, $b2=var267, $r11=var1830, $r12=var887, $l4=var496, $l5=var2680, $b6=var2246, $r16=var3807, i8=var3208, $i12=var218, freemarker.template.SimpleScalar=var2446, $r21=var2078, $r19=var2667, $r8=var2584, $r9=var3915}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8