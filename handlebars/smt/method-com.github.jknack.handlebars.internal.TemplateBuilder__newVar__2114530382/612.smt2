(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var286 0)
(declare-sort var2493 0)
(declare-sort var1357 0)
(declare-sort var494 0)
(declare-sort var237 0)
(declare-sort var3899 0)
(declare-sort var2225 0)
(declare-sort var549 0)
(declare-sort var1317 0)
(declare-sort var634 0)
(declare-sort var2191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2493_getText/-195748462 (var2493) String)
(declare-fun var494_size/-959786421 (var494) Int)
(declare-fun var2225_splitByWholeSeparator/-962760772 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var549_isCreatable/-629767182 (String) Bool)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun source/564043682 (var286) var1317)
(declare-fun var1317_filename/-833487352 (var1317) String)
(declare-fun var2493_getLine/1695299143 (var2493) Int)
(declare-fun var2493_getChannel/-305793188 (var2493) Int)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-fun var634-init () var634)
(declare-fun var2191-init () var2191)
(declare-fun var2493_getCharPositionInLine/-1512232701 (var2493) Int)
(declare-fun <init>/-1514878111 (var2191 String Int Int String String String) void)
(declare-fun <init>/-2128942556 (var634 var2191) void)
(declare-const null-var286 var286)
(declare-const null-var2493 var2493)
(declare-const null-var1357 var1357)
(declare-const null-var494 var494)
(declare-const null-var237 var237)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3118 var286) ; Statement: r2 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var3118 null-var286)))
(declare-const var2801 var2493) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token 
(assert (not (= var2801 null-var2493)))
(declare-const var1376 var1357) ; Statement: r4 := @parameter1: com.github.jknack.handlebars.TagType 
(assert (not (= var1376 null-var1357)))
(declare-const var1692 var494) ; Statement: r1 := @parameter2: java.util.List 
(assert (not (= var1692 null-var494)))
(declare-const var2921 var237) ; Statement: r5 := @parameter3: java.util.Map 
(assert (not (= var2921 null-var237)))
(declare-const var3881 String) ; Statement: r7 := @parameter4: java.lang.String 
(assert (not (= var3881 null-String)))
(declare-const var2325 String) ; Statement: r8 := @parameter5: java.lang.String 
(assert (not (= var2325 null-String)))
(declare-const var1326 Bool) ; Statement: z1 := @parameter6: boolean 
(assert (not (= var1326 null-Bool)))
(define-const var2854 String (var2493_getText/-195748462 var2801)) ; Statement: r38 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var3261 Int (var494_size/-959786421 var1692)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
 ; Statement: if $i0 > 0 goto $z11 = 1 
(assert (> var3261 0)) ; Cond: $i0 > 0 
(define-const var2330 Bool (ite (= 1 1) true false)) ; Statement: $z11 = 1 
(define-const var3592 Bool (ite (= 1 1) true false)) ; Statement: $z10 = 1 
 ; Statement: goto [?= z0 = $z10] 
(assert true) ; Non Conditional
(define-const var3390 Bool var3592) ; Statement: z0 = $z10 
 ; Statement: if $z11 != 0 goto $r40 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] splitByWholeSeparator(java.lang.String,java.lang.String)>(r38, "./") 
(assert (not (= (ite var2330 1 0) 0))) ; Cond: $z11 != 0 
(define-const var99 (Array Int String) (var2225_splitByWholeSeparator/-962760772 var2854 "./")) ; Statement: $r40 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] splitByWholeSeparator(java.lang.String,java.lang.String)>(r38, "./") 
(define-const var2608 Int (getLength-Arr-String-1 var99)) ; Statement: $i17 = lengthof $r40 
 ; Statement: if $i17 <= 0 goto (branch) 
(assert (not (<= var2608 0))) ; Negate: Cond: $i17 <= 0  
(define-const var1788 Int (getLength-Arr-String-1 var99)) ; Statement: $i8 = lengthof $r40 
(define-const var782 Int (- var1788 1)) ; Statement: $i9 = $i8 - 1 
(define-const var1260 String (select var99 var782)) ; Statement: $r21 = $r40[$i9] 
(define-const var280 Bool (var549_isCreatable/-629767182 var1260)) ; Statement: $z2 = staticinvoke <org.apache.commons.lang3.math.NumberUtils: boolean isCreatable(java.lang.String)>($r21) 
 ; Statement: if $z2 == 0 goto (branch) 
(assert (not (= (ite var280 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var1541 Bool (endsWith/985337093 var2854 ".")) ; Statement: $z3 = virtualinvoke r38.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z3 != 0 goto (branch) 
(assert (not (not (= (ite var1541 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var1116 String (str.++ "found: \u0001, expecting: \u0001." var2854 var2854)) ; Statement: r41 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r38, r38) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("found: \u0001, expecting: \u0001.") 
(define-const var1059 var1317 (source/564043682 var3118)) ; Statement: $r22 = r2.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var1065 String (var1317_filename/-833487352 var1059)) ; Statement: $r23 = interfaceinvoke $r22.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(define-const var2378 Int (var2493_getLine/1695299143 var2801)) ; Statement: $i11 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var1652 Int (var2493_getChannel/-305793188 var2801)) ; Statement: $i10 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getChannel()>() 
(define-const var1305 String (str.++ "\u0001:\u0001:\u0001: \u0001\n" var1065 (cast-from-Int-to-String var2378) (cast-from-Int-to-String var1652) var1116)) ; Statement: r24 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,int,java.lang.String)>($r23, $i11, $i10, r41) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001:\u0001:\u0001: \u0001\n") 
(define-const var561 var634 var634-init) ; Statement: $r47 = new com.github.jknack.handlebars.HandlebarsException 
(define-const var2089 var2191 var2191-init) ; Statement: $r46 = new com.github.jknack.handlebars.HandlebarsError 
(define-const var2883 var1317 (source/564043682 var3118)) ; Statement: $r27 = r2.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var1264 String (var1317_filename/-833487352 var2883)) ; Statement: $r28 = interfaceinvoke $r27.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(define-const var3582 Int (var2493_getLine/1695299143 var2801)) ; Statement: $i13 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var3472 Int (var2493_getCharPositionInLine/-1512232701 var2801)) ; Statement: $i12 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
;(assert (<init>/-1514878111 var2089 var1264 var3582 var3472 var1116 var2854 var1305)) ; Statement: specialinvoke $r46.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r28, $i13, $i12, r41, r38, r24) 

(declare-const var2089!1 var2191)
(declare-const var1264!1 String)
(declare-const var3582!1 Int)
(declare-const var3472!1 Int)
(declare-const var1116!1 String)
(declare-const var2854!1 String)
(declare-const var1305!1 String)
(assert true)
;(assert (<init>/-2128942556 var561 var2089!1)) ; Statement: specialinvoke $r47.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r46) 

(declare-const var561!1 var634)
(declare-const var2089!2 var2191)
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {var2493_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), var494_size/-959786421=([java.util.List], int), var2225_splitByWholeSeparator/-962760772=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var549_isCreatable/-629767182=([java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var1317_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), var2493_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var2493_getChannel/-305793188=([com.github.jknack.handlebars.internal.antlr.Token], int), cast-from-Int-to-String=([int], java.lang.String), var634-init=([], com.github.jknack.handlebars.HandlebarsException), var2191-init=([], com.github.jknack.handlebars.HandlebarsError), var2493_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), <init>/-1514878111=([com.github.jknack.handlebars.HandlebarsError, java.lang.String, int, int, java.lang.String, java.lang.String, java.lang.String], void), <init>/-2128942556=([com.github.jknack.handlebars.HandlebarsException, com.github.jknack.handlebars.HandlebarsError], void)}
; {var286=com.github.jknack.handlebars.internal.TemplateBuilder, var3118=r2, var2493=com.github.jknack.handlebars.internal.antlr.Token, var2801=r0, var1357=com.github.jknack.handlebars.TagType, var1376=r4, var494=java.util.List, var1692=r1, var237=java.util.Map, var2921=r5, var3881=r7, var3899=null_type, var2325=r8, var1326=z1, var2854=r38, var3261=$i0, var2330=$z11, var3592=$z10, var3390=z0, var2225=org.apache.commons.lang3.StringUtils, var99=$r40, var2608=$i17, var1788=$i8, var782=$i9, var1260=$r21, var549=org.apache.commons.lang3.math.NumberUtils, var280=$z2, var1541=$z3, var1116=r41, var1317=com.github.jknack.handlebars.io.TemplateSource, var1059=$r22, var1065=$r23, var2378=$i11, var1652=$i10, var1305=r24, var634=com.github.jknack.handlebars.HandlebarsException, var561=$r47, var2191=com.github.jknack.handlebars.HandlebarsError, var2089=$r46, var2883=$r27, var1264=$r28, var3582=$i13, var3472=$i12}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var286, r2=var3118, com.github.jknack.handlebars.internal.antlr.Token=var2493, r0=var2801, com.github.jknack.handlebars.TagType=var1357, r4=var1376, java.util.List=var494, r1=var1692, java.util.Map=var237, r5=var2921, r7=var3881, null_type=var3899, r8=var2325, z1=var1326, r38=var2854, $i0=var3261, $z11=var2330, $z10=var3592, z0=var3390, org.apache.commons.lang3.StringUtils=var2225, $r40=var99, $i17=var2608, $i8=var1788, $i9=var782, $r21=var1260, org.apache.commons.lang3.math.NumberUtils=var549, $z2=var280, $z3=var1541, r41=var1116, com.github.jknack.handlebars.io.TemplateSource=var1317, $r22=var1059, $r23=var1065, $i11=var2378, $i10=var1652, r24=var1305, com.github.jknack.handlebars.HandlebarsException=var634, $r47=var561, com.github.jknack.handlebars.HandlebarsError=var2191, $r46=var2089, $r27=var2883, $r28=var1264, $i13=var3582, $i12=var3472}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token;	r4 := @parameter1: com.github.jknack.handlebars.TagType;	r1 := @parameter2: java.util.List;	r5 := @parameter3: java.util.Map;	r7 := @parameter4: java.lang.String;	r8 := @parameter5: java.lang.String;	z1 := @parameter6: boolean;	r38 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	if $i0 > 0 goto $z11 = 1;	$z11 = 1;	$z10 = 1;	goto [?= z0 = $z10];	z0 = $z10;	if $z11 != 0 goto $r40 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] splitByWholeSeparator(java.lang.String,java.lang.String)>(r38, "./");	$r40 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] splitByWholeSeparator(java.lang.String,java.lang.String)>(r38, "./");	$i17 = lengthof $r40;	if $i17 <= 0 goto (branch);	$i8 = lengthof $r40;	$i9 = $i8 - 1;	$r21 = $r40[$i9];	$z2 = staticinvoke <org.apache.commons.lang3.math.NumberUtils: boolean isCreatable(java.lang.String)>($r21);	if $z2 == 0 goto (branch);	$z3 = virtualinvoke r38.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z3 != 0 goto (branch);	r41 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r38, r38) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("found: \u0001, expecting: \u0001.");	$r22 = r2.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r23 = interfaceinvoke $r22.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	$i11 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i10 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getChannel()>();	r24 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,int,java.lang.String)>($r23, $i11, $i10, r41) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001:\u0001:\u0001: \u0001\n");	$r47 = new com.github.jknack.handlebars.HandlebarsException;	$r46 = new com.github.jknack.handlebars.HandlebarsError;	$r27 = r2.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r28 = interfaceinvoke $r27.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	$i13 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i12 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	specialinvoke $r46.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r28, $i13, $i12, r41, r38, r24);	specialinvoke $r47.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r46);	throw $r47
;block_num 7