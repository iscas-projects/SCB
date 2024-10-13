(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var305 0)
(declare-sort var3202 0)
(declare-sort var1503 0)
(declare-sort var2623 0)
(declare-sort var2804 0)
(declare-sort var910 0)
(declare-sort var402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLhs/-759107248 (var2623) String)
(declare-fun cast-from-var3202-to-var2623 (var3202) var2623)
(declare-fun getReturnTypeTokens/-2045221194 (var2623) var2804)
(declare-fun var2804_size/-959786421 (var2804) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getParameterListTokens/-1968828001 (var2623) var2804)
(declare-fun codeGenerator/-1894308792 (var305) var910)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun generateMethodDefHeader/-6362932 (var910 String String String String) void)
(declare-const null-var305 var305)
(declare-const null-var3202 var3202)
(declare-const null-var1503 var1503)
(declare-const var402-cu_name String)
(declare-const var1019 var305) ; Statement: r4 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1019 null-var305)))
(declare-const var3707 var3202) ; Statement: r1 := @parameter0: org.javacc.parser.CppCodeProduction 
(assert (not (= var3707 null-var3202)))
(define-const var2098 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2098)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2098!1 String)
(define-const var1227 var1503 null-var1503) ; Statement: r30 = null 
(assert true)
;(assert (getLhs/-759107248 (cast-from-var3202-to-var2623 var3707))) ; Statement: virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.lang.String getLhs()>() 

(declare-const var3707!1 var3202)
(define-const var2699 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3594 var2804 (getReturnTypeTokens/-2045221194 (cast-from-var3202-to-var2623 var3707!1))) ; Statement: $r2 = virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.util.List getReturnTypeTokens()>() 
(define-const var1315 Int (var2804_size/-959786421 var3594)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var2699 var1315)) ; Cond: i4 >= $i0 
 ; Statement: if r30 == null goto $r25 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (= var1227 null-var1503)) ; Cond: r30 == null 
(assert true)
(define-const var3156 String (toString/-222306083 var2098!1)) ; Statement: $r25 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (setLength/163251007 var2098!1 0)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2098!2 String)
(declare-const var3792 Int)
(assert true)
;(assert (append/1560614132 var2098!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(") 
(declare-const var2098!3 String)
(assert (str.prefixof var2098!2 var2098!3))
(assert true)
(define-const var2449 var2804 (getParameterListTokens/-1968828001 (cast-from-var3202-to-var2623 var3707!1))) ; Statement: $r3 = virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.util.List getParameterListTokens()>() 
(define-const var3852 Int (var2804_size/-959786421 var2449)) ; Statement: $i1 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i1 == 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")") 
(assert (= var3852 0)) ; Cond: $i1 == 0 
(assert true)
;(assert (append/1560614132 var2098!3 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")") 
(declare-const var2098!4 String)
(assert (str.prefixof var2098!3 var2098!4))
(assert true)
(define-const var1994 String (toString/-222306083 var2098!4)) ; Statement: $r20 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var256 var910 (codeGenerator/-1894308792 var1019)) ; Statement: $r6 = r4.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var518 String var402-cu_name) ; Statement: $r7 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name> 
(define-const var2113 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2113)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2113!1 String)
(assert (= var2113!1 ""))
(assert true)
(define-const var1605 String (getLhs/-759107248 (cast-from-var3202-to-var2623 var3707!1))) ; Statement: $r8 = virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.lang.String getLhs()>() 
(assert true)
(define-const var1507 String (append/672562846 var2113!1 var1605)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2113!2 String)
(assert (= var2113!2 (str.++ var2113!1 var1605)))
(assert true)
(define-const var3380 String (append/672562846 var1507 var1994)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1507!1 String)
(assert (= var1507!1 (str.++ var1507 var1994)))
(assert true)
(define-const var3371 String (toString/-2075883882 var3380)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1949 String (toString/-222306083 var2098!4)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (generateMethodDefHeader/-6362932 var256 var3156 var518 var3371 var1949)) ; Statement: virtualinvoke $r6.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r25, $r7, $r12, $r11) 

(declare-const var256!1 var910)
(declare-const var3156!1 String)
(declare-const var518!1 String)
(declare-const var3371!1 String)
(declare-const var1949!1 String)
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLhs/-759107248=([org.javacc.parser.NormalProduction], java.lang.String), cast-from-var3202-to-var2623=([org.javacc.parser.CppCodeProduction], org.javacc.parser.NormalProduction), getReturnTypeTokens/-2045221194=([org.javacc.parser.NormalProduction], java.util.List), var2804_size/-959786421=([java.util.List], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getParameterListTokens/-1968828001=([org.javacc.parser.NormalProduction], java.util.List), codeGenerator/-1894308792=([org.javacc.parser.ParseEngine], org.javacc.parser.CodeGenerator), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), generateMethodDefHeader/-6362932=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String, java.lang.String], void)}
; {var305=org.javacc.parser.ParseEngine, var1019=r4, var3202=org.javacc.parser.CppCodeProduction, var3707=r1, var2098=$r0, var1503=org.javacc.parser.Token, var1227=r30, var2623=org.javacc.parser.NormalProduction, var2699=i4, var2804=java.util.List, var3594=$r2, var1315=$i0, var3156=$r25, var3792=0, var2449=$r3, var3852=$i1, var1994=$r20, var910=org.javacc.parser.CodeGenerator, var256=$r6, var402=org.javacc.parser.JavaCCGlobals, var518=$r7, var2113=$r5, var1605=$r8, var1507=$r9, var3380=$r10, var3371=$r12, var1949=$r11}
; {org.javacc.parser.ParseEngine=var305, r4=var1019, org.javacc.parser.CppCodeProduction=var3202, r1=var3707, $r0=var2098, org.javacc.parser.Token=var1503, r30=var1227, org.javacc.parser.NormalProduction=var2623, i4=var2699, java.util.List=var2804, $r2=var3594, $i0=var1315, $r25=var3156, 0=var3792, $r3=var2449, $i1=var3852, $r20=var1994, org.javacc.parser.CodeGenerator=var910, $r6=var256, org.javacc.parser.JavaCCGlobals=var402, $r7=var518, $r5=var2113, $r8=var1605, $r9=var1507, $r10=var3380, $r12=var3371, $r11=var1949}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 3,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.javacc.parser.ParseEngine;	r1 := @parameter0: org.javacc.parser.CppCodeProduction;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	r30 = null;	virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.lang.String getLhs()>();	i4 = 0;	$r2 = virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.util.List getReturnTypeTokens()>();	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i4 >= $i0 goto (branch);	if r30 == null goto $r25 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r25 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: void setLength(int)>(0);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(");	$r3 = virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.util.List getParameterListTokens()>();	$i1 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i1 == 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")");	$r20 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r6 = r4.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r7 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke r1.<org.javacc.parser.CppCodeProduction: java.lang.String getLhs()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r6.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r25, $r7, $r12, $r11);	return ""
;block_num 5