(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1915 0)
(declare-sort var2429 0)
(declare-sort var2625 0)
(declare-sort var242 0)
(declare-sort var1051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-931007725 (var1915) var2625)
(declare-fun checkMethodArgCount/-2126484030 (var242 var2429 Int) void)
(declare-fun cast-from-var2625-to-var242 (var2625) var242)
(declare-fun getStringMethodArg/-1432244773 (var242 var2429 Int) String)
(declare-fun var1051-init () var1051)
(declare-fun s/-931007725 (var1915) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/378607920 (var1051 String) void)
(declare-const null-var1915 var1915)
(declare-const null-var2429 var2429)
(declare-const var460 var1915) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod 
(assert (not (= var460 null-var1915)))
(declare-const var61 var2429) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var61 null-var2429)))
(define-const var3377 var2625 (this$0/-931007725 var460)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var2625-to-var242 var3377) var61 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var3377!1 var2625)
(declare-const var61!1 var2429)
(declare-const var262 Int)
(define-const var3546 var2625 (this$0/-931007725 var460)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0> 
(assert true)
(define-const var882 String (getStringMethodArg/-1432244773 (cast-from-var2625-to-var242 var3546) var61!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var1436 var1051 var1051-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var990 String (s/-931007725 var460)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var1733 Bool (endsWith/985337093 var990 var882)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (= (ite var1733 1 0) 0)) ; Cond: $z0 == 0 
(define-const var104 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var104)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var104!1 String)
(assert (= var104!1 ""))
(define-const var694 String (s/-931007725 var460)) ; Statement: $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var1727 String (append/672562846 var104!1 var694)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var104!2 String)
(assert (= var104!2 (str.++ var104!1 var694)))
(assert true)
(define-const var2813 String (append/672562846 var1727 var882)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1727!1 String)
(assert (= var1727!1 (str.++ var1727 var882)))
(assert true)
(define-const var1544 String (toString/-2075883882 var2813)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var1436 var1544)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r11) 

(declare-const var1436!1 var1051)
(declare-const var1544!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-931007725=([freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var2625-to-var242=([freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var1051-init=([], freemarker.template.SimpleScalar), s/-931007725=([freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1915=freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod, var460=r0, var2429=java.util.List, var61=r1, var2625=freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI, var3377=$r2, var242=freemarker.core.BuiltIn, var262=1, var3546=$r3, var882=r4, var1051=freemarker.template.SimpleScalar, var1436=$r5, var990=$r6, var1733=$z0, var104=$r7, var694=$r8, var1727=$r9, var2813=$r10, var1544=$r11}
; {freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod=var1915, r0=var460, java.util.List=var2429, r1=var61, freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI=var2625, $r2=var3377, freemarker.core.BuiltIn=var242, 1=var262, $r3=var3546, r4=var882, freemarker.template.SimpleScalar=var1051, $r5=var1436, $r6=var990, $z0=var1733, $r7=var104, $r8=var694, $r9=var1727, $r10=var2813, $r11=var1544}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = new freemarker.template.SimpleScalar;	$r6 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4);	if $z0 == 0 goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod: java.lang.String s>;	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r11);	return $r5
;block_num 3