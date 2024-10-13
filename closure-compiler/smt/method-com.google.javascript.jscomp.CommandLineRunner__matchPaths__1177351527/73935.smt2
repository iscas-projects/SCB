(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var208 0)
(declare-sort var1025 0)
(declare-sort var216 0)
(declare-sort var1344 0)
(declare-sort var675 0)
(declare-sort var479 0)
(declare-sort var1568 0)
(declare-sort var2106 0)
(declare-sort var2665 0)
(declare-sort var3040 0)
(declare-sort var3173 0)
(declare-sort var2890 0)
(declare-sort var2156 0)
(declare-sort var3239 0)
(declare-sort var1583 0)
(declare-sort var333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var675_getDefault/273610319 () var1344)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var1568_on/508924409 (String) var1568)
(declare-fun splitToList/739613109 (var1568 String) var2106)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2106_size/-959786421 (var2106) Int)
(declare-fun getPathMatcher/-450340845 (var1344 String) var2665)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getPath/-148735200 (var1344 String (Array Int String)) var3040)
(declare-fun var2890_of/-1269712239 (var2156) var2890)
(declare-fun cast-from-var3173-to-var2156 (var3173) var2156)
(declare-fun var3239-init () var3239)
(declare-fun <init>/-997981811 (var3239 var2665 Bool var216 var1025) void)
(declare-fun var1583_walkFileTree/-2013667260 (var3040 var216 Int var333) var3040)
(declare-fun cast-from-var2890-to-var216 (var2890) var216)
(declare-fun cast-from-var3239-to-var333 (var3239) var333)
(declare-const null-String String)
(declare-const null-var1025 var1025)
(declare-const null-var216 var216)
(declare-const var479-separator String)
(declare-const var3173-FOLLOW_LINKS var3173)
(declare-const var3853 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var3853 null-String)))
(declare-const var3031 var1025) ; Statement: r6 := @parameter1: java.util.Map 
(assert (not (= var3031 null-var1025)))
(declare-const var3291 var216) ; Statement: r5 := @parameter2: java.util.Set 
(assert (not (= var3291 null-var216)))
(define-const var1858 var1344 var675_getDefault/273610319) ; Statement: r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>() 
(assert true)
(define-const var3135 Int (indexOf/-1037706067 var3853 33)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33) 
 ; Statement: if $i0 != 0 goto $z5 = 0 
(assert (not (not (= var3135 0)))) ; Negate: Cond: $i0 != 0  
(define-const var1251 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
(define-const var1211 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z0 = $z5] 
(assert true) ; Non Conditional
(define-const var58 Bool var1251) ; Statement: z0 = $z5 
 ; Statement: if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator> 
(assert (= (ite var1211 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3044 String var479-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var3228 Bool (= var3044 "\u005c")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\") 
 ; Statement: if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator> 
(assert (not (= (ite var3228 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3372 String "\u005c\u005c") ; Statement: $r15 = "\\\\" 
 ; Statement: goto [?= r2 = $r15] 
(assert true) ; Non Conditional
(define-const var3390 String var3372) ; Statement: r2 = $r15 
(define-const var3917 String var479-separator) ; Statement: $r3 = <java.io.File: java.lang.String separator> 
(define-const var3983 var1568 (var1568_on/508924409 var3917)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3) 
(assert true)
(define-const var1241 var2106 (splitToList/739613109 var3983 (cast-from-String-to-String var3853))) ; Statement: $r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14) 
(define-const var3265 String ".") ; Statement: r16 = "." 
(define-const var407 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var116 Int (var2106_size/-959786421 var1241)) ; Statement: $i3 = interfaceinvoke $r13.<java.util.List: int size()>() 
 ; Statement: if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert (>= var407 var116)) ; Cond: i2 >= $i3 
(define-const var2864 String (str.++ "glob:\u0001\u0001\u0001" var3265 var3390 var3853)) ; Statement: $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert true)
(define-const var3848 var2665 (getPathMatcher/-450340845 var1858 var2864)) ; Statement: $r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17) 
(define-const var1515 (Array Int String) arr-String-init) ; Statement: $r19 = newarray (java.lang.String)[0] 
(assert true)
(define-const var2066 var3040 (getPath/-148735200 var1858 var3265 var1515)) ; Statement: $r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19) 
(define-const var3544 var3173 var3173-FOLLOW_LINKS) ; Statement: $r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS> 
(define-const var1378 var2890 (var2890_of/-1269712239 (cast-from-var3173-to-var2156 var3544))) ; Statement: $r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21) 
(define-const var717 var3239 var3239-init) ; Statement: $r23 = new com.google.javascript.jscomp.CommandLineRunner$1 
(assert true)
;(assert (<init>/-997981811 var717 var3848 var58 var3291 var3031)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6) 

(declare-const var717!1 var3239)
(declare-const var3848!1 var2665)
(declare-const var58!1 Bool)
(declare-const var3291!1 var216)
(declare-const var3031!1 var1025)
;(assert (var1583_walkFileTree/-2013667260 var2066 (cast-from-var2890-to-var216 var1378) 2147483647 (cast-from-var3239-to-var333 var717!1))) ; Statement: staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23) 

(declare-const var2066!1 var3040)
(declare-const var1378!1 var2890)
(declare-const var2230 Int)
(declare-const var717!2 var3239)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var675_getDefault/273610319=([], java.nio.file.FileSystem), indexOf/-1037706067=([java.lang.String, int], int), var1568_on/508924409=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), splitToList/739613109=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2106_size/-959786421=([java.util.List], int), getPathMatcher/-450340845=([java.nio.file.FileSystem, java.lang.String], java.nio.file.PathMatcher), arr-String-init=([], java.lang.String[]), getPath/-148735200=([java.nio.file.FileSystem, java.lang.String, java.lang.String[]], java.nio.file.Path), var2890_of/-1269712239=([java.lang.Enum], java.util.EnumSet), cast-from-var3173-to-var2156=([java.nio.file.FileVisitOption], java.lang.Enum), var3239-init=([], com.google.javascript.jscomp.CommandLineRunner$1), <init>/-997981811=([com.google.javascript.jscomp.CommandLineRunner$1, java.nio.file.PathMatcher, boolean, java.util.Set, java.util.Map], void), var1583_walkFileTree/-2013667260=([java.nio.file.Path, java.util.Set, int, java.nio.file.FileVisitor], java.nio.file.Path), cast-from-var2890-to-var216=([java.util.EnumSet], java.util.Set), cast-from-var3239-to-var333=([com.google.javascript.jscomp.CommandLineRunner$1], java.nio.file.FileVisitor)}
; {var3853=r14, var208=null_type, var1025=java.util.Map, var3031=r6, var216=java.util.Set, var3291=r5, var1344=java.nio.file.FileSystem, var675=java.nio.file.FileSystems, var1858=r0, var3135=$i0, var1251=$z5, var1211=$z4, var58=z0, var479=java.io.File, var3044=$r1, var3228=$z1, var3372=$r15, var3390=r2, var3917=$r3, var1568=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var3983=$r4, var2106=java.util.List, var1241=$r13, var3265=r16, var407=i2, var116=$i3, var2864=$r17, var2665=java.nio.file.PathMatcher, var3848=$r18, var1515=$r19, var3040=java.nio.file.Path, var2066=$r20, var3173=java.nio.file.FileVisitOption, var3544=$r21, var2890=java.util.EnumSet, var2156=java.lang.Enum, var1378=$r22, var3239=com.google.javascript.jscomp.CommandLineRunner$1, var717=$r23, var1583=java.nio.file.Files, var333=java.nio.file.FileVisitor, var2230=2147483647}
; {r14=var3853, null_type=var208, java.util.Map=var1025, r6=var3031, java.util.Set=var216, r5=var3291, java.nio.file.FileSystem=var1344, java.nio.file.FileSystems=var675, r0=var1858, $i0=var3135, $z5=var1251, $z4=var1211, z0=var58, java.io.File=var479, $r1=var3044, $z1=var3228, $r15=var3372, r2=var3390, $r3=var3917, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var1568, $r4=var3983, java.util.List=var2106, $r13=var1241, r16=var3265, i2=var407, $i3=var116, $r17=var2864, java.nio.file.PathMatcher=var2665, $r18=var3848, $r19=var1515, java.nio.file.Path=var3040, $r20=var2066, java.nio.file.FileVisitOption=var3173, $r21=var3544, java.util.EnumSet=var2890, java.lang.Enum=var2156, $r22=var1378, com.google.javascript.jscomp.CommandLineRunner$1=var3239, $r23=var717, java.nio.file.Files=var1583, java.nio.file.FileVisitor=var333, 2147483647=var2230}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r14 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.Map;	r5 := @parameter2: java.util.Set;	r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>();	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33);	if $i0 != 0 goto $z5 = 0;	$z5 = 1;	$z4 = 1;	goto [?= z0 = $z5];	z0 = $z5;	if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator>;	$r1 = <java.io.File: java.lang.String separator>;	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\");	if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator>;	$r15 = "\\\\";	goto [?= r2 = $r15];	r2 = $r15;	$r3 = <java.io.File: java.lang.String separator>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3);	$r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14);	r16 = ".";	i2 = 0;	$i3 = interfaceinvoke $r13.<java.util.List: int size()>();	if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17);	$r19 = newarray (java.lang.String)[0];	$r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19);	$r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS>;	$r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21);	$r23 = new com.google.javascript.jscomp.CommandLineRunner$1;	specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6);	staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23);	return
;block_num 8