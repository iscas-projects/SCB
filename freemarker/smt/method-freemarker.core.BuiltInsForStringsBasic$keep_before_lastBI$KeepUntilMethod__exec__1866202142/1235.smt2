(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var256 0)
(declare-sort var2147 0)
(declare-sort var1765 0)
(declare-sort var3946 0)
(declare-sort var479 0)
(declare-sort var539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2147_size/-959786421 (var2147) Int)
(declare-fun this$0/-817137089 (var256) var1765)
(declare-fun checkMethodArgCount/509013054 (var3946 Int Int Int) void)
(declare-fun cast-from-var1765-to-var3946 (var1765) var3946)
(declare-fun getStringMethodArg/-1432244773 (var3946 var2147 Int) String)
(declare-fun var479_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var3946) String)
(declare-fun var479_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var256) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var539-init () var539)
(declare-fun <init>/378607920 (var539 String) void)
(declare-const null-var256 var256)
(declare-const null-var2147 var2147)
(declare-const var479-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var3375 var256) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var3375 null-var256)))
(declare-const var1322 var2147) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1322 null-var2147)))
(define-const var85 Int (var2147_size/-959786421 var1322)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var595 var1765 (this$0/-817137089 var3375)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1765-to-var3946 var595) var85 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var595!1 var1765)
(declare-const var85!1 Int)
(declare-const var881 Int)
(declare-const var3081 Int)
(define-const var1798 var1765 (this$0/-817137089 var3375)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3120 String (getStringMethodArg/-1432244773 (cast-from-var1765-to-var3946 var1798) var1322 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (not (<= var85!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var3756 var1765 (this$0/-817137089 var3375)) ; Statement: $r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var1969 String (getStringMethodArg/-1432244773 (cast-from-var1765-to-var3946 var3756) var1322 1)) ; Statement: $r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var2070 Int (var479_parseFlagString/1923739702 var1969)) ; Statement: $l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19) 
 ; Statement: goto [?= $l1 = $l9 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var2681 Int (bv2nat (bvand ((_ int2bv 64) var2070) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var790 Int (ite (> var2681 0) 1 (ite (< var2681 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var790 0)))) ; Negate: Cond: $b2 != 0  
(define-const var409 var1765 (this$0/-817137089 var3375)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var1120 String (key/-489369572 (cast-from-var1765-to-var3946 var409))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var479_checkOnlyHasNonRegexpFlags/2137085743 var1120 var2070 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var1120!1 String)
(declare-const var2070!1 Int)
(declare-const var881!1 Int)
(define-const var2376 Int var479-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var2680 Int (bv2nat (bvand ((_ int2bv 64) var2070!1) ((_ int2bv 64) var2376)))) ; Statement: $l7 = $l9 & $l6 
(define-const var1017 Int (ite (> var2680 0) 1 (ite (< var2680 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var1017 0)))) ; Negate: Cond: $b8 != 0  
(define-const var2879 String (s/-817137089 var3375)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2872 Int (lastIndexOf/-618837785 var2879 var3120)) ; Statement: i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var654 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (not (= var2872 var654)))) ; Negate: Cond: i10 != $i14  
(define-const var898 var539 var539-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var477 var539 var898) ; Statement: $r20 = $r21 
(define-const var1892 String (s/-817137089 var3375)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var898 var1892)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var898!1 var539)
(declare-const var1892!1 String)
 ; Statement: goto [?= return $r20] 
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2147_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1765-to-var3946=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var479_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var479_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var539-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var256=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var3375=r1, var2147=java.util.List, var1322=r0, var85=i0, var1765=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var595=$r2, var3946=freemarker.core.BuiltIn, var881=1, var3081=2, var1798=$r3, var3120=r4, var3756=$r18, var1969=$r19, var479=freemarker.core.RegexpHelper, var2070=$l9, var2681=$l1, var790=$b2, var409=$r12, var1120=$r13, var2376=$l6, var2680=$l7, var1017=$b8, var2879=$r17, var2872=i10, var654=$i14, var539=freemarker.template.SimpleScalar, var898=$r21, var477=$r20, var1892=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var256, r1=var3375, java.util.List=var2147, r0=var1322, i0=var85, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var1765, $r2=var595, freemarker.core.BuiltIn=var3946, 1=var881, 2=var3081, $r3=var1798, r4=var3120, $r18=var3756, $r19=var1969, freemarker.core.RegexpHelper=var479, $l9=var2070, $l1=var2681, $b2=var790, $r12=var409, $r13=var1120, $l6=var2376, $l7=var2680, $b8=var1017, $r17=var2879, i10=var2872, $i14=var654, freemarker.template.SimpleScalar=var539, $r21=var898, $r20=var477, $r10=var1892}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19);	goto [?= $l1 = $l9 & 4294967296L];	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r20 = $r21;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r20];	return $r20
;block_num 8