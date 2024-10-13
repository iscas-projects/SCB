(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3877 0)
(declare-sort var3382 0)
(declare-sort var1658 0)
(declare-sort var2346 0)
(declare-sort var1938 0)
(declare-sort var2877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3382_size/-959786421 (var3382) Int)
(declare-fun this$0/974505115 (var3877) var1658)
(declare-fun checkMethodArgCount/509013054 (var2346 Int Int Int) void)
(declare-fun cast-from-var1658-to-var2346 (var1658) var2346)
(declare-fun getStringMethodArg/-1432244773 (var2346 var3382 Int) String)
(declare-fun getNumberMethodArg/-163734965 (var2346 var3382 Int) var1938)
(declare-fun intValue/207705611 (var1938) Int)
(declare-fun var2877-init () var2877)
(declare-fun var1658_access$400/-1326169297 (var1658) Bool)
(declare-fun s/974505115 (var3877) String)
(declare-fun lastIndexOf/262189930 (String String Int) Int)
(declare-fun <init>/-1657349039 (var2877 Int) void)
(declare-const null-var3877 var3877)
(declare-const null-var3382 var3382)
(declare-const var918 var3877) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod 
(assert (not (= var918 null-var3877)))
(declare-const var2620 var3382) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2620 null-var3382)))
(define-const var2593 Int (var3382_size/-959786421 var2620)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var713 var1658 (this$0/974505115 var918)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1658-to-var2346 var713) var2593 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var713!1 var1658)
(declare-const var2593!1 Int)
(declare-const var3478 Int)
(declare-const var3028 Int)
(define-const var39 var1658 (this$0/974505115 var918)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
(define-const var862 String (getStringMethodArg/-1432244773 (cast-from-var1658-to-var2346 var39) var2620 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber 
(assert (not (<= var2593!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2484 var1658 (this$0/974505115 var918)) ; Statement: $r9 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
(define-const var1351 var1938 (getNumberMethodArg/-163734965 (cast-from-var1658-to-var2346 var2484) var2620 1)) ; Statement: $r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 1) 
(assert true)
(define-const var2135 Int (intValue/207705611 var1351)) ; Statement: i1 = virtualinvoke $r10.<java.lang.Number: int intValue()>() 
(define-const var2546 var2877 var2877-init) ; Statement: $r11 = new freemarker.template.SimpleNumber 
(define-const var1131 var1658 (this$0/974505115 var918)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(define-const var3751 Bool (var1658_access$400/-1326169297 var1131)) ; Statement: $z1 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r12) 
 ; Statement: if $z1 == 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert (not (= (ite var3751 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var940 String (s/974505115 var918)) ; Statement: $r14 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var1067 Int (lastIndexOf/262189930 var940 var862 var2135)) ; Statement: $i2 = virtualinvoke $r14.<java.lang.String: int lastIndexOf(java.lang.String,int)>(r4, i1) 
 ; Statement: goto [?= specialinvoke $r11.<freemarker.template.SimpleNumber: void <init>(int)>($i2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1657349039 var2546 var1067)) ; Statement: specialinvoke $r11.<freemarker.template.SimpleNumber: void <init>(int)>($i2) 

(declare-const var2546!1 var2877)
(declare-const var1067!1 Int)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3382_size/-959786421=([java.util.List], int), this$0/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$index_ofBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1658-to-var2346=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), getNumberMethodArg/-163734965=([freemarker.core.BuiltIn, java.util.List, int], java.lang.Number), intValue/207705611=([java.lang.Number], int), var2877-init=([], freemarker.template.SimpleNumber), var1658_access$400/-1326169297=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], boolean), s/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], java.lang.String), lastIndexOf/262189930=([java.lang.String, java.lang.String, int], int), <init>/-1657349039=([freemarker.template.SimpleNumber, int], void)}
; {var3877=freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod, var918=r1, var3382=java.util.List, var2620=r0, var2593=i0, var1658=freemarker.core.BuiltInsForStringsBasic$index_ofBI, var713=$r2, var2346=freemarker.core.BuiltIn, var3478=1, var3028=2, var39=$r3, var862=r4, var2484=$r9, var1938=java.lang.Number, var1351=$r10, var2135=i1, var2877=freemarker.template.SimpleNumber, var2546=$r11, var1131=$r12, var3751=$z1, var940=$r14, var1067=$i2}
; {freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod=var3877, r1=var918, java.util.List=var3382, r0=var2620, i0=var2593, freemarker.core.BuiltInsForStringsBasic$index_ofBI=var1658, $r2=var713, freemarker.core.BuiltIn=var2346, 1=var3478, 2=var3028, $r3=var39, r4=var862, $r9=var2484, java.lang.Number=var1938, $r10=var1351, i1=var2135, freemarker.template.SimpleNumber=var2877, $r11=var2546, $r12=var1131, $z1=var3751, $r14=var940, $i2=var1067}
;seq <java.lang.String: int lastIndexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber;	$r9 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	$r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 1);	i1 = virtualinvoke $r10.<java.lang.Number: int intValue()>();	$r11 = new freemarker.template.SimpleNumber;	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	$z1 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r12);	if $z1 == 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$r14 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$i2 = virtualinvoke $r14.<java.lang.String: int lastIndexOf(java.lang.String,int)>(r4, i1);	goto [?= specialinvoke $r11.<freemarker.template.SimpleNumber: void <init>(int)>($i2)];	specialinvoke $r11.<freemarker.template.SimpleNumber: void <init>(int)>($i2);	return $r11
;block_num 4