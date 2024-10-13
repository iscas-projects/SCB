(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var2159 0)
(declare-sort var3095 0)
(declare-sort var2763 0)
(declare-sort var1470 0)
(declare-sort var3156 0)
(declare-sort var2546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2159_size/-959786421 (var2159) Int)
(declare-fun this$0/1263517016 (var3187) var3095)
(declare-fun checkMethodArgCount/509013054 (var2763 Int Int Int) void)
(declare-fun cast-from-var3095-to-var2763 (var3095) var2763)
(declare-fun getNumberMethodArg/-163734965 (var2763 var2159 Int) var1470)
(declare-fun intValue/207705611 (var1470) Int)
(declare-fun var3156-init () var3156)
(declare-fun var3095_access$600/1800272141 (var3095) Bool)
(declare-fun s/1263517016 (var3187) String)
(declare-fun var2546_rightPad/-1503239818 (String Int) String)
(declare-fun <init>/378607920 (var3156 String) void)
(declare-const null-var3187 var3187)
(declare-const null-var2159 var2159)
(declare-const var3186 var3187) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod 
(assert (not (= var3186 null-var3187)))
(declare-const var1310 var2159) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1310 null-var2159)))
(define-const var1172 Int (var2159_size/-959786421 var1310)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3875 var3095 (this$0/1263517016 var3186)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3095-to-var2763 var3875) var1172 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3875!1 var3095)
(declare-const var1172!1 Int)
(declare-const var3519 Int)
(declare-const var1029 Int)
(define-const var3445 var3095 (this$0/1263517016 var3186)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
(define-const var2968 var1470 (getNumberMethodArg/-163734965 (cast-from-var3095-to-var2763 var3445) var1310 0)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0) 
(assert true)
(define-const var3401 Int (intValue/207705611 var2968)) ; Statement: i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>() 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar 
(assert (<= var1172!1 1)) ; Cond: i0 <= 1 
(define-const var121 var3156 var3156-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var2136 var3095 (this$0/1263517016 var3186)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(define-const var828 Bool (var3095_access$600/1800272141 var2136)) ; Statement: $z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$padBI: boolean access$600(freemarker.core.BuiltInsForStringsBasic$padBI)>($r6) 
 ; Statement: if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s> 
(assert (= (ite var828 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1897 String (s/1263517016 var3186)) ; Statement: $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s> 
(define-const var3873 String (var2546_rightPad/-1503239818 var1897 var3401)) ; Statement: $r25 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String rightPad(java.lang.String,int)>($r7, i1) 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var121 var3873)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r25) 

(declare-const var121!1 var3156)
(declare-const var3873!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2159_size/-959786421=([java.util.List], int), this$0/1263517016=([freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$padBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3095-to-var2763=([freemarker.core.BuiltInsForStringsBasic$padBI], freemarker.core.BuiltIn), getNumberMethodArg/-163734965=([freemarker.core.BuiltIn, java.util.List, int], java.lang.Number), intValue/207705611=([java.lang.Number], int), var3156-init=([], freemarker.template.SimpleScalar), var3095_access$600/1800272141=([freemarker.core.BuiltInsForStringsBasic$padBI], boolean), s/1263517016=([freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod], java.lang.String), var2546_rightPad/-1503239818=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3187=freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod, var3186=r1, var2159=java.util.List, var1310=r0, var1172=i0, var3095=freemarker.core.BuiltInsForStringsBasic$padBI, var3875=$r2, var2763=freemarker.core.BuiltIn, var3519=1, var1029=2, var3445=$r3, var1470=java.lang.Number, var2968=$r4, var3401=i1, var3156=freemarker.template.SimpleScalar, var121=$r5, var2136=$r6, var828=$z0, var1897=$r7, var2546=freemarker.template.utility.StringUtil, var3873=$r25}
; {freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod=var3187, r1=var3186, java.util.List=var2159, r0=var1310, i0=var1172, freemarker.core.BuiltInsForStringsBasic$padBI=var3095, $r2=var3875, freemarker.core.BuiltIn=var2763, 1=var3519, 2=var1029, $r3=var3445, java.lang.Number=var1470, $r4=var2968, i1=var3401, freemarker.template.SimpleScalar=var3156, $r5=var121, $r6=var2136, $z0=var828, $r7=var1897, freemarker.template.utility.StringUtil=var2546, $r25=var3873}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0);	i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>();	if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar;	$r5 = new freemarker.template.SimpleScalar;	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$padBI: boolean access$600(freemarker.core.BuiltInsForStringsBasic$padBI)>($r6);	if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s>;	$r7 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: java.lang.String s>;	$r25 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String rightPad(java.lang.String,int)>($r7, i1);	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r25);	return $r5
;block_num 4