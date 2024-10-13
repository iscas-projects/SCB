(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2349 0)
(declare-sort var1977 0)
(declare-sort var2766 0)
(declare-sort var3525 0)
(declare-sort var3185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-931007725 (var2349) var2766)
(declare-fun checkMethodArgCount/-2126484030 (var3525 var1977 Int) void)
(declare-fun cast-from-var2766-to-var3525 (var2766) var3525)
(declare-fun getStringMethodArg/-1432244773 (var3525 var1977 Int) String)
(declare-fun var3185-init () var3185)
(declare-fun s/-931007725 (var2349) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun <init>/378607920 (var3185 String) void)
(declare-const null-var2349 var2349)
(declare-const null-var1977 var1977)
(declare-const var2334 var2349) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod 
(assert (not (= var2334 null-var2349)))
(declare-const var3590 var1977) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var3590 null-var1977)))
(define-const var1428 var2766 (this$0/-931007725 var2334)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var2766-to-var3525 var1428) var3590 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var1428!1 var2766)
(declare-const var3590!1 var1977)
(declare-const var3961 Int)
(define-const var2097 var2766 (this$0/-931007725 var2334)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0> 
(assert true)
(define-const var2283 String (getStringMethodArg/-1432244773 (cast-from-var2766-to-var3525 var2097) var3590!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var2737 var3185 var3185-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var968 String (s/-931007725 var2334)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var1881 Bool (endsWith/985337093 var968 var2283)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (not (= (ite var1881 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1741 String (s/-931007725 var2334)) ; Statement: $r11 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s> 
 ; Statement: goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var2737 var1741)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r11) 

(declare-const var2737!1 var3185)
(declare-const var1741!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-931007725=([freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var2766-to-var3525=([freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3185-init=([], freemarker.template.SimpleScalar), s/-931007725=([freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2349=freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod, var2334=r0, var1977=java.util.List, var3590=r1, var2766=freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI, var1428=$r2, var3525=freemarker.core.BuiltIn, var3961=1, var2097=$r3, var2283=r4, var3185=freemarker.template.SimpleScalar, var2737=$r5, var968=$r6, var1881=$z0, var1741=$r11}
; {freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod=var2349, r0=var2334, java.util.List=var1977, r1=var3590, freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI=var2766, $r2=var1428, freemarker.core.BuiltIn=var3525, 1=var3961, $r3=var2097, r4=var2283, freemarker.template.SimpleScalar=var3185, $r5=var2737, $r6=var968, $z0=var1881, $r11=var1741}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = new freemarker.template.SimpleScalar;	$r6 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4);	if $z0 == 0 goto $r7 = new java.lang.StringBuilder;	$r11 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s>;	goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r11)];	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r11);	return $r5
;block_num 3