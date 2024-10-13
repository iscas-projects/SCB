(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3482 0)
(declare-sort var2113 0)
(declare-sort var303 0)
(declare-sort var1494 0)
(declare-sort var2211 0)
(declare-sort var3721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2113_size/-959786421 (var2113) Int)
(declare-fun this$0/-817137089 (var3482) var303)
(declare-fun checkMethodArgCount/509013054 (var1494 Int Int Int) void)
(declare-fun cast-from-var303-to-var1494 (var303) var1494)
(declare-fun getStringMethodArg/-1432244773 (var1494 var2113 Int) String)
(declare-fun var2211_parseFlagString/1923739702 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/-817137089 (var3482) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3721-init () var3721)
(declare-fun <init>/378607920 (var3721 String) void)
(declare-const null-var3482 var3482)
(declare-const null-var2113 var2113)
(declare-const var2205 var3482) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var2205 null-var3482)))
(declare-const var2577 var2113) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2577 null-var2113)))
(define-const var3194 Int (var2113_size/-959786421 var2577)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2416 var303 (this$0/-817137089 var2205)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var303-to-var1494 var2416) var3194 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2416!1 var303)
(declare-const var3194!1 Int)
(declare-const var1600 Int)
(declare-const var3387 Int)
(define-const var2410 var303 (this$0/-817137089 var2205)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var2335 String (getStringMethodArg/-1432244773 (cast-from-var303-to-var1494 var2410) var2577 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (not (<= var3194!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var1438 var303 (this$0/-817137089 var2205)) ; Statement: $r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var327 String (getStringMethodArg/-1432244773 (cast-from-var303-to-var1494 var1438) var2577 1)) ; Statement: $r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var1870 Int (var2211_parseFlagString/1923739702 var327)) ; Statement: $l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19) 
 ; Statement: goto [?= $l1 = $l9 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var723 Int (bv2nat (bvand ((_ int2bv 64) var1870) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var3077 Int (ite (> var723 0) 1 (ite (< var723 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var3077 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var2774 Int (length/-134980193 var2335)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l9 
(assert (not (not (= var2774 0)))) ; Negate: Cond: $i3 != 0  
(define-const var1684 String (s/-817137089 var2205)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var865 Int (length/-134980193 var1684)) ; Statement: i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3985 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (not (= var865 var3985)))) ; Negate: Cond: i10 != $i14  
(define-const var1606 var3721 var3721-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var369 var3721 var1606) ; Statement: $r20 = $r21 
(define-const var898 String (s/-817137089 var2205)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var1606 var898)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var1606!1 var3721)
(declare-const var898!1 String)
 ; Statement: goto [?= return $r20] 
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2113_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var303-to-var1494=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2211_parseFlagString/1923739702=([java.lang.String], long), length/-134980193=([java.lang.String], int), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), cast-from-Int-to-Int=([int], int), var3721-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3482=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var2205=r1, var2113=java.util.List, var2577=r0, var3194=i0, var303=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var2416=$r2, var1494=freemarker.core.BuiltIn, var1600=1, var3387=2, var2410=$r3, var2335=r4, var1438=$r18, var327=$r19, var2211=freemarker.core.RegexpHelper, var1870=$l9, var723=$l1, var3077=$b2, var2774=$i3, var1684=$r11, var865=i10, var3985=$i14, var3721=freemarker.template.SimpleScalar, var1606=$r21, var369=$r20, var898=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var3482, r1=var2205, java.util.List=var2113, r0=var2577, i0=var3194, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var303, $r2=var2416, freemarker.core.BuiltIn=var1494, 1=var1600, 2=var3387, $r3=var2410, r4=var2335, $r18=var1438, $r19=var327, freemarker.core.RegexpHelper=var2211, $l9=var1870, $l1=var723, $b2=var3077, $i3=var2774, $r11=var1684, i10=var865, $i14=var3985, freemarker.template.SimpleScalar=var3721, $r21=var1606, $r20=var369, $r10=var898}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19);	goto [?= $l1 = $l9 & 4294967296L];	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l9;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r11.<java.lang.String: int length()>();	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r20 = $r21;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r20];	return $r20
;block_num 8