(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var669 0)
(declare-sort var2870 0)
(declare-sort var321 0)
(declare-sort var69 0)
(declare-sort var1701 0)
(declare-sort var2808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2870_size/-959786421 (var2870) Int)
(declare-fun this$0/467378960 (var669) var321)
(declare-fun checkMethodArgCount/509013054 (var69 Int Int Int) void)
(declare-fun cast-from-var321-to-var69 (var321) var69)
(declare-fun getStringMethodArg/-1432244773 (var69 var2870 Int) String)
(declare-fun key/-489369572 (var69) String)
(declare-fun var1701_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var669) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2808-init () var2808)
(declare-fun <init>/378607920 (var2808 String) void)
(declare-const null-var669 var669)
(declare-const null-var2870 var2870)
(declare-const var1701-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var3432 var669) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var3432 null-var669)))
(declare-const var829 var2870) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var829 null-var2870)))
(define-const var3469 Int (var2870_size/-959786421 var829)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var759 var321 (this$0/467378960 var3432)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var321-to-var69 var759) var3469 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var759!1 var321)
(declare-const var3469!1 Int)
(declare-const var3330 Int)
(declare-const var2693 Int)
(define-const var3293 var321 (this$0/467378960 var3432)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var802 String (getStringMethodArg/-1432244773 (cast-from-var321-to-var69 var3293) var829 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var3469!1 1)) ; Cond: i0 <= 1 
(define-const var1754 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var2006 Int (bv2nat (bvand ((_ int2bv 64) var1754) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var1011 Int (ite (> var2006 0) 1 (ite (< var2006 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var1011 0)))) ; Negate: Cond: $b2 != 0  
(define-const var2163 var321 (this$0/467378960 var3432)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var2862 String (key/-489369572 (cast-from-var321-to-var69 var2163))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var1701_checkOnlyHasNonRegexpFlags/2137085743 var2862 var1754 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var2862!1 String)
(declare-const var1754!1 Int)
(declare-const var3330!1 Int)
(define-const var1888 Int var1701-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var757 Int (bv2nat (bvand ((_ int2bv 64) var1754!1) ((_ int2bv 64) var1888)))) ; Statement: $l5 = $l7 & $l4 
(define-const var2324 Int (ite (> var757 0) 1 (ite (< var757 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var2324 0)))) ; Negate: Cond: $b6 != 0  
(define-const var39 String (s/467378960 var3432)) ; Statement: $r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var1470 Int (indexOf/-1209756239 var39 var802)) ; Statement: i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2335 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var1470 var2335)))) ; Negate: Cond: i8 != $i12  
(define-const var0 var2808 var2808-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var1429 var2808 var0) ; Statement: $r19 = $r20 
(define-const var2701 String (s/467378960 var3432)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var0 var2701)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var0!1 var2808)
(declare-const var2701!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var2870_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var321-to-var69=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var1701_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2808-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var669=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var3432=r1, var2870=java.util.List, var829=r0, var3469=i0, var321=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var759=$r2, var69=freemarker.core.BuiltIn, var3330=1, var2693=2, var3293=$r3, var802=r4, var1754=$l7, var2006=$l1, var1011=$b2, var2163=$r11, var2862=$r12, var1701=freemarker.core.RegexpHelper, var1888=$l4, var757=$l5, var2324=$b6, var39=$r16, var1470=i8, var2335=$i12, var2808=freemarker.template.SimpleScalar, var0=$r20, var1429=$r19, var2701=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var669, r1=var3432, java.util.List=var2870, r0=var829, i0=var3469, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var321, $r2=var759, freemarker.core.BuiltIn=var69, 1=var3330, 2=var2693, $r3=var3293, r4=var802, $l7=var1754, $l1=var2006, $b2=var1011, $r11=var2163, $r12=var2862, freemarker.core.RegexpHelper=var1701, $l4=var1888, $l5=var757, $b6=var2324, $r16=var39, i8=var1470, $i12=var2335, freemarker.template.SimpleScalar=var2808, $r20=var0, $r19=var1429, $r10=var2701}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8