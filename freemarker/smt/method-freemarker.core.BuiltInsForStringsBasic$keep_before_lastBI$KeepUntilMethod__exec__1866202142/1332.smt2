(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort var1861 0)
(declare-sort var831 0)
(declare-sort var898 0)
(declare-sort var604 0)
(declare-sort var1851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1861_size/-959786421 (var1861) Int)
(declare-fun this$0/-817137089 (var3274) var831)
(declare-fun checkMethodArgCount/509013054 (var898 Int Int Int) void)
(declare-fun cast-from-var831-to-var898 (var831) var898)
(declare-fun getStringMethodArg/-1432244773 (var898 var1861 Int) String)
(declare-fun var604_parseFlagString/1923739702 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/-817137089 (var3274) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1851-init () var1851)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var1851 String) void)
(declare-const null-var3274 var3274)
(declare-const null-var1861 var1861)
(declare-const var3816 var3274) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var3816 null-var3274)))
(declare-const var533 var1861) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var533 null-var1861)))
(define-const var3629 Int (var1861_size/-959786421 var533)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3041 var831 (this$0/-817137089 var3816)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var831-to-var898 var3041) var3629 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3041!1 var831)
(declare-const var3629!1 Int)
(declare-const var1838 Int)
(declare-const var99 Int)
(define-const var253 var831 (this$0/-817137089 var3816)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var1868 String (getStringMethodArg/-1432244773 (cast-from-var831-to-var898 var253) var533 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (not (<= var3629!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var3054 var831 (this$0/-817137089 var3816)) ; Statement: $r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var906 String (getStringMethodArg/-1432244773 (cast-from-var831-to-var898 var3054) var533 1)) ; Statement: $r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var410 Int (var604_parseFlagString/1923739702 var906)) ; Statement: $l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19) 
 ; Statement: goto [?= $l1 = $l9 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var984 Int (bv2nat (bvand ((_ int2bv 64) var410) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var1631 Int (ite (> var984 0) 1 (ite (< var984 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var1631 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var3800 Int (length/-134980193 var1868)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l9 
(assert (not (not (= var3800 0)))) ; Negate: Cond: $i3 != 0  
(define-const var3909 String (s/-817137089 var3816)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var958 Int (length/-134980193 var3909)) ; Statement: i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3714 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (= var958 var3714))) ; Cond: i10 != $i14 
(define-const var2412 var1851 var1851-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(define-const var1489 var1851 var2412) ; Statement: $r20 = $r22 
(define-const var945 String (s/-817137089 var3816)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var945) var958) (>= var958 0))))
(define-const var1730 String (substring/-1240304868 var945 0 var958)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10) 
(assert true)
;(assert (<init>/378607920 var2412 var1730)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var2412!1 var1851)
(declare-const var1730!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1861_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var831-to-var898=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var604_parseFlagString/1923739702=([java.lang.String], long), length/-134980193=([java.lang.String], int), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), cast-from-Int-to-Int=([int], int), var1851-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3274=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var3816=r1, var1861=java.util.List, var533=r0, var3629=i0, var831=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var3041=$r2, var898=freemarker.core.BuiltIn, var1838=1, var99=2, var253=$r3, var1868=r4, var3054=$r18, var906=$r19, var604=freemarker.core.RegexpHelper, var410=$l9, var984=$l1, var1631=$b2, var3800=$i3, var3909=$r11, var958=i10, var3714=$i14, var1851=freemarker.template.SimpleScalar, var2412=$r22, var1489=$r20, var945=$r8, var1730=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var3274, r1=var3816, java.util.List=var1861, r0=var533, i0=var3629, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var831, $r2=var3041, freemarker.core.BuiltIn=var898, 1=var1838, 2=var99, $r3=var253, r4=var1868, $r18=var3054, $r19=var906, freemarker.core.RegexpHelper=var604, $l9=var410, $l1=var984, $b2=var1631, $i3=var3800, $r11=var3909, i10=var958, $i14=var3714, freemarker.template.SimpleScalar=var1851, $r22=var2412, $r20=var1489, $r8=var945, $r9=var1730}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19);	goto [?= $l1 = $l9 & 4294967296L];	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l9;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r11.<java.lang.String: int length()>();	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r20 = $r22;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10);	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r20
;block_num 8