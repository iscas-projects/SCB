(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var1743 0)
(declare-sort var969 0)
(declare-sort var394 0)
(declare-sort var1560 0)
(declare-sort var2369 0)
(declare-sort var3909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1743_size/-959786421 (var1743) Int)
(declare-fun this$0/1071167016 (var1938) var969)
(declare-fun checkMethodArgCount/509013054 (var394 Int Int Int) void)
(declare-fun cast-from-var969-to-var394 (var969) var394)
(declare-fun getStringMethodArg/-1432244773 (var394 var1743 Int) String)
(declare-fun var1560_parseFlagString/1923739702 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/1071167016 (var1938) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1938 var1938)
(declare-const null-var1743 var1743)
(declare-const var3909-EMPTY_STRING var2369)
(declare-const var3838 var1938) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod 
(assert (not (= var3838 null-var1938)))
(declare-const var3256 var1743) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3256 null-var1743)))
(define-const var515 Int (var1743_size/-959786421 var3256)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var696 var969 (this$0/1071167016 var3838)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var969-to-var394 var696) var515 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var696!1 var969)
(declare-const var515!1 Int)
(declare-const var1082 Int)
(declare-const var173 Int)
(define-const var3336 var969 (this$0/1071167016 var3838)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
(define-const var200 String (getStringMethodArg/-1432244773 (cast-from-var969-to-var394 var3336) var3256 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l11 = 0L 
(assert (not (<= var515!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var3267 var969 (this$0/1071167016 var3838)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
(define-const var1324 String (getStringMethodArg/-1432244773 (cast-from-var969-to-var394 var3267) var3256 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var1829 Int (var1560_parseFlagString/1923739702 var1324)) ; Statement: $l11 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l11 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var3998 Int (bv2nat (bvand ((_ int2bv 64) var1829) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l11 & 4294967296L 
(define-const var1463 Int (ite (> var3998 0) 1 (ite (< var3998 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var1463 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var3515 Int (length/-134980193 var200)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l11 
(assert (not (not (= var3515 0)))) ; Negate: Cond: $i3 != 0  
(define-const var2956 String (s/1071167016 var3838)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var1671 Int (length/-134980193 var2956)) ; Statement: i12 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i16 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2036 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar 
(assert (not (not (= var1671 var2036)))) ; Negate: Cond: i12 != $i16  
(define-const var3066 var2369 var3909-EMPTY_STRING) ; Statement: $r19 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING> 
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1743_size/-959786421=([java.util.List], int), this$0/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var969-to-var394=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var1560_parseFlagString/1923739702=([java.lang.String], long), length/-134980193=([java.lang.String], int), s/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], java.lang.String), cast-from-Int-to-Int=([int], int)}
; {var1938=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod, var3838=r1, var1743=java.util.List, var3256=r0, var515=i0, var969=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI, var696=$r2, var394=freemarker.core.BuiltIn, var1082=1, var173=2, var3336=$r3, var200=r4, var3267=$r17, var1324=$r18, var1560=freemarker.core.RegexpHelper, var1829=$l11, var3998=$l1, var1463=$b2, var3515=$i3, var2956=$r10, var1671=i12, var2036=$i16, var2369=freemarker.template.TemplateModel, var3909=freemarker.template.TemplateScalarModel, var3066=$r19}
; {freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod=var1938, r1=var3838, java.util.List=var1743, r0=var3256, i0=var515, freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI=var969, $r2=var696, freemarker.core.BuiltIn=var394, 1=var1082, 2=var173, $r3=var3336, r4=var200, $r17=var3267, $r18=var1324, freemarker.core.RegexpHelper=var1560, $l11=var1829, $l1=var3998, $b2=var1463, $i3=var3515, $r10=var2956, i12=var1671, $i16=var2036, freemarker.template.TemplateModel=var2369, freemarker.template.TemplateScalarModel=var3909, $r19=var3066}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l11 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l11 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l11 & 4294967296L];	$l1 = $l11 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l11;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s>;	i12 = virtualinvoke $r10.<java.lang.String: int length()>();	goto [?= $i16 = (int) -1];	$i16 = (int) -1;	if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar;	$r19 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING>;	goto [?= return $r19];	return $r19
;block_num 8