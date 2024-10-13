(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var3104 0)
(declare-sort var1662 0)
(declare-sort var3647 0)
(declare-sort var3827 0)
(declare-sort var1079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3104_size/-959786421 (var3104) Int)
(declare-fun this$0/-817137089 (var898) var1662)
(declare-fun checkMethodArgCount/509013054 (var3647 Int Int Int) void)
(declare-fun cast-from-var1662-to-var3647 (var1662) var3647)
(declare-fun getStringMethodArg/-1432244773 (var3647 var3104 Int) String)
(declare-fun key/-489369572 (var3647) String)
(declare-fun var3827_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var898) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1079-init () var1079)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var1079 String) void)
(declare-const null-var898 var898)
(declare-const null-var3104 var3104)
(declare-const var3827-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var1780 var898) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var1780 null-var898)))
(declare-const var3919 var3104) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3919 null-var3104)))
(define-const var2638 Int (var3104_size/-959786421 var3919)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3707 var1662 (this$0/-817137089 var1780)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1662-to-var3647 var3707) var2638 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3707!1 var1662)
(declare-const var2638!1 Int)
(declare-const var3322 Int)
(declare-const var3779 Int)
(define-const var600 var1662 (this$0/-817137089 var1780)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var1429 String (getStringMethodArg/-1432244773 (cast-from-var1662-to-var3647 var600) var3919 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (<= var2638!1 1)) ; Cond: i0 <= 1 
(define-const var3749 Int 0) ; Statement: $l9 = 0L 
(assert true) ; Non Conditional
(define-const var1538 Int (bv2nat (bvand ((_ int2bv 64) var3749) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var391 Int (ite (> var1538 0) 1 (ite (< var1538 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var391 0)))) ; Negate: Cond: $b2 != 0  
(define-const var3744 var1662 (this$0/-817137089 var1780)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var2395 String (key/-489369572 (cast-from-var1662-to-var3647 var3744))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var3827_checkOnlyHasNonRegexpFlags/2137085743 var2395 var3749 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var2395!1 String)
(declare-const var3749!1 Int)
(declare-const var3322!1 Int)
(define-const var3879 Int var3827-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var981 Int (bv2nat (bvand ((_ int2bv 64) var3749!1) ((_ int2bv 64) var3879)))) ; Statement: $l7 = $l9 & $l6 
(define-const var111 Int (ite (> var981 0) 1 (ite (< var981 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var111 0)))) ; Negate: Cond: $b8 != 0  
(define-const var661 String (s/-817137089 var1780)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var1826 Int (lastIndexOf/-618837785 var661 var1429)) ; Statement: i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2515 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (= var1826 var2515))) ; Cond: i10 != $i14 
(define-const var1152 var1079 var1079-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(define-const var3363 var1079 var1152) ; Statement: $r20 = $r22 
(define-const var251 String (s/-817137089 var1780)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var251) var1826) (>= var1826 0))))
(define-const var2425 String (substring/-1240304868 var251 0 var1826)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10) 
(assert true)
;(assert (<init>/378607920 var1152 var2425)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1152!1 var1079)
(declare-const var2425!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3104_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1662-to-var3647=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var3827_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var1079-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var898=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var1780=r1, var3104=java.util.List, var3919=r0, var2638=i0, var1662=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var3707=$r2, var3647=freemarker.core.BuiltIn, var3322=1, var3779=2, var600=$r3, var1429=r4, var3749=$l9, var1538=$l1, var391=$b2, var3744=$r12, var2395=$r13, var3827=freemarker.core.RegexpHelper, var3879=$l6, var981=$l7, var111=$b8, var661=$r17, var1826=i10, var2515=$i14, var1079=freemarker.template.SimpleScalar, var1152=$r22, var3363=$r20, var251=$r8, var2425=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var898, r1=var1780, java.util.List=var3104, r0=var3919, i0=var2638, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var1662, $r2=var3707, freemarker.core.BuiltIn=var3647, 1=var3322, 2=var3779, $r3=var600, r4=var1429, $l9=var3749, $l1=var1538, $b2=var391, $r12=var3744, $r13=var2395, freemarker.core.RegexpHelper=var3827, $l6=var3879, $l7=var981, $b8=var111, $r17=var661, i10=var1826, $i14=var2515, freemarker.template.SimpleScalar=var1079, $r22=var1152, $r20=var3363, $r8=var251, $r9=var2425}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$l9 = 0L;	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r20 = $r22;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10);	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r20
;block_num 8