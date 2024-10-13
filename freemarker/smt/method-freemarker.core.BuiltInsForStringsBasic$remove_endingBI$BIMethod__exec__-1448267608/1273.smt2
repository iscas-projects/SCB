(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1658 0)
(declare-sort var387 0)
(declare-sort var809 0)
(declare-sort var3530 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1448437193 (var1658) var809)
(declare-fun checkMethodArgCount/-2126484030 (var3530 var387 Int) void)
(declare-fun cast-from-var809-to-var3530 (var809) var3530)
(declare-fun getStringMethodArg/-1432244773 (var3530 var387 Int) String)
(declare-fun var2005-init () var2005)
(declare-fun s/1448437193 (var1658) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var2005 String) void)
(declare-const null-var1658 var1658)
(declare-const null-var387 var387)
(declare-const var1669 var1658) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod 
(assert (not (= var1669 null-var1658)))
(declare-const var653 var387) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var653 null-var387)))
(define-const var3064 var809 (this$0/1448437193 var1669)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var809-to-var3530 var3064) var653 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var3064!1 var809)
(declare-const var653!1 var387)
(declare-const var2322 Int)
(define-const var3147 var809 (this$0/1448437193 var1669)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0> 
(assert true)
(define-const var818 String (getStringMethodArg/-1432244773 (cast-from-var809-to-var3530 var3147) var653!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var1925 var2005 var2005-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var872 String (s/1448437193 var1669)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var1834 Bool (endsWith/985337093 var872 var818)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto $r9 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s> 
(assert (not (= (ite var1834 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1033 String (s/1448437193 var1669)) ; Statement: $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s> 
(define-const var3838 String (s/1448437193 var1669)) ; Statement: $r7 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var569 Int (length/-134980193 var3838)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
(assert true)
(define-const var686 Int (length/-134980193 var818)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var636 Int (- var569 var686)) ; Statement: $i2 = $i1 - $i0 
(assert (and true (and (>= 0 0) (>= (str.len var1033) var636) (>= var636 0))))
(define-const var3000 String (substring/-1240304868 var1033 0 var636)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
 ; Statement: goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var1925 var3000)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1925!1 var2005)
(declare-const var3000!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1448437193=([freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$remove_endingBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var809-to-var3530=([freemarker.core.BuiltInsForStringsBasic$remove_endingBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2005-init=([], freemarker.template.SimpleScalar), s/1448437193=([freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1658=freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod, var1669=r0, var387=java.util.List, var653=r1, var809=freemarker.core.BuiltInsForStringsBasic$remove_endingBI, var3064=$r2, var3530=freemarker.core.BuiltIn, var2322=1, var3147=$r3, var818=r4, var2005=freemarker.template.SimpleScalar, var1925=$r5, var872=$r6, var1834=$z0, var1033=$r8, var3838=$r7, var569=$i1, var686=$i0, var636=$i2, var3000=$r9}
; {freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod=var1658, r0=var1669, java.util.List=var387, r1=var653, freemarker.core.BuiltInsForStringsBasic$remove_endingBI=var809, $r2=var3064, freemarker.core.BuiltIn=var3530, 1=var2322, $r3=var3147, r4=var818, freemarker.template.SimpleScalar=var2005, $r5=var1925, $r6=var872, $z0=var1834, $r8=var1033, $r7=var3838, $i1=var569, $i0=var686, $i2=var636, $r9=var3000}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = new freemarker.template.SimpleScalar;	$r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4);	if $z0 == 0 goto $r9 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s>;	$r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s>;	$r7 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s>;	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9)];	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r5
;block_num 3