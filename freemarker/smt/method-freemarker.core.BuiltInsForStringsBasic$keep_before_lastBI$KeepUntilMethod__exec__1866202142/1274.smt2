(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3581 0)
(declare-sort var310 0)
(declare-sort var2008 0)
(declare-sort var748 0)
(declare-sort var2904 0)
(declare-sort var3708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var310_size/-959786421 (var310) Int)
(declare-fun this$0/-817137089 (var3581) var2008)
(declare-fun checkMethodArgCount/509013054 (var748 Int Int Int) void)
(declare-fun cast-from-var2008-to-var748 (var2008) var748)
(declare-fun getStringMethodArg/-1432244773 (var748 var310 Int) String)
(declare-fun var2904_parseFlagString/1923739702 (String) Int)
(declare-fun key/-489369572 (var748) String)
(declare-fun var2904_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var3581) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3708-init () var3708)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var3708 String) void)
(declare-const null-var3581 var3581)
(declare-const null-var310 var310)
(declare-const var2904-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var2547 var3581) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var2547 null-var3581)))
(declare-const var3256 var310) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3256 null-var310)))
(define-const var3822 Int (var310_size/-959786421 var3256)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1189 var2008 (this$0/-817137089 var2547)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2008-to-var748 var1189) var3822 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1189!1 var2008)
(declare-const var3822!1 Int)
(declare-const var2932 Int)
(declare-const var2265 Int)
(define-const var1072 var2008 (this$0/-817137089 var2547)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3780 String (getStringMethodArg/-1432244773 (cast-from-var2008-to-var748 var1072) var3256 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (not (<= var3822!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2712 var2008 (this$0/-817137089 var2547)) ; Statement: $r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var1729 String (getStringMethodArg/-1432244773 (cast-from-var2008-to-var748 var2712) var3256 1)) ; Statement: $r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var2405 Int (var2904_parseFlagString/1923739702 var1729)) ; Statement: $l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19) 
 ; Statement: goto [?= $l1 = $l9 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var3124 Int (bv2nat (bvand ((_ int2bv 64) var2405) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var1324 Int (ite (> var3124 0) 1 (ite (< var3124 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var1324 0)))) ; Negate: Cond: $b2 != 0  
(define-const var2157 var2008 (this$0/-817137089 var2547)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var703 String (key/-489369572 (cast-from-var2008-to-var748 var2157))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var2904_checkOnlyHasNonRegexpFlags/2137085743 var703 var2405 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var703!1 String)
(declare-const var2405!1 Int)
(declare-const var2932!1 Int)
(define-const var3155 Int var2904-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var630 Int (bv2nat (bvand ((_ int2bv 64) var2405!1) ((_ int2bv 64) var3155)))) ; Statement: $l7 = $l9 & $l6 
(define-const var3679 Int (ite (> var630 0) 1 (ite (< var630 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var3679 0)))) ; Negate: Cond: $b8 != 0  
(define-const var515 String (s/-817137089 var2547)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var3881 Int (lastIndexOf/-618837785 var515 var3780)) ; Statement: i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3797 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (= var3881 var3797))) ; Cond: i10 != $i14 
(define-const var3947 var3708 var3708-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(define-const var2919 var3708 var3947) ; Statement: $r20 = $r22 
(define-const var3295 String (s/-817137089 var2547)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var3295) var3881) (>= var3881 0))))
(define-const var3457 String (substring/-1240304868 var3295 0 var3881)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10) 
(assert true)
;(assert (<init>/378607920 var3947 var3457)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var3947!1 var3708)
(declare-const var3457!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var310_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2008-to-var748=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2904_parseFlagString/1923739702=([java.lang.String], long), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var2904_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var3708-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3581=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var2547=r1, var310=java.util.List, var3256=r0, var3822=i0, var2008=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var1189=$r2, var748=freemarker.core.BuiltIn, var2932=1, var2265=2, var1072=$r3, var3780=r4, var2712=$r18, var1729=$r19, var2904=freemarker.core.RegexpHelper, var2405=$l9, var3124=$l1, var1324=$b2, var2157=$r12, var703=$r13, var3155=$l6, var630=$l7, var3679=$b8, var515=$r17, var3881=i10, var3797=$i14, var3708=freemarker.template.SimpleScalar, var3947=$r22, var2919=$r20, var3295=$r8, var3457=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var3581, r1=var2547, java.util.List=var310, r0=var3256, i0=var3822, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var2008, $r2=var1189, freemarker.core.BuiltIn=var748, 1=var2932, 2=var2265, $r3=var1072, r4=var3780, $r18=var2712, $r19=var1729, freemarker.core.RegexpHelper=var2904, $l9=var2405, $l1=var3124, $b2=var1324, $r12=var2157, $r13=var703, $l6=var3155, $l7=var630, $b8=var3679, $r17=var515, i10=var3881, $i14=var3797, freemarker.template.SimpleScalar=var3708, $r22=var3947, $r20=var2919, $r8=var3295, $r9=var3457}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$r18 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r19 = virtualinvoke $r18.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l9 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r19);	goto [?= $l1 = $l9 & 4294967296L];	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r20 = $r22;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10);	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r20
;block_num 8