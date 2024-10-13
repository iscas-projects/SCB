(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var618 0)
(declare-sort var698 0)
(declare-sort var3980 0)
(declare-sort var2104 0)
(declare-sort var3820 0)
(declare-sort var3787 0)
(declare-sort var327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var698_size/-959786421 (var698) Int)
(declare-fun this$0/1263517016 (var618) var3980)
(declare-fun checkMethodArgCount/509013054 (var2104 Int Int Int) void)
(declare-fun cast-from-var3980-to-var2104 (var3980) var2104)
(declare-fun getNumberMethodArg/-163734965 (var2104 var698 Int) var3820)
(declare-fun intValue/207705611 (var3820) Int)
(declare-fun var3787-init () var3787)
(declare-fun var3980_access$600/1800272141 (var3980) Bool)
(declare-fun s/1263517016 (var618) String)
(declare-fun var327_leftPad/570099025 (String Int) String)
(declare-fun <init>/378607920 (var3787 String) void)
(declare-const null-var618 var618)
(declare-const null-var698 var698)
(declare-const var1771 var618) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod 
(assert (not (= var1771 null-var618)))
(declare-const var439 var698) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var439 null-var698)))
(define-const var1180 Int (var698_size/-959786421 var439)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3712 var3980 (this$0/1263517016 var1771)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3980-to-var2104 var3712) var1180 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3712!1 var3980)
(declare-const var1180!1 Int)
(declare-const var598 Int)
(declare-const var1847 Int)
(define-const var201 var3980 (this$0/1263517016 var1771)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
(define-const var3921 var3820 (getNumberMethodArg/-163734965 (cast-from-var3980-to-var2104 var201) var439 0)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0) 
(assert true)
(define-const var3783 Int (intValue/207705611 var3921)) ; Statement: i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>() 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar 
(assert (<= var1180!1 1)) ; Cond: i0 <= 1 
(define-const var2575 var3787 var3787-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var2380 var3980 (this$0/1263517016 var1771)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(define-const var3753 Bool (var3980_access$600/1800272141 var2380)) ; Statement: $z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$padBI: boolean access$600(freemarker.core.BuiltInsForStringsBasic$padBI)>($r6) 
 ; Statement: if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s> 
(assert (not (= (ite var3753 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var816 String (s/1263517016 var1771)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s> 
(define-const var1093 String (var327_leftPad/570099025 var816 var3783)) ; Statement: $r25 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String leftPad(java.lang.String,int)>($r8, i1) 
 ; Statement: goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var2575 var1093)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r25) 

(declare-const var2575!1 var3787)
(declare-const var1093!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var698_size/-959786421=([java.util.List], int), this$0/1263517016=([freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$padBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3980-to-var2104=([freemarker.core.BuiltInsForStringsBasic$padBI], freemarker.core.BuiltIn), getNumberMethodArg/-163734965=([freemarker.core.BuiltIn, java.util.List, int], java.lang.Number), intValue/207705611=([java.lang.Number], int), var3787-init=([], freemarker.template.SimpleScalar), var3980_access$600/1800272141=([freemarker.core.BuiltInsForStringsBasic$padBI], boolean), s/1263517016=([freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod], java.lang.String), var327_leftPad/570099025=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var618=freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod, var1771=r1, var698=java.util.List, var439=r0, var1180=i0, var3980=freemarker.core.BuiltInsForStringsBasic$padBI, var3712=$r2, var2104=freemarker.core.BuiltIn, var598=1, var1847=2, var201=$r3, var3820=java.lang.Number, var3921=$r4, var3783=i1, var3787=freemarker.template.SimpleScalar, var2575=$r5, var2380=$r6, var3753=$z0, var816=$r8, var327=freemarker.template.utility.StringUtil, var1093=$r25}
; {freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod=var618, r1=var1771, java.util.List=var698, r0=var439, i0=var1180, freemarker.core.BuiltInsForStringsBasic$padBI=var3980, $r2=var3712, freemarker.core.BuiltIn=var2104, 1=var598, 2=var1847, $r3=var201, java.lang.Number=var3820, $r4=var3921, i1=var3783, freemarker.template.SimpleScalar=var3787, $r5=var2575, $r6=var2380, $z0=var3753, $r8=var816, freemarker.template.utility.StringUtil=var327, $r25=var1093}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0);	i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>();	if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar;	$r5 = new freemarker.template.SimpleScalar;	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$padBI: boolean access$600(freemarker.core.BuiltInsForStringsBasic$padBI)>($r6);	if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s>;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s>;	$r25 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String leftPad(java.lang.String,int)>($r8, i1);	goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r25)];	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r25);	return $r5
;block_num 4