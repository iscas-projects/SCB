(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var225 0)
(declare-sort var3110 0)
(declare-sort var2413 0)
(declare-sort var2341 0)
(declare-sort var3328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-2086011988 (var225) var2413)
(declare-fun checkMethodArgCount/-207621435 (var2341 var3110 Int Int) void)
(declare-fun cast-from-var2413-to-var2341 (var2413) var2341)
(declare-fun getStringMethodArg/-1432244773 (var2341 var3110 Int) String)
(declare-fun var3110_size/-959786421 (var3110) Int)
(declare-fun s/-2086011988 (var225) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3328-init () var3328)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/378607920 (var3328 String) void)
(declare-const null-var225 var225)
(declare-const null-var3110 var3110)
(declare-const var3425 var225) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod 
(assert (not (= var3425 null-var225)))
(declare-const var1494 var3110) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1494 null-var3110)))
(define-const var1911 var2413 (this$0/-2086011988 var3425)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-207621435 (cast-from-var2413-to-var2341 var1911) var1494 1 3)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3) 

(declare-const var1911!1 var2413)
(declare-const var1494!1 var3110)
(declare-const var2838 Int)
(declare-const var3559 Int)
(define-const var3788 var2413 (this$0/-2086011988 var3425)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0> 
(assert true)
(define-const var1576 String (getStringMethodArg/-1432244773 (cast-from-var2413-to-var2341 var3788) var1494!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var218 Int (var3110_size/-959786421 var1494!1)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 1 goto $r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s> 
(assert (<= var218 1)) ; Cond: $i0 <= 1 
(define-const var1514 String (s/-2086011988 var3425)) ; Statement: $r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var1957 Bool (startsWith/-1785782452 var1514 var1576)) ; Statement: z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
(define-const var1423 String var1576) ; Statement: r23 = r4 
(assert true) ; Non Conditional
(define-const var3724 var3328 var3328-init) ; Statement: $r6 = new freemarker.template.SimpleScalar 
 ; Statement: if z0 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (= (ite var1957 1 0) 0)) ; Cond: z0 == 0 
(define-const var672 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var672)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var672!1 String)
(assert (= var672!1 ""))
(assert true)
(define-const var3989 String (append/672562846 var672!1 var1423)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23) 
(declare-const var672!2 String)
(assert (= var672!2 (str.++ var672!1 var1423)))
(define-const var1804 String (s/-2086011988 var3425)) ; Statement: $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var2569 String (append/672562846 var3989 var1804)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3989!1 String)
(assert (= var3989!1 (str.++ var3989 var1804)))
(assert true)
(define-const var1522 String (toString/-2075883882 var2569)) ; Statement: $r24 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var3724 var1522)) ; Statement: specialinvoke $r6.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r24) 

(declare-const var3724!1 var3328)
(declare-const var1522!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-2086011988=([freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI), checkMethodArgCount/-207621435=([freemarker.core.BuiltIn, java.util.List, int, int], void), cast-from-var2413-to-var2341=([freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3110_size/-959786421=([java.util.List], int), s/-2086011988=([freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3328-init=([], freemarker.template.SimpleScalar), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var225=freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod, var3425=r0, var3110=java.util.List, var1494=r1, var2413=freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI, var1911=$r2, var2341=freemarker.core.BuiltIn, var2838=1, var3559=3, var3788=$r3, var1576=r4, var218=$i0, var1514=$r5, var1957=z0, var1423=r23, var3328=freemarker.template.SimpleScalar, var3724=$r6, var672=$r7, var3989=$r9, var1804=$r8, var2569=$r10, var1522=$r24}
; {freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod=var225, r0=var3425, java.util.List=var3110, r1=var1494, freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI=var2413, $r2=var1911, freemarker.core.BuiltIn=var2341, 1=var2838, 3=var3559, $r3=var3788, r4=var1576, $i0=var218, $r5=var1514, z0=var1957, r23=var1423, freemarker.template.SimpleScalar=var3328, $r6=var3724, $r7=var672, $r9=var3989, $r8=var1804, $r10=var2569, $r24=var1522}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	if $i0 <= 1 goto $r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s>;	$r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s>;	z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	r23 = r4;	$r6 = new freemarker.template.SimpleScalar;	if z0 == 0 goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23);	$r8 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r24 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r24);	return $r6
;block_num 5