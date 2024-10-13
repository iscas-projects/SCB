(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2376 0)
(declare-sort var2774 0)
(declare-sort var3681 0)
(declare-sort var3607 0)
(declare-sort var2377 0)
(declare-sort var1629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2774_size/-959786421 (var2774) Int)
(declare-fun this$0/974505115 (var2376) var3681)
(declare-fun checkMethodArgCount/509013054 (var3607 Int Int Int) void)
(declare-fun cast-from-var3681-to-var3607 (var3681) var3607)
(declare-fun getStringMethodArg/-1432244773 (var3607 var2774 Int) String)
(declare-fun getNumberMethodArg/-163734965 (var3607 var2774 Int) var2377)
(declare-fun intValue/207705611 (var2377) Int)
(declare-fun var1629-init () var1629)
(declare-fun var3681_access$400/-1326169297 (var3681) Bool)
(declare-fun s/974505115 (var2376) String)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-fun <init>/-1657349039 (var1629 Int) void)
(declare-const null-var2376 var2376)
(declare-const null-var2774 var2774)
(declare-const var2878 var2376) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod 
(assert (not (= var2878 null-var2376)))
(declare-const var2474 var2774) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2474 null-var2774)))
(define-const var2278 Int (var2774_size/-959786421 var2474)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var671 var3681 (this$0/974505115 var2878)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3681-to-var3607 var671) var2278 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var671!1 var3681)
(declare-const var2278!1 Int)
(declare-const var15 Int)
(declare-const var2538 Int)
(define-const var1032 var3681 (this$0/974505115 var2878)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
(define-const var2886 String (getStringMethodArg/-1432244773 (cast-from-var3681-to-var3607 var1032) var2474 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber 
(assert (not (<= var2278!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var3940 var3681 (this$0/974505115 var2878)) ; Statement: $r9 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
(define-const var3583 var2377 (getNumberMethodArg/-163734965 (cast-from-var3681-to-var3607 var3940) var2474 1)) ; Statement: $r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 1) 
(assert true)
(define-const var2988 Int (intValue/207705611 var3583)) ; Statement: i1 = virtualinvoke $r10.<java.lang.Number: int intValue()>() 
(define-const var3787 var1629 var1629-init) ; Statement: $r11 = new freemarker.template.SimpleNumber 
(define-const var50 var3681 (this$0/974505115 var2878)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(define-const var3462 Bool (var3681_access$400/-1326169297 var50)) ; Statement: $z1 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r12) 
 ; Statement: if $z1 == 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert (= (ite var3462 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2141 String (s/974505115 var2878)) ; Statement: $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var3566 Int (indexOf/1795197748 var2141 var2886 var2988)) ; Statement: $i2 = virtualinvoke $r13.<java.lang.String: int indexOf(java.lang.String,int)>(r4, i1) 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1657349039 var3787 var3566)) ; Statement: specialinvoke $r11.<freemarker.template.SimpleNumber: void <init>(int)>($i2) 

(declare-const var3787!1 var1629)
(declare-const var3566!1 Int)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2774_size/-959786421=([java.util.List], int), this$0/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$index_ofBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3681-to-var3607=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), getNumberMethodArg/-163734965=([freemarker.core.BuiltIn, java.util.List, int], java.lang.Number), intValue/207705611=([java.lang.Number], int), var1629-init=([], freemarker.template.SimpleNumber), var3681_access$400/-1326169297=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], boolean), s/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), <init>/-1657349039=([freemarker.template.SimpleNumber, int], void)}
; {var2376=freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod, var2878=r1, var2774=java.util.List, var2474=r0, var2278=i0, var3681=freemarker.core.BuiltInsForStringsBasic$index_ofBI, var671=$r2, var3607=freemarker.core.BuiltIn, var15=1, var2538=2, var1032=$r3, var2886=r4, var3940=$r9, var2377=java.lang.Number, var3583=$r10, var2988=i1, var1629=freemarker.template.SimpleNumber, var3787=$r11, var50=$r12, var3462=$z1, var2141=$r13, var3566=$i2}
; {freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod=var2376, r1=var2878, java.util.List=var2774, r0=var2474, i0=var2278, freemarker.core.BuiltInsForStringsBasic$index_ofBI=var3681, $r2=var671, freemarker.core.BuiltIn=var3607, 1=var15, 2=var2538, $r3=var1032, r4=var2886, $r9=var3940, java.lang.Number=var2377, $r10=var3583, i1=var2988, freemarker.template.SimpleNumber=var1629, $r11=var3787, $r12=var50, $z1=var3462, $r13=var2141, $i2=var3566}
;seq <java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber;	$r9 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	$r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 1);	i1 = virtualinvoke $r10.<java.lang.Number: int intValue()>();	$r11 = new freemarker.template.SimpleNumber;	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	$z1 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r12);	if $z1 == 0 goto $r13 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$r13 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$i2 = virtualinvoke $r13.<java.lang.String: int indexOf(java.lang.String,int)>(r4, i1);	specialinvoke $r11.<freemarker.template.SimpleNumber: void <init>(int)>($i2);	return $r11
;block_num 4