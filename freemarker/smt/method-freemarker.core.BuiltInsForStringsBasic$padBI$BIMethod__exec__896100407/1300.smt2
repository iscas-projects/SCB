(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2490 0)
(declare-sort var2412 0)
(declare-sort var1206 0)
(declare-sort var1283 0)
(declare-sort var1868 0)
(declare-sort var2398 0)
(declare-sort var487 0)
(declare-sort var1768 0)
(declare-sort var614 0)
(declare-sort var1537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2412_size/-959786421 (var2412) Int)
(declare-fun this$0/1263517016 (var2490) var1206)
(declare-fun checkMethodArgCount/509013054 (var1283 Int Int Int) void)
(declare-fun cast-from-var1206-to-var1283 (var1206) var1283)
(declare-fun getNumberMethodArg/-163734965 (var1283 var2412 Int) var1868)
(declare-fun intValue/207705611 (var1868) Int)
(declare-fun getStringMethodArg/-1432244773 (var1283 var2412 Int) String)
(declare-fun var2398-init () var2398)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1768-init () var1768)
(declare-fun arr-var614-init () (Array Int var614))
(declare-fun cast-from-String-to-var614 (String) var614)
(declare-fun key/-489369572 (var1283) String)
(declare-fun cast-from-var487-to-var614 (var487) var614)
(declare-fun <init>/-1300001354 (var1768 var1537 (Array Int var614)) void)
(declare-fun cast-from-var487-to-var1537 (var487) var1537)
(declare-const null-var2490 var2490)
(declare-const null-var2412 var2412)
(declare-const null-var487 var487)
(declare-const null-__Array__Int__var614__ (Array Int var614))
(declare-const var609 var2490) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod 
(assert (not (= var609 null-var2490)))
(declare-const var3803 var2412) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3803 null-var2412)))
(define-const var1948 Int (var2412_size/-959786421 var3803)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var91 var1206 (this$0/1263517016 var609)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1206-to-var1283 var91) var1948 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var91!1 var1206)
(declare-const var1948!1 Int)
(declare-const var950 Int)
(declare-const var1922 Int)
(define-const var53 var1206 (this$0/1263517016 var609)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
(define-const var3752 var1868 (getNumberMethodArg/-163734965 (cast-from-var1206-to-var1283 var53) var3803 0)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0) 
(assert true)
(define-const var2151 Int (intValue/207705611 var3752)) ; Statement: i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>() 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar 
(assert (not (<= var1948!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2048 var1206 (this$0/1263517016 var609)) ; Statement: $r9 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
(define-const var1091 String (getStringMethodArg/-1432244773 (cast-from-var1206-to-var1283 var2048) var3803 1)) ; Statement: r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var3548 var2398 var2398-init) ; Statement: $r11 = new freemarker.template.SimpleScalar 
(define-const var2770 var1206 (this$0/1263517016 var609)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2639 var487) ; Statement: $r15 := @caughtexception 
(assert (not (= var2639 null-var487)))
(assert true)
(define-const var429 Int (length/-134980193 var1091)) ; Statement: $i2 = virtualinvoke r10.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 0 goto $r16 = new freemarker.core._TemplateModelException 
(assert (not (= var429 0))) ; Cond: $i2 != 0 
(define-const var1925 var1768 var1768-init) ; Statement: $r16 = new freemarker.core._TemplateModelException 
(define-const var2459 (Array Int var614) arr-var614-init) ; Statement: $r17 = newarray (java.lang.Object)[4] 
(declare-const var2459!1 (Array Int var614))
(assert (not (= var2459!1 null-__Array__Int__var614__)))
(assert (= (select var2459!1 0) (cast-from-String-to-var614 "?"))) ; Statement: $r17[0] = "?" 
(define-const var826 var1206 (this$0/1263517016 var609)) ; Statement: $r18 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(define-const var481 String (key/-489369572 (cast-from-var1206-to-var1283 var826))) ; Statement: $r19 = $r18.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String key> 
(declare-const var2459!2 (Array Int var614))
(assert (not (= var2459!2 null-__Array__Int__var614__)))
(assert (= (select var2459!2 1) (cast-from-String-to-var614 var481))) ; Statement: $r17[1] = $r19 
(declare-const var2459!3 (Array Int var614))
(assert (not (= var2459!3 null-__Array__Int__var614__)))
(assert (= (select var2459!3 2) (cast-from-String-to-var614 "(...) failed: "))) ; Statement: $r17[2] = "(...) failed: " 
(declare-const var2459!4 (Array Int var614))
(assert (not (= var2459!4 null-__Array__Int__var614__)))
(assert (= (select var2459!4 3) (cast-from-var487-to-var614 var2639))) ; Statement: $r17[3] = $r15 
(assert true)
;(assert (<init>/-1300001354 var1925 (cast-from-var487-to-var1537 var2639) var2459!4)) ; Statement: specialinvoke $r16.<freemarker.core._TemplateModelException: void <init>(java.lang.Throwable,java.lang.Object[])>($r15, $r17) 

(declare-const var1925!1 var1768)
(declare-const var2639!1 var487)
(declare-const var2459!5 (Array Int var614))
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2412_size/-959786421=([java.util.List], int), this$0/1263517016=([freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$padBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1206-to-var1283=([freemarker.core.BuiltInsForStringsBasic$padBI], freemarker.core.BuiltIn), getNumberMethodArg/-163734965=([freemarker.core.BuiltIn, java.util.List, int], java.lang.Number), intValue/207705611=([java.lang.Number], int), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2398-init=([], freemarker.template.SimpleScalar), length/-134980193=([java.lang.String], int), var1768-init=([], freemarker.core._TemplateModelException), arr-var614-init=([], java.lang.Object[]), cast-from-String-to-var614=([java.lang.String], java.lang.Object), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), cast-from-var487-to-var614=([java.lang.IllegalArgumentException], java.lang.Object), <init>/-1300001354=([freemarker.core._TemplateModelException, java.lang.Throwable, java.lang.Object[]], void), cast-from-var487-to-var1537=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var2490=freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod, var609=r1, var2412=java.util.List, var3803=r0, var1948=i0, var1206=freemarker.core.BuiltInsForStringsBasic$padBI, var91=$r2, var1283=freemarker.core.BuiltIn, var950=1, var1922=2, var53=$r3, var1868=java.lang.Number, var3752=$r4, var2151=i1, var2048=$r9, var1091=r10, var2398=freemarker.template.SimpleScalar, var3548=$r11, var2770=$r12, var487=java.lang.IllegalArgumentException, var2639=$r15, var429=$i2, var1768=freemarker.core._TemplateModelException, var1925=$r16, var614=java.lang.Object, var2459=$r17, var826=$r18, var481=$r19, var1537=java.lang.Throwable}
; {freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod=var2490, r1=var609, java.util.List=var2412, r0=var3803, i0=var1948, freemarker.core.BuiltInsForStringsBasic$padBI=var1206, $r2=var91, freemarker.core.BuiltIn=var1283, 1=var950, 2=var1922, $r3=var53, java.lang.Number=var1868, $r4=var3752, i1=var2151, $r9=var2048, r10=var1091, freemarker.template.SimpleScalar=var2398, $r11=var3548, $r12=var2770, java.lang.IllegalArgumentException=var487, $r15=var2639, $i2=var429, freemarker.core._TemplateModelException=var1768, $r16=var1925, java.lang.Object=var614, $r17=var2459, $r18=var826, $r19=var481, java.lang.Throwable=var1537}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0);	i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>();	if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar;	$r9 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$r11 = new freemarker.template.SimpleScalar;	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r15 := @caughtexception;	$i2 = virtualinvoke r10.<java.lang.String: int length()>();	if $i2 != 0 goto $r16 = new freemarker.core._TemplateModelException;	$r16 = new freemarker.core._TemplateModelException;	$r17 = newarray (java.lang.Object)[4];	$r17[0] = "?";	$r18 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r19 = $r18.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String key>;	$r17[1] = $r19;	$r17[2] = "(...) failed: ";	$r17[3] = $r15;	specialinvoke $r16.<freemarker.core._TemplateModelException: void <init>(java.lang.Throwable,java.lang.Object[])>($r15, $r17);	throw $r16
;block_num 4