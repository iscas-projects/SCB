(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3935 0)
(declare-sort var1928 0)
(declare-sort var2214 0)
(declare-sort var3709 0)
(declare-sort var2882 0)
(declare-sort var939 0)
(declare-sort var422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1928_size/-959786421 (var1928) Int)
(declare-fun this$0/1071167016 (var3935) var2214)
(declare-fun checkMethodArgCount/509013054 (var3709 Int Int Int) void)
(declare-fun cast-from-var2214-to-var3709 (var2214) var3709)
(declare-fun getStringMethodArg/-1432244773 (var3709 var1928 Int) String)
(declare-fun var2882_parseFlagString/1923739702 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/1071167016 (var3935) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var939-init () var939)
(declare-fun cast-from-var939-to-var422 (var939) var422)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/378607920 (var939 String) void)
(declare-const null-var3935 var3935)
(declare-const null-var1928 var1928)
(declare-const var295 var3935) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod 
(assert (not (= var295 null-var3935)))
(declare-const var1122 var1928) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1122 null-var1928)))
(define-const var3101 Int (var1928_size/-959786421 var1122)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1528 var2214 (this$0/1071167016 var295)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2214-to-var3709 var1528) var3101 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1528!1 var2214)
(declare-const var3101!1 Int)
(declare-const var1473 Int)
(declare-const var762 Int)
(define-const var224 var2214 (this$0/1071167016 var295)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
(define-const var2885 String (getStringMethodArg/-1432244773 (cast-from-var2214-to-var3709 var224) var1122 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l11 = 0L 
(assert (not (<= var3101!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var1894 var2214 (this$0/1071167016 var295)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
(define-const var922 String (getStringMethodArg/-1432244773 (cast-from-var2214-to-var3709 var1894) var1122 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var489 Int (var2882_parseFlagString/1923739702 var922)) ; Statement: $l11 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l11 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var1398 Int (bv2nat (bvand ((_ int2bv 64) var489) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l11 & 4294967296L 
(define-const var959 Int (ite (> var1398 0) 1 (ite (< var1398 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var959 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var3410 Int (length/-134980193 var2885)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l11 
(assert (not (not (= var3410 0)))) ; Negate: Cond: $i3 != 0  
(define-const var2647 String (s/1071167016 var295)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var3599 Int (length/-134980193 var2647)) ; Statement: i12 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i16 = (int) -1] 
(assert true) ; Non Conditional
(define-const var953 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar 
(assert (not (= var3599 var953))) ; Cond: i12 != $i16 
(define-const var1036 var939 var939-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var379 var422 (cast-from-var939-to-var422 var1036)) ; Statement: $r19 = $r20 
(define-const var3887 String (s/1071167016 var295)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s> 
(assert (and true (and (>= var3599 0) (>= (str.len var3887) var3599))))
(define-const var2652 String (substring/850833817 var3887 var3599)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i12) 
(assert true)
;(assert (<init>/378607920 var1036 var2652)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1036!1 var939)
(declare-const var2652!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1928_size/-959786421=([java.util.List], int), this$0/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2214-to-var3709=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2882_parseFlagString/1923739702=([java.lang.String], long), length/-134980193=([java.lang.String], int), s/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], java.lang.String), cast-from-Int-to-Int=([int], int), var939-init=([], freemarker.template.SimpleScalar), cast-from-var939-to-var422=([freemarker.template.SimpleScalar], freemarker.template.TemplateModel), substring/850833817=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3935=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod, var295=r1, var1928=java.util.List, var1122=r0, var3101=i0, var2214=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI, var1528=$r2, var3709=freemarker.core.BuiltIn, var1473=1, var762=2, var224=$r3, var2885=r4, var1894=$r17, var922=$r18, var2882=freemarker.core.RegexpHelper, var489=$l11, var1398=$l1, var959=$b2, var3410=$i3, var2647=$r10, var3599=i12, var953=$i16, var939=freemarker.template.SimpleScalar, var1036=$r20, var422=freemarker.template.TemplateModel, var379=$r19, var3887=$r8, var2652=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod=var3935, r1=var295, java.util.List=var1928, r0=var1122, i0=var3101, freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI=var2214, $r2=var1528, freemarker.core.BuiltIn=var3709, 1=var1473, 2=var762, $r3=var224, r4=var2885, $r17=var1894, $r18=var922, freemarker.core.RegexpHelper=var2882, $l11=var489, $l1=var1398, $b2=var959, $i3=var3410, $r10=var2647, i12=var3599, $i16=var953, freemarker.template.SimpleScalar=var939, $r20=var1036, freemarker.template.TemplateModel=var422, $r19=var379, $r8=var3887, $r9=var2652}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l11 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l11 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l11 & 4294967296L];	$l1 = $l11 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l11;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s>;	i12 = virtualinvoke $r10.<java.lang.String: int length()>();	goto [?= $i16 = (int) -1];	$i16 = (int) -1;	if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i12);	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8