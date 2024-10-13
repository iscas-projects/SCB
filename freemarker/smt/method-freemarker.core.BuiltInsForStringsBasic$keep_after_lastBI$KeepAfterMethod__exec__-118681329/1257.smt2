(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1405 0)
(declare-sort var3277 0)
(declare-sort var1477 0)
(declare-sort var1660 0)
(declare-sort var2318 0)
(declare-sort var1186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3277_size/-959786421 (var3277) Int)
(declare-fun this$0/1071167016 (var1405) var1477)
(declare-fun checkMethodArgCount/509013054 (var1660 Int Int Int) void)
(declare-fun cast-from-var1477-to-var1660 (var1477) var1660)
(declare-fun getStringMethodArg/-1432244773 (var1660 var3277 Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/1071167016 (var1405) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1405 var1405)
(declare-const null-var3277 var3277)
(declare-const var1186-EMPTY_STRING var2318)
(declare-const var2507 var1405) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod 
(assert (not (= var2507 null-var1405)))
(declare-const var3590 var3277) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3590 null-var3277)))
(define-const var2769 Int (var3277_size/-959786421 var3590)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3380 var1477 (this$0/1071167016 var2507)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1477-to-var1660 var3380) var2769 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3380!1 var1477)
(declare-const var2769!1 Int)
(declare-const var3971 Int)
(declare-const var294 Int)
(define-const var809 var1477 (this$0/1071167016 var2507)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
(define-const var2625 String (getStringMethodArg/-1432244773 (cast-from-var1477-to-var1660 var809) var3590 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l11 = 0L 
(assert (<= var2769!1 1)) ; Cond: i0 <= 1 
(define-const var1571 Int 0) ; Statement: $l11 = 0L 
(assert true) ; Non Conditional
(define-const var2677 Int (bv2nat (bvand ((_ int2bv 64) var1571) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l11 & 4294967296L 
(define-const var1856 Int (ite (> var2677 0) 1 (ite (< var2677 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var1856 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var1269 Int (length/-134980193 var2625)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l11 
(assert (not (not (= var1269 0)))) ; Negate: Cond: $i3 != 0  
(define-const var395 String (s/1071167016 var2507)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var1537 Int (length/-134980193 var395)) ; Statement: i12 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i16 = (int) -1] 
(assert true) ; Non Conditional
(define-const var147 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar 
(assert (not (not (= var1537 var147)))) ; Negate: Cond: i12 != $i16  
(define-const var2907 var2318 var1186-EMPTY_STRING) ; Statement: $r19 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING> 
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3277_size/-959786421=([java.util.List], int), this$0/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1477-to-var1660=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), length/-134980193=([java.lang.String], int), s/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], java.lang.String), cast-from-Int-to-Int=([int], int)}
; {var1405=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod, var2507=r1, var3277=java.util.List, var3590=r0, var2769=i0, var1477=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI, var3380=$r2, var1660=freemarker.core.BuiltIn, var3971=1, var294=2, var809=$r3, var2625=r4, var1571=$l11, var2677=$l1, var1856=$b2, var1269=$i3, var395=$r10, var1537=i12, var147=$i16, var2318=freemarker.template.TemplateModel, var1186=freemarker.template.TemplateScalarModel, var2907=$r19}
; {freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod=var1405, r1=var2507, java.util.List=var3277, r0=var3590, i0=var2769, freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI=var1477, $r2=var3380, freemarker.core.BuiltIn=var1660, 1=var3971, 2=var294, $r3=var809, r4=var2625, $l11=var1571, $l1=var2677, $b2=var1856, $i3=var1269, $r10=var395, i12=var1537, $i16=var147, freemarker.template.TemplateModel=var2318, freemarker.template.TemplateScalarModel=var1186, $r19=var2907}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l11 = 0L;	$l11 = 0L;	$l1 = $l11 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l11;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s>;	i12 = virtualinvoke $r10.<java.lang.String: int length()>();	goto [?= $i16 = (int) -1];	$i16 = (int) -1;	if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar;	$r19 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING>;	goto [?= return $r19];	return $r19
;block_num 8