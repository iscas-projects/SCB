(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var440 0)
(declare-sort var3570 0)
(declare-sort var229 0)
(declare-sort var2889 0)
(declare-sort var2001 0)
(declare-sort var2433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3570_size/-959786421 (var3570) Int)
(declare-fun this$0/467378960 (var440) var229)
(declare-fun checkMethodArgCount/509013054 (var2889 Int Int Int) void)
(declare-fun cast-from-var229-to-var2889 (var229) var2889)
(declare-fun getStringMethodArg/-1432244773 (var2889 var3570 Int) String)
(declare-fun key/-489369572 (var2889) String)
(declare-fun var2001_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/467378960 (var440) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2433-init () var2433)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var2433 String) void)
(declare-const null-var440 var440)
(declare-const null-var3570 var3570)
(declare-const var2001-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var3771 var440) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var3771 null-var440)))
(declare-const var3262 var3570) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3262 null-var3570)))
(define-const var2914 Int (var3570_size/-959786421 var3262)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2797 var229 (this$0/467378960 var3771)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var229-to-var2889 var2797) var2914 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2797!1 var229)
(declare-const var2914!1 Int)
(declare-const var2676 Int)
(declare-const var606 Int)
(define-const var2140 var229 (this$0/467378960 var3771)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var1004 String (getStringMethodArg/-1432244773 (cast-from-var229-to-var2889 var2140) var3262 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var2914!1 1)) ; Cond: i0 <= 1 
(define-const var1129 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var3984 Int (bv2nat (bvand ((_ int2bv 64) var1129) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var3581 Int (ite (> var3984 0) 1 (ite (< var3984 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (not (= var3581 0)))) ; Negate: Cond: $b2 != 0  
(define-const var762 var229 (this$0/467378960 var3771)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(define-const var474 String (key/-489369572 (cast-from-var229-to-var2889 var762))) ; Statement: $r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key> 
;(assert (var2001_checkOnlyHasNonRegexpFlags/2137085743 var474 var1129 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1) 

(declare-const var474!1 String)
(declare-const var1129!1 Int)
(declare-const var2676!1 Int)
(define-const var2444 Int var2001-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var2995 Int (bv2nat (bvand ((_ int2bv 64) var1129!1) ((_ int2bv 64) var2444)))) ; Statement: $l5 = $l7 & $l4 
(define-const var1581 Int (ite (> var2995 0) 1 (ite (< var2995 0) (- 1) 0))) ; Statement: $b6 = $l5 cmp 0L 
 ; Statement: if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var1581 0)))) ; Negate: Cond: $b6 != 0  
(define-const var503 String (s/467378960 var3771)) ; Statement: $r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2462 Int (indexOf/-1209756239 var503 var1004)) ; Statement: i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1217 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var2462 var1217))) ; Cond: i8 != $i12 
(define-const var1857 var2433 var2433-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var3866 var2433 var1857) ; Statement: $r19 = $r21 
(define-const var1168 String (s/467378960 var3771)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var1168) var2462) (>= var2462 0))))
(define-const var3854 String (substring/-1240304868 var1168 0 var2462)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var1857 var3854)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1857!1 var2433)
(declare-const var3854!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3570_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var229-to-var2889=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var2001_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2433-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var440=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var3771=r1, var3570=java.util.List, var3262=r0, var2914=i0, var229=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var2797=$r2, var2889=freemarker.core.BuiltIn, var2676=1, var606=2, var2140=$r3, var1004=r4, var1129=$l7, var3984=$l1, var3581=$b2, var762=$r11, var474=$r12, var2001=freemarker.core.RegexpHelper, var2444=$l4, var2995=$l5, var1581=$b6, var503=$r16, var2462=i8, var1217=$i12, var2433=freemarker.template.SimpleScalar, var1857=$r21, var3866=$r19, var1168=$r8, var3854=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var440, r1=var3771, java.util.List=var3570, r0=var3262, i0=var2914, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var229, $r2=var2797, freemarker.core.BuiltIn=var2889, 1=var2676, 2=var606, $r3=var2140, r4=var1004, $l7=var1129, $l1=var3984, $b2=var3581, $r11=var762, $r12=var474, freemarker.core.RegexpHelper=var2001, $l4=var2444, $l5=var2995, $b6=var1581, $r16=var503, i8=var2462, $i12=var1217, freemarker.template.SimpleScalar=var2433, $r21=var1857, $r19=var3866, $r8=var1168, $r9=var3854}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r12 = $r11.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r12, $l7, 1);	$l4 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l5 = $l7 & $l4;	$b6 = $l5 cmp 0L;	if $b6 != 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	i8 = virtualinvoke $r16.<java.lang.String: int indexOf(java.lang.String)>(r4);	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8