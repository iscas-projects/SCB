(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3177 0)
(declare-sort var707 0)
(declare-sort var2038 0)
(declare-sort var2398 0)
(declare-sort var482 0)
(declare-sort var3756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var707_size/-959786421 (var707) Int)
(declare-fun this$0/-817137089 (var3177) var2038)
(declare-fun checkMethodArgCount/509013054 (var2398 Int Int Int) void)
(declare-fun cast-from-var2038-to-var2398 (var2038) var2398)
(declare-fun getStringMethodArg/-1432244773 (var2398 var707 Int) String)
(declare-fun key/-489369572 (var2398) String)
(declare-fun var482_checkOnlyHasNonRegexpFlags/2137085743 (String Int Bool) void)
(declare-fun s/-817137089 (var3177) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3756-init () var3756)
(declare-fun <init>/378607920 (var3756 String) void)
(declare-const null-var3177 var3177)
(declare-const null-var707 var707)
(declare-const var482-RE_FLAG_CASE_INSENSITIVE Int)
(declare-const var1679 var3177) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var1679 null-var3177)))
(declare-const var696 var707) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var696 null-var707)))
(define-const var1148 Int (var707_size/-959786421 var696)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3300 var2038 (this$0/-817137089 var1679)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2038-to-var2398 var3300) var1148 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3300!1 var2038)
(declare-const var1148!1 Int)
(declare-const var453 Int)
(declare-const var1124 Int)
(define-const var3826 var2038 (this$0/-817137089 var1679)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var1009 String (getStringMethodArg/-1432244773 (cast-from-var2038-to-var2398 var3826) var696 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (<= var1148!1 1)) ; Cond: i0 <= 1 
(define-const var2462 Int 0) ; Statement: $l9 = 0L 
(assert true) ; Non Conditional
(define-const var1235 Int (bv2nat (bvand ((_ int2bv 64) var2462) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var3688 Int (ite (> var1235 0) 1 (ite (< var1235 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (not (= var3688 0)))) ; Negate: Cond: $b2 != 0  
(define-const var2556 var2038 (this$0/-817137089 var1679)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(define-const var1179 String (key/-489369572 (cast-from-var2038-to-var2398 var2556))) ; Statement: $r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key> 
;(assert (var482_checkOnlyHasNonRegexpFlags/2137085743 var1179 var2462 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1) 

(declare-const var1179!1 String)
(declare-const var2462!1 Int)
(declare-const var453!1 Int)
(define-const var2194 Int var482-RE_FLAG_CASE_INSENSITIVE) ; Statement: $l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE> 
(define-const var3360 Int (bv2nat (bvand ((_ int2bv 64) var2462!1) ((_ int2bv 64) var2194)))) ; Statement: $l7 = $l9 & $l6 
(define-const var1628 Int (ite (> var3360 0) 1 (ite (< var3360 0) (- 1) 0))) ; Statement: $b8 = $l7 cmp 0L 
 ; Statement: if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (not (not (= var1628 0)))) ; Negate: Cond: $b8 != 0  
(define-const var2183 String (s/-817137089 var1679)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2355 Int (lastIndexOf/-618837785 var2183 var1009)) ; Statement: i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var999 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (not (= var2355 var999)))) ; Negate: Cond: i10 != $i14  
(define-const var2432 var3756 var3756-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var3194 var3756 var2432) ; Statement: $r20 = $r21 
(define-const var1480 String (s/-817137089 var1679)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var2432 var1480)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var2432!1 var3756)
(declare-const var1480!1 String)
 ; Statement: goto [?= return $r20] 
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var707_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2038-to-var2398=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), var482_checkOnlyHasNonRegexpFlags/2137085743=([java.lang.String, long, boolean], void), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var3756-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3177=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var1679=r1, var707=java.util.List, var696=r0, var1148=i0, var2038=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var3300=$r2, var2398=freemarker.core.BuiltIn, var453=1, var1124=2, var3826=$r3, var1009=r4, var2462=$l9, var1235=$l1, var3688=$b2, var2556=$r12, var1179=$r13, var482=freemarker.core.RegexpHelper, var2194=$l6, var3360=$l7, var1628=$b8, var2183=$r17, var2355=i10, var999=$i14, var3756=freemarker.template.SimpleScalar, var2432=$r21, var3194=$r20, var1480=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var3177, r1=var1679, java.util.List=var707, r0=var696, i0=var1148, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var2038, $r2=var3300, freemarker.core.BuiltIn=var2398, 1=var453, 2=var1124, $r3=var3826, r4=var1009, $l9=var2462, $l1=var1235, $b2=var3688, $r12=var2556, $r13=var1179, freemarker.core.RegexpHelper=var482, $l6=var2194, $l7=var3360, $b8=var1628, $r17=var2183, i10=var2355, $i14=var999, freemarker.template.SimpleScalar=var3756, $r21=var2432, $r20=var3194, $r10=var1480}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$l9 = 0L;	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	$r13 = $r12.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String key>;	staticinvoke <freemarker.core.RegexpHelper: void checkOnlyHasNonRegexpFlags(java.lang.String,long,boolean)>($r13, $l9, 1);	$l6 = <freemarker.core.RegexpHelper: long RE_FLAG_CASE_INSENSITIVE>;	$l7 = $l9 & $l6;	$b8 = $l7 cmp 0L;	if $b8 != 0 goto $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r17.<java.lang.String: int lastIndexOf(java.lang.String)>(r4);	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r20 = $r21;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r20];	return $r20
;block_num 8